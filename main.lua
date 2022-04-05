black = {0, 0, 0}
white = {1, 1, 1}
medium_gray = {.6, .6, .6}

bell_sound = love.audio.newSource("bell.wav", "stream")
fire_sound = love.audio.newSource("fire.flac", "stream")
outro_sound = love.audio.newSource("outro.mp3", "stream")
cicada_sound = love.audio.newSource("cicada.mp3", "stream")
fire_sound:setLooping(true)
cicada_sound:setLooping(true)
local scene = require "scene"
local var = require "var"
local current_scene = "start"

local is_option_sel = {}
local sw, sh = love.graphics.getDimensions() -- 800, 600

local function filter(t)
    local t2 = {}
    for i, v in ipairs(t) do
        if v.condition == nil or var[v.condition[1]].value == v.condition[2] then
            t2[#t2+1] = v
        end
    end
    return t2
end

local font = {}
font[1] = love.graphics.newFont("Junicode.ttf", 20)
font[2] = love.graphics.newFont("Junicode.ttf", 25)
font[3] = love.graphics.newFont("Junicode.ttf", 30)
font[4] = love.graphics.newFont("Junicode.ttf", 35)
font[5] = love.graphics.newFont("Junicode.ttf", 70)

local click_sound = love.audio.newSource("click.wav", "static")

function love.update(dt)
    if love.keyboard.isDown("escape") then
        love.event.quit()
    end

    is_option_sel = {}
    local mouse_x, mouse_y = love.mouse.getPosition()
    local options_filtered = filter(scene[current_scene].option)
    for i, o in ipairs(options_filtered) do
        is_option_sel[i] =
            .6*sh+40*i+10 <= mouse_y and
            mouse_y <= .6*sh+40*i+40 and
            50 <= mouse_x and
            mouse_x <= 80+font[3]:getWidth(o.text)
    end

    if current_scene == "special" then
        
    end
end

local function click_button(i)
    local options_filtered = filter(scene[current_scene].option)
    if i <= #options_filtered then
        local o = options_filtered[i]
        current_scene = o.next_scene
        if o.fn then o.fn() end
        if o.effect then
            for j, e in ipairs(o.effect) do
                var[e[1]].value = e[2]
            end
        end
        click_sound:stop()
        click_sound:play()
    end
end

function love.mousepressed(x, y, button)
    if button == 1 then
        for i, v in ipairs(is_option_sel) do
            if v then click_button(i) end
        end
    end
end

function love.keypressed(key, scancode, isrepeat)
    if not isrepeat then
        if key == "1" then click_button(1) end
        if key == "2" then click_button(2) end
        if key == "3" then click_button(3) end
        if key == "4" then click_button(4) end
    end
end

function love.draw()
    local s = scene[current_scene]

    love.graphics.setBackgroundColor(s.bg_color)

    love.graphics.setFont(font[s.text_size])
    love.graphics.setColor(s.text_color)
    love.graphics.printf(s.text, 50, 50, sw-100, "left")

    love.graphics.setFont(font[3])
    local options_filtered = filter(s.option)
    for i, o in ipairs(options_filtered) do
        if is_option_sel[i] then
            love.graphics.setColor(s.sel_color)
        else
            love.graphics.setColor(s.text_color)
        end
        love.graphics.printf(i .. ") " .. o.text, 50, .6*sh+40*i, sw-100, "left")
    end
end