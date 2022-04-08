local s = {}

s["warning"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 4,
    option = {}
}
s["warning"].text = "Warning.\
Suicide and rape are discussed in this game."
s["warning"].option[1] = {text = "I understand.", next_scene = "start"}

s["start"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 5,
    option = {}
}
s["start"].text = "OEDIPUS REX."
s["start"].option[1] = {text = "Start.", next_scene = "start2"}
s["start"].option[1].fn = function()
    bell_sound:stop()
    bell_sound:play()
    
    fire_sound:stop()
    fire_sound:play()
end

s["start2"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["start2"].text = "You find yourself at Delphi,\
in the center of Greece.\
In this sanctuary of Apollo,\
you seek to discover who you truly are."
s["start2"].option[1] = {text = "What do I know?", next_scene = "start3"}


s["start3"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["start3"].text = "Oedipus is your name.\
Your father was Polybus of Corinth,\
your mother Merope, a Dorian.\
Heir to the the throne, you were regarded as the finest of men.\
And then, something rather peculiar happened,\
though scarcely deserving all the heat it stirred."
s["start3"].option[1] = {text = "...", next_scene = "start4"}


s["start4"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["start4"].text = "At dinner there was a man, quite drunk\
from too much wine, and he began shouting,\
claiming you were not your father's son."
s["start4"].option[1] = {text = "...", next_scene = "start5"}


s["start5"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["start5"].text = "That was troubling,\
but when asked about the matter\
your parents were indignant at the man\
and you felt reassured. But nonetheless,\
the accusation troubled you—\
the rumors had spread."
s["start5"].option[1] = {text = "...", next_scene = "start6"}


s["start6"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["start6"].text = "And so, without telling a word\
to your father, and your mother,\
you fled the city of Corinth to reach this sacred place,\
and to ask the Gods about what you started to disbelieve."
s["start6"].option[1] = {text = "...", next_scene = "start7"}


s["start7"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["start7"].text = "In this small crypt the air is heavy\
with the smell of incense, and at the center\
a bonfire is lit, glowing and crackling,\
your eyes deeply irritated."
s["start7"].option[1] = {text = "I stare at the flames.", next_scene = "start8"}


s["start8"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 2,
    option = {}
}
s["start8"].text = "A vision starts possessing your mind.\
It engulfs you completely, and you're not seeing your future,\
but rather living it moment by moment,\
exploring every path it could take.\
But before that, a voice speaks to you.\
You don't learn what you had come to find,\
but rather hear monstrous things,\
strange terrors and horrific miseries—"
s["start8"].option[1] = {text = "...", next_scene = "start9"}


s["start9"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 4,
    option = {}
}
s["start9"].text = "You will kill your father and lay with your mother."
s["start9"].option[1] = {text = "...", next_scene = "start10"}
s["start9"].option[1].fn = function()
    fire_sound:setVolume(.3)
end


s["start10"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["start10"].text = "Shocked and disgusted, you start living your vision\
leaving the temple and wandering aimlessly,\
your only desire being solitude and isolation."
s["start10"].option[1] = {text = "...", next_scene = "start11"}



s["start11"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["start11"].text = "You sit by an oak and begin mourning yourself,\
swearing you will do everything you can\
to never see that prophecy fulfilled,\
the abomination of your evil fate.\
You decide to"
s["start11"].option[1] = {text = "Kill yourself.", next_scene = "suicide", condition = {"suicide", nil}, effect = {{"suicide", true}}}
s["start11"].option[2] = {text = "Run away, never return to Corinth again.", next_scene = "to_trivium"}


s["suicide"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["suicide"].text = "A small thought has been seeded in your mind\
and starts growing and growing, until you're obsessed\
with it. You carry a short rope, and the leaves of the oak\
rustle with the wind."
s["suicide"].option[1] = {text = "...", next_scene = "suicide2"}


s["suicide2"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["suicide2"].text = "If your life ended now,\
nothing of what you've heard would happen.\
There's no alternatives, beside misery and disgrace."
s["suicide2"].option[1] = {text = "Except...", next_scene = "suicide3"}


s["suicide3"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["suicide3"].text = "Except the more you think about it,\
letting the thought pound and pound bouncing between your lobes,\
the more it loses momentum."
s["suicide3"].option[1] = {text = "How so?", next_scene = "suicide4"}


s["suicide4"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["suicide4"].text = "Your logical side sees a contradiction.\
If you think you can end your life by this tree,\
then you don't truly believe in the truth of the prophecy\
as you think it may be circumvented at will.\
But if you don't believe in it, why kill yourself?\
The futility of the action would be glaring."
s["suicide4"].option[1] = {text = "I see.", next_scene = "suicide5"}


s["suicide5"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["suicide5"].text = "But what you identify as rationality is but a small part\
of your mind. Another sentiment fills you —some may call it arrogance—\
that nothing else but you matters, and the Gods and your father and your mother be damned;\
I think it's your will to live."
s["suicide5"].option[1] = {text = "Let's find another solution.", next_scene = "start11"}


s["to_trivium"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["to_trivium"].text = "From now on you will think of Corinth just\
as a place beneath the stars. You start traveling,\
guided by the fate you try to avoid."
s["to_trivium"].option[1] = {text = "Days and nights pass.", next_scene = "trivium"}


s["trivium"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["trivium"].text = "Near a spot where three roads meet,\
a horse-drawn carriage make its way,\
led by a charioteer, an old man sitting on top, four guards following."
s["trivium"].option[1] = {text = "...", next_scene = "trivium2"}


s["trivium2"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["trivium2"].text = "The man in front and the old man himself\
threaten to thrust you rudely off the path.\
Shoved by the driver, in wrath\
you lash out at him, and the old man, seeing this,\
watches till you pass and from his carriage\
strikes your head with his stirrup leather.\
You choose to"
s["trivium2"].option[1] = {text = "Retaliate immediately.", next_scene = "laius_killed", effect = {{"laius_killed", true}}}
s["trivium2"].option[2] = {text = "Back away.", next_scene = "laius_not_killed", effect = {{"laius_killed", false}}}


s["laius_not_killed"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["laius_not_killed"].text = "It seems wise to avoid conflict,\
but still furious, you curse the old man and his children.\
At that he stops, and orders the guards to seize you.\
As they draw near, you"
s["laius_not_killed"].option[1] = {text = "Run away as fast as you can.", next_scene = "laius_not_killed2"}


s["laius_not_killed2"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 2,
    option = {}
}
s["laius_not_killed2"].text = "But you immediately trip over, feel your leg grabbed\
and your body pushed by external forces. Then the old man\
slowly comes off the car, and still his stirrup leather in hand,\
whips you again and again, each blow burning more then the last,\
your spasms and involuntary movements useless against the aggressor.\
You're left feeling like a corpse under the violent sun,\
unable to move."
s["laius_not_killed2"].option[1] = {text = "...", next_scene = "laius_not_killed3"}


s["laius_not_killed3"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["laius_not_killed3"].text = "After a while you're ready to stand up,\
wounded but able to move, find somewhere to rest."
s["laius_not_killed3"].option[1] = {text = "Damn bastard.", next_scene = "trivium_choice"}
s["laius_not_killed3"].option[2] = {text = "I still believe I did the right thing.", next_scene = "trivium_choice"}

s["laius_killed"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["laius_killed"].text = "What he has done is not worth the consequences;\
staff in hand, you hit him a quick blow\
and knock him from his carriage to the road.\
He lays there on his back. Then you kill them all."
s["laius_killed"].option[1] = {text = "That was excessive.", next_scene = "laius_killed2"}
s["laius_killed"].option[2] = {text = "That was what he deserved.", next_scene = "laius_killed2"}


s["laius_killed2"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["laius_killed2"].text = "That was what it was."
s["laius_killed2"].option[1] = {text = "...", next_scene = "trivium_choice"}


s["trivium_choice"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["trivium_choice"].text = "You're now alone, at the intersection of three roads.\
West is where you came,\
north is Daulia, and still above wilderness,\
east is the great city of Thebes.\
You want to"
s["trivium_choice"].option[1] = {text = "Become a hermit, harm no one and be chaste.", next_scene = "trivium_daulia"}
s["trivium_choice"].option[2] = {text = "Find your fortune, be the best you can be.", next_scene = "trivium_thebes"}


s["trivium_daulia"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["trivium_daulia"].text = "Then you will go north,\
towards the less civilized part of Greece."
s["trivium_daulia"].option[1] = {text = "That is my choice.", next_scene = "to_daulia"}
s["trivium_daulia"].option[2] = {text = "I'm not sure. Let me think some more.", next_scene = "trivium_choice"}


s["trivium_thebes"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["trivium_thebes"].text = "Then you will go east,\
at Thebes will be set your play."
s["trivium_thebes"].option[1] = {text = "So be it.", next_scene = "to_thebes"}
s["trivium_thebes"].option[2] = {text = "I'm not sure. Let me think some more.", next_scene = "trivium_choice"}


s["to_daulia"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["to_daulia"].text = "A new chapter of your life begins.\
Before surrounded by all sorts of people, well-regarded and\
never having to desire something you have not.\
Now a hunter, just yourself and the noises of the wood,\
starting to appreciating little things of the world\
while you try to survive in a harsh place."
s["to_daulia"].option[1] = {text = "...", next_scene = "to_daulia2"}


s["to_daulia2"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["to_daulia2"].text = "There are days when you feel desperate,\
and lonely, and useless.\
Amidst your toils, you do have a lot of time to think."
s["to_daulia2"].option[1] = {text = "...", next_scene = "to_daulia3"}


s["to_daulia3"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["to_daulia3"].text = "Picking up little memories from your past,\
little hints and fragments now faded with time,\
you are sure that Corinth wasn't your birthplace,\
that who you called father and your mother were just two people.\
But this is where your certainties end."
s["to_daulia3"].option[1] = {text = "I don't need to know. I'm safe here.", next_scene = "to_daulia4"}


s["to_daulia4"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["to_daulia4"].text = "And yet, one day you feel very sick,\
without knowing why."
s["to_daulia4"].option[1] = {text = "What is it?", next_scene = "to_daulia4_illness"}
s["to_daulia4"].option[2] = {text = "I can rest a bit.", next_scene = "to_daulia5"}


s["to_daulia4_illness"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["to_daulia4_illness"].text = "Fever, nausea, your head burns."
s["to_daulia4_illness"].option[1] = {text = "I can rest a bit.", next_scene = "to_daulia5"}


s["to_daulia5"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["to_daulia5"].text = "You try to rest, but you can't.\
A week passes and the symptoms only get worse.\
I'm afraid you'll have to get up soon, or you'll starve."
s["to_daulia5"].option[1] = {text = "If I have to, I will.", next_scene = "to_daulia6"}


s["to_daulia6"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["to_daulia6"].text = "Things go bad."
s["to_daulia6"].option[1] = {text = "...", next_scene = "daulia"}


s["daulia"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["daulia"].text = "Next thing you remember,\
you're in a log cabin, a heavy blanket\
covering your body. You want to understand the situation,\
but right now it feels like an unsolvable enigma.\
You feel a gentle hand touching your body,\
and at once you startle and retract.\
You lose consciousness again."
s["daulia"].option[1] = {text = "...", next_scene = "daulia2"}


s["daulia2"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["daulia2"].text = "A middle-aged woman speaks to you.\
\
Anastasia: I can see a profound terror in your eyes.\
What has happened?"
s["daulia2"].option[1] = {text = "Who are you?", next_scene = "daulia_who"}
s["daulia2"].option[2] = {text = "I need to get going.", next_scene = "daulia_going"}
s["daulia2"].option[3] = {text = "I want to ask you the same question.", next_scene = "daulia_question"}
s["daulia2"].option[4] = {text = "Let me rest now.", next_scene = "daulia_next"}


s["daulia_who"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["daulia_who"].text = "Anastasia: My Oedipus, I already told you, don't your remember?\
I'm Anastasia."
s["daulia_who"].option[1] = {text = "How do you know my name?", next_scene = "daulia_who2"}
s["daulia_who"].option[2] = {text = "I need to get going.", next_scene = "daulia_going"}
s["daulia_who"].option[3] = {text = "Tell me what happened.", next_scene = "daulia_question"}
s["daulia_who"].option[4] = {text = "Let me rest now.", next_scene = "daulia_next"}


s["daulia_who2"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["daulia_who2"].text = "Anastasia: I don't see why you should be so jumpy.\
We already spoke, it was you who told me."
s["daulia_who2"].option[1] = {text = "I need to get going.", next_scene = "daulia_going"}
s["daulia_who2"].option[2] = {text = "Tell me what happened.", next_scene = "daulia_question"}
s["daulia_who2"].option[3] = {text = "Let me rest now.", next_scene = "daulia_next"}


s["daulia_going"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["daulia_going"].text = "Anastasia: You wouldn't get past the door.\
There's no use in struggling fruitlessly.\
Please rest, I'll take care of you."
s["daulia_going"].option[1] = {text = "Who are you?", next_scene = "daulia_who"}
s["daulia_going"].option[2] = {text = "I really believe our encounter does not bode well.", next_scene = "daulia_going2"}
s["daulia_going"].option[3] = {text = "Tell me what happened.", next_scene = "daulia_question"}
s["daulia_going"].option[4] = {text = "Let me rest now.", next_scene = "daulia_next"}


s["daulia_going2"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["daulia_going2"].text = "Anastasia: That's a cruel thing to say.\
I've been on your side the last two weeks,\
you would've died if it weren't for me."
s["daulia_going2"].option[1] = {text = "Who are you?", next_scene = "daulia_who"}
s["daulia_going2"].option[2] = {text = "Tell me what happened.", next_scene = "daulia_question"}
s["daulia_going2"].option[3] = {text = "Let me rest now.", next_scene = "daulia_next"}


s["daulia_question"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["daulia_question"].text = "Anastasia: You were found by Eusebius\
who was hunting far away from home.\
When I saw you for the first time, you seemed so weak."
s["daulia_question"].option[1] = {text = "Who are you?", next_scene = "daulia_who"}
s["daulia_question"].option[2] = {text = "I need to get going.", next_scene = "daulia_going"}
s["daulia_question"].option[3] = {text = "Who's Eusebius?", next_scene = "daulia_question2"}
s["daulia_question"].option[4] = {text = "Let me rest now.", next_scene = "daulia_next"}


s["daulia_question2"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["daulia_question2"].text = "Anastasia: He's my husband."
s["daulia_question2"].option[1] = {text = "Who are you?", next_scene = "daulia_who"}
s["daulia_question2"].option[2] = {text = "I need to get going.", next_scene = "daulia_going"}
s["daulia_question2"].option[3] = {text = "Let me rest now.", next_scene = "daulia_next"}


s["daulia_next"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 2,
    option = {}
}
s["daulia_next"].text = "Days keep passing. You feel something revolting\
about Anastasia and about yourself, different from your illness.\
She's right though, you're still extremely weak, almost in an unnatural way.\
Her husband Eusebius is certainly no friend to you,\
and sometimes you happen to fuzzily hear\
his shouting and her crying."
s["daulia_next"].option[1] = {text = "...", next_scene = "daulia_next2"}


s["daulia_next2"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 2,
    option = {}
}
s["daulia_next2"].text = "Your dreams are tormenting.\
You keep being naked, full inside a jar, without possibility\
of escape. Thousands of tiny insects chew on your skin,\
on every part of your body, and you can't see or disperse them.\
Their secrete causes in you an asphyxiating coziness,\
the substance melting and rotting as it penetrates your flesh."
s["daulia_next2"].option[1] = {text = "...", next_scene = "daulia_next3"}


s["daulia_next3"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["daulia_next3"].text = "One of these wretched dreams is beginning\
again, but you squirm with all the force you have,\
repeatedly hitting the vase with your elbow;\
you start bleeding but still keep on going.\
The surface finally cracks."
s["daulia_next3"].option[1] = {text = "...", next_scene = "daulia_next4"}


s["daulia_next4"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["daulia_next4"].text = "It's dusk, you see Anastasia\
pressing on your body, panting."
s["daulia_next4"].option[1] = {text = "Push her away.", next_scene = "daulia_next5"}


s["daulia_next5"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["daulia_next5"].text = "When she sees you opposing her,\
she hugs you, holding you tight and whispering,\
in a calm and soothing voice."
s["daulia_next5"].option[1] = {text = "...", next_scene = "daulia_next6"}


s["daulia_next6"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["daulia_next6"].text = "Anastasia: Calm down, calm down.\
I don't want to scream for my husband,\
to tell him what you're doing to me,\
the only way out of that for you\
would be to kill him."
s["daulia_next6"].option[1] = {text = "Do as she tells you.", next_scene = "daulia_still"}
s["daulia_next6"].option[2] = {text = "Hit her.", next_scene = "daulia_hit"}


s["daulia_hit"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 2,
    option = {}
}
s["daulia_hit"].text = "She rolls over, and with her body contracted\
shouts and cries that\
she's sorry, she's sorry.\
You spring to your feet, delirant and feverish.\
A knife lays on the table, and still naked,\
you feel more secure by holding it.\
Eusebius storms in and sees what's in front of him."
s["daulia_hit"].option[1] = {text = "Run away.", next_scene = "daulia_hit2"}


s["daulia_hit2"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["daulia_hit2"].text = "Everything happens quickly.\
You just want to get out, but Eusebius stands in front of the door.\
You ram him, sinking your knife in his stomach,\
then run as fast as you can, collapsing after not long.\
He was unarmed."
s["daulia_hit2"].option[1] = {text = "...", next_scene = "daulia_hit3"}


s["daulia_hit3"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["daulia_hit3"].text = "When you gain consciousness, you see Anastasia\
kneeled near you, holding your hand and crying desperately."
s["daulia_hit3"].option[1] = {text = "...", next_scene = "daulia_hit4"}


s["daulia_hit4"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["daulia_hit4"].text = "Anastasia: Please don't leave me, please.\
I'm sorry, nothing of what happened was what I wanted."
s["daulia_hit4"].option[1] = {text = "You tried to rape me.", next_scene = "daulia_hit5"}


s["daulia_hit5"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["daulia_hit5"].text = "Anastasia: But—you liked that.\
It was not the first time, and you had wanted it,\
your body being proof of this.\
Why did you do this to me, today?"
s["daulia_hit5"].option[1] = {text = "You're disgusting.", next_scene = "daulia_hit6"}


s["daulia_hit6"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 2,
    option = {}
}
s["daulia_hit6"].text = "Anastasia: You're cruel and vile.\
I just wanted to care for you, you reminded me of someone\
long lost. My husband killed my son, killed him as he was just born,\
carrying him somewhere far away, making sure he'd die like a lost animal.\
And—he never told me why, I couldn't do anything,\
he never told me why."
s["daulia_hit6"].option[1] = {text = "So that was my father, and that was my mother.", next_scene = "first", condition={"time", nil}}
s["daulia_hit6"].option[2] = {text = "So that was my father, and that was my mother.", next_scene = "second", condition={"time", 1}}
s["daulia_hit6"].option[3] = {text = "So that was my father, and that was my mother.", next_scene = "third", condition={"time", 2}}


s["daulia_still"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["daulia_still"].text = ""
s["daulia_still"].option[1] = {text = "Let her continue.", next_scene = "daulia_still"}
s["daulia_still"].option[2] = {text = "Hit her.", next_scene = "daulia_hit"}


s["daulia_still"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["daulia_still"].text = "Cornered, you just want the world to stop, and it doesn't.\
She closes her eyes while you stare at her face,\
crooked and convulsing, barely lit by the dying day."
s["daulia_still"].option[1] = {text = "...", next_scene = "daulia_still_laius2", condition = {"laius_killed", true}}
s["daulia_still"].option[2] = {text = "...", next_scene = "daulia_still2", condition = {"laius_killed", false}}


s["daulia_still2"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["daulia_still2"].text = "After she's done, you lay motionless.\
Suddenly you feel your energy return,\
not in an orderly fashion but in waves.\
You stand up, dress yourself and make way for the exit,\
Anastasia says something but you do not hear her."
s["daulia_still2"].option[1] = {text = "...", next_scene = "daulia_still3"}


s["daulia_still3"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["daulia_still3"].text = "You don't know where you're going.\
In the middle of the wood, you kneel and begin crying.\
Time passes but you don't care."
s["daulia_still3"].option[1] = {text = "...", next_scene = "daulia_still4"}


s["daulia_still4"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["daulia_still4"].text = "You see Eusebius advancing towards you, aggressively."
s["daulia_still4"].option[1] = {text = "You start running.", next_scene = "daulia_still5"}


s["daulia_still5"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["daulia_still5"].text = "Eusebius: Where are you going, vermin?\
Here, take this!\
\
He reaches you, seize your hand and whips you with his belt."
s["daulia_still5"].option[1] = {text = "...", next_scene = "daulia_still6"}


s["daulia_still6"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["daulia_still6"].text = "Eusebius: I know exactly what happened there.\
What I think is that you're just a wimp,\
the lowliest of creatures.\
\
He whips you again."
s["daulia_still6"].option[1] = {text = "...", next_scene = "daulia_still7"}


s["daulia_still7"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["daulia_still7"].text = "Eusebius: Raped by a woman!\
You make me laugh! How can you call yourself a man?\
Take this!\
\
He whips you with his belt yet again."
s["daulia_still7"].option[1] = {text = "You've had enough.", next_scene = "daulia_still8"}


s["daulia_still8"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["daulia_still8"].text = "At the third lash you lose whatever instinct was holding you back.\
You take hold of his belt, push him against a tree\
and start whipping him with unrestrained violence\
beating him until he's dead."
s["daulia_still8"].option[1] = {text = "...", next_scene = "daulia_still9"}


s["daulia_still9"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["daulia_still9"].text = "You can't be sure but it's hard to believe otherwise—\
you just saw your prophecy unfold."
s["daulia_still9"].option[1] = {text = "So that was my father, and that was my mother.", next_scene = "first", condition={"time", nil}}
s["daulia_still9"].option[2] = {text = "So that was my father, and that was my mother.", next_scene = "second", condition={"time", 1}}
s["daulia_still9"].option[3] = {text = "So that was my father, and that was my mother.", next_scene = "third", condition={"time", 2}}

s["daulia_still_laius2"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["daulia_still_laius2"].text = "Even when she's done, she just lays beside you,\
starts talking, and you'd rather do anything else than listen\
but you can't unhear the meaning of her words."
s["daulia_still_laius2"].option[1] = {text = "...", next_scene = "daulia_still_laius3"}


s["daulia_still_laius3"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["daulia_still_laius3"].text = "Anastasia: You remind me of another man,\
even if I can't quite explain the connection myself.\
He was a King, and came to this land\
to enjoy hunting with his dogs.\
In a moment of rest, we saw each other all alone,\
and being attracted to one another, we made love over the shadow of a willow."
s["daulia_still_laius3"].option[1] = {text = "...", next_scene = "daulia_still_laius4"}


s["daulia_still_laius4"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["daulia_still_laius4"].text = "Anastasia: Then he got away, and life revealed itself for what it is.\
He left me with a child, but I prefer not to speak about that."
s["daulia_still_laius4"].option[1] = {text = "...", next_scene = "daulia_still_laius5"}


s["daulia_still_laius5"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["daulia_still_laius5"].text = "Anastasia: I heard he died some time ago while traveling,\
in a place where three roads meet.\
He got what he deserved, the bastard."
s["daulia_still_laius5"].option[1] = {text = "So that was my father, and that was my mother.", next_scene = "first", condition={"time", nil}}
s["daulia_still_laius5"].option[2] = {text = "So that was my father, and that was my mother.", next_scene = "second", condition={"time", 1}}
s["daulia_still_laius5"].option[3] = {text = "So that was my father, and that was my mother.", next_scene = "third", condition={"time", 2}}


s["to_thebes"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["to_thebes"].text = "Nearing toward Thebes, you see familiar landscapes\
as this is also the road to Corinth.\
Sometimes you feel happy, almost as if\
you had never been to Delphi.\
But usually, the images you saw at the temple pervades you."
s["to_thebes"].option[1] = {text = "...", next_scene = "to_thebes2"}


s["to_thebes2"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["to_thebes2"].text = "Could it be that no prophecy would've existed\
If you hadn't known of it? You miss the old times, when the questions\
weren't there."
s["to_thebes2"].option[1] = {text = "Silly thoughts.", next_scene = "to_thebes3"}


s["to_thebes3"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["to_thebes3"].text = "Getting closer to Thebes, you get warned by strangers\
about a beast that plagues the city.\
It has the face of a woman, the body of a lion\
and the wings of an eagle.\
It is called the Sphynx, and kills whoever is not able\
to answer her riddle."
s["to_thebes3"].option[1] = {text = "...", next_scene = "to_thebes4"}


s["to_thebes4"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["to_thebes4"].text = "Of course, nobody but her knows what the riddle is,\
because nobody escaped her alive.\
You hope to"
s["to_thebes4"].option[1] = {text = "Never meet this monster.", next_scene = "sphynx"}
s["to_thebes4"].option[2] = {text = "Find her and kill her.", next_scene = "sphynx"}


s["sphynx"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["sphynx"].text = "What you hope doesn't seem to ever matter,\
as things happen to you either way.\
Amid a dead landspace, huge canyons casts deep shadows\
against the Sun, and it's here that over a turn\
you're face to face with the legendary creature."
s["sphynx"].option[1] = {text = "...", next_scene = "sphynx2"}


s["sphynx2"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["sphynx2"].text = "She seems to almost say something, just to stop\
immediately before the words come out.\
She studies your face, and you study hers.\
There's something distinctly otherworldly\
about her appearance, and also her voice\
is a surprise to you, as it is soft and light."
s["sphynx2"].option[1] = {text = "...", next_scene = "sphynx3"}


s["sphynx3"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["sphynx3"].text = "The Sphynx: Oedipus, answer this riddle.\
Who are you, truly?"
s["sphynx3"].option[1] = {text = "A creature with 4 feet, then 2, then 3.", next_scene = "sphynx4"}
s["sphynx3"].option[2] = {text = "A man beset by disgrace.", next_scene = "sphynx4"}
s["sphynx3"].option[3] = {text = "I don't know.", next_scene = "sphynx4"}


s["sphynx4"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["sphynx4"].text = "The Sphynx gives you a strange look,\
as if she were pitying you,\
then she throws herself off a cliff\
and she's never seen again."
s["sphynx4"].option[1] = {text = "What a strange meeting.", next_scene = "thebes"}


s["thebes"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["thebes"].text = "At the city of Thebes you're welcomed as a hero,\
as no other person ever survived the sight of the Sphynx,\
and after you no-one saw her again."
s["thebes"].option[1] = {text = "...", next_scene = "thebes2"}


s["thebes2"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["thebes2"].text = "You soon meet Jocasta, widow of Laius, the previous King of Thebes."
s["thebes2"].option[1] = {text = "...", next_scene = "thebes3"}


s["thebes3"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["thebes3"].text = "Jocasta: Young Oedipus, what you have done to this city\
shall never be forgotten. Before there was a bleak future ahead of us."
s["thebes3"].option[1] = {text = "...", next_scene = "thebes4"}


s["thebes4"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["thebes4"].text = "Jocasta: Now I ask you: be my husband, and become\
the leader of this city. You will be a great King,\
loved by your people and respected by all.\
\
To this you reply that"
s["thebes4"].option[1] = {text = "You will be all the things she said.", next_scene = "thebes_marry"}
s["thebes4"].option[2] = {text = "You can't accept.", next_scene = "thebes_cant"}


s["thebes_marry"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["thebes_marry"].text = "The next seven years you're at the height\
of what a mortal can aspire to. You rule the city wisely\
and live happily with your wife, having two sons and two daughters,\
until something unexpected happens."
s["thebes_marry"].option[1] = {text = "...", next_scene = "marry_killed", condition={"laius_killed", true}}
s["thebes_marry"].option[2] = {text = "...", next_scene = "marry_alive", condition={"laius_killed", false}}


s["marry_killed"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["marry_killed"].text = "A plague ravages the city of Thebes.\
The people beg you to help them like you did with the Sphynx.\
You send Creon, brother of Jocasta, to the sanctuary of Delphi,\
to ask the advice of the Gods."
s["marry_killed"].option[1] = {text = "...", next_scene = "marry_killed2"}


s["marry_killed2"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["marry_killed2"].text = "The response is the following:\
Laius, the previous King, was killed, but the murderers are unknown.\
They now must be found, and when they'll be banished,\
the polluting disease of this land will go away."
s["marry_killed2"].option[1] = {text = "...", next_scene = "marry_killed3"}


s["marry_killed3"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["marry_killed3"].text = "You declare in front of your people and the Gods\
that you hope whoever helps or know something about the murderers\
will suffer a terrible fate, and you vow\
to find and banish them from this city."
s["marry_killed3"].option[1] = {text = "...", next_scene = "marry_killed4"}


s["marry_killed4"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["marry_killed4"].text = "You then meet Tiresias, a blind man\
who sees what others cannot. But he's afraid to talk,\
you lose your temper and offend the oracle,\
and at that point he reveals that you yourself\
are the criminal you seek."
s["marry_killed4"].option[1] = {text = "...", next_scene = "marry_killed5"}


s["marry_killed5"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["marry_killed5"].text = "You don't believe him.\
But when you ask Jocasta about the circumstances of the murder,\
the description matches that of the old man you met years ago.\
Furthermore, a man had survived the attack,\
and reveals the aggressors weren't many but one."
s["marry_killed5"].option[1] = {text = "...", next_scene = "marry_killed6"}


s["marry_killed6"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["marry_killed6"].text = "Still you don't see.\
But you push hard to seek the truth,\
and when you find it out,\
it makes everything match up with terrifying perfection."
s["marry_killed6"].option[1] = {text = "...", next_scene = "marry_killed7"}


s["marry_killed7"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["marry_killed7"].text = "Laius was your father, Jocasta your mother.\
When she discovers this, she kills herself,\
and out of desperation,\
not bearing the sight of this world anymore,\
you take the pins of her dress and gouge out your eyes."
s["marry_killed7"].option[1] = {text = "...", next_scene = "marry_killed8"}


s["marry_killed8"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["marry_killed8"].text = "Finally, you leave this terrible city,\
your daughter Antigone following you."
s["marry_killed8"].option[1] = {text = "So that was my father, and that was my mother.", next_scene = "first", condition={"time", nil}}
s["marry_killed8"].option[2] = {text = "So that was my father, and that was my mother.", next_scene = "second", condition={"time", 1}}
s["marry_killed8"].option[3] = {text = "So that was my father, and that was my mother.", next_scene = "third", condition={"time", 2}}


s["marry_alive"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["marry_alive"].text = "Laius returns to Thebes.\
He's a tired, aged man, who desires nothing but some rest."
s["marry_alive"].option[1] = {text = "...", next_scene = "marry_alive2"}


s["marry_alive2"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["marry_alive2"].text = "But in this city he finds all but that.\
People are gathering round him, the tension rising.\
You approach him with haste, a dead person\
being a rare sight."
s["marry_alive2"].option[1] = {text = "...", next_scene = "marry_alive3"}


s["marry_alive3"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["marry_alive3"].text = "Seeing him makes you feel unease.\
The crowd shouts at him, that he ran away\
when the Sphynx was terrorizing the city.\
They do not leave him possibility for explanations,\
but you intend to have them."
s["marry_alive3"].option[1] = {text = "I'm Oedipus, King of Thebes.", next_scene = "marry_alive4"}


s["marry_alive4"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["marry_alive4"].text = "Laius: I'm Laius, and I do not intend\
to strip you of that title.\
\
He speaks softly, you're forced to get very close to him.\
You're the only one that hears him."
s["marry_alive4"].option[1] = {text = "We thought you were dead.", next_scene = "marry_alive5"}


s["marry_alive5"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["marry_alive5"].text = "Oedipus: We asked an oracle,\
and It was said that your heart had stopped beating\
a long time ago.\
\
Laius: That was true, but now it beats again."
s["marry_alive5"].option[1] = {text = "Did you rise from the Underworld?.", next_scene = "marry_alive6"}


s["marry_alive6"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 2,
    option = {}
}
s["marry_alive6"].text = "Laius: That's not it.\
I told no-one of the reason of my departure,\
and in restrospect, I've been completely foolish.\
The Sphynx was sent to Thebes by Era, a God\
offended by something I did a long time ago.\
I went as close as I could, to ask her\
please, do what you want with me, but\
leave the thebans be."
s["marry_alive6"].option[1] = {text = "...", next_scene = "marry_alive7"}


s["marry_alive7"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["marry_alive7"].text = "Laius: When she finally heard\
What I had to say, she laughed at me.\
Believe it or not, she morphed me into a plant."
s["marry_alive7"].option[1] = {text = "...", next_scene = "marry_alive8"}


s["marry_alive8"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["marry_alive8"].text = "Laius: For 7 years I've been exposed\
to the seasons, and I thought I was about to die.\
That's when she decided to make me human again.\
I tell you things I do not understand."
s["marry_alive8"].option[1] = {text = "...", next_scene = "marry_alive9"}


s["marry_alive9"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["marry_alive9"].text = "As he speaks, you realize that\
this can only be your father.\
As terrible as the implications are,\
You find that this old man\
moves you deeply\
and maybe a reconciliation is possible."
s["marry_alive9"].option[1] = {text = "...", next_scene = "marry_alive10"}


s["marry_alive10"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["marry_alive10"].text = "But the crowd is of another mind.\
His departure was seen as a deep betrayal of Thebes,\
and still much hate lingers on.\
The shouting grows, and it becomes impossible to converse."
s["marry_alive10"].option[1] = {text = "...", next_scene = "marry_alive11"}


s["marry_alive11"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["marry_alive11"].text = "You try to speak to your people,\
but right now it doesn't work.\
Unsheating your dagger,\
you drive away all near you and the old man\
your plan to escort him to your palace, to safety."
s["marry_alive11"].option[1] = {text = "Everything happens quickly.", next_scene = "marry_alive12"}


s["marry_alive12"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 2,
    option = {}
}
s["marry_alive12"].text = "You're facing towards Laius.\
Someone throws at him a rock,\
which hits him in the neck.\
He raises his hand to cover the bruise,\
but in that movement you see the man\
who in the place where three roads meet\
whipped you so much time ago."
s["marry_alive12"].option[1] = {text = "...", next_scene = "marry_alive13"}


s["marry_alive13"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 2,
    option = {}
}
s["marry_alive13"].text = "Your involuntary movement this time unconstrained,\
you thrust your dagger inside him.\
The perverse crowd cheers."
s["marry_alive13"].option[1] = {text = "So that was my father, and that was my mother.", next_scene = "first", condition={"time", nil}}
s["marry_alive13"].option[2] = {text = "So that was my father, and that was my mother.", next_scene = "second", condition={"time", 1}}
s["marry_alive13"].option[3] = {text = "So that was my father, and that was my mother.", next_scene = "third", condition={"time", 2}}


s["thebes_cant"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["thebes_cant"].text = "Jocasta: And why is that?"
s["thebes_cant"].option[1] = {text = "There's a prophecy about me.", next_scene = "thebes_cant2"}


s["thebes_cant2"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["thebes_cant2"].text = "Oedipus: It is said that I will kill my father\
and lay with my mother,\
but I don't know who they are.\
It may sound absurd, but you have to convince me\
that this is not the case."
s["thebes_cant2"].option[1] = {text = "...", next_scene = "cant_killed", condition = {"laius_killed", true}}
s["thebes_cant2"].option[2] = {text = "...", next_scene = "cant_alive", condition = {"laius_killed", false}}


s["cant_alive"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["cant_alive"].text = "Jocasta: it is not absurd to me,\
as I had a son with Laius\
who was prophetized the same fate,\
even though that can't be true.\
But, have you reason to believe\
that you murdered my husband?\
If you do, speak now, and speak the truth."
s["cant_alive"].option[1] = {text = "I have never killed anyone.", next_scene = "cant_alive2"}


s["cant_alive2"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["cant_alive2"].text = "Jocasta: then I cannot be your mother.\
I have asked the oracle of Delphi, and she told me\
that Laius' heart has stopped beating.\
So if this wasn't you, then you can't be my son."
s["cant_alive2"].option[1] = {text = "You've convinced me.", next_scene = "cant_alive5"}
s["cant_alive2"].option[2] = {text = "How can you believe in that prophecy and not mine?", next_scene = "cant_alive4"}


s["cant_alive4"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["cant_alive4"].text = "Jocasta: I can't be sure that yours is false.\
But I know it's not related to me."
s["cant_alive4"].option[1] = {text = "You've convinced me.", next_scene = "cant_alive5"}


s["cant_alive5"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["cant_alive5"].text = "Jocasta: So, will you become my husband\
and King of this city?"
s["cant_alive5"].option[1] = {text = "I will.", next_scene = "thebes_marry"}


s["cant_killed"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 2,
    option = {}
}
s["cant_killed"].text = "Jocasta: it is not absurd to me,\
as I had a son with Laius\
who was prophetized the same fate,\
even though that can't be true.\
But, have you reason to believe\
that you murdered my husband?\
He was attacked by a group of bandits.\
If you do, speak now, and speak the truth."
s["cant_killed"].option[1] = {text = "I have killed before, but alone.", next_scene = "cant_killed2"}


s["cant_killed2"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["cant_killed2"].text = "Jocasta: then I cannot be your mother.\
If you are not the murderer of my husband,\
then you can't be my son."
s["cant_killed2"].option[1] = {text = "You've convinced me.", next_scene = "cant_alive5"}


s["first"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["first"].text = "As this happen, you perception of things\
becomes paradoxical; the whole world dances like a fire."
s["first"].option[1] = {text = "...", next_scene = "first2", effect = {{"time", 1}}}
s["first"].option[1].fn = function()
    bell_sound:stop()
    bell_sound:play()
    
    fire_sound:setVolume(1)
end

s["first2"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["first2"].text = "You blink, and you see the bonfire\
in the sanctuary of Delphi.\
All the years you lived\
are now forgotten and thrown away,\
but a sensation remains—\
one of defeat and rejection."
s["first2"].option[1] = {text = "...", next_scene = "first3"}


s["first3"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["first3"].text = "In denial, you refuse to believe in\
the fate you were given,\
and starts your vision anew."
s["first3"].option[1] = {text = "...", next_scene = "start11"}
s["first3"].option[1].fn = function()
    fire_sound:setVolume(.3)
end


s["second"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["second"].text = "As this happen, you perception of things\
becomes paradoxical; the whole world dances like a fire."
s["second"].option[1] = {text = "...", next_scene = "second1.5", effect = {{"time", 2}}}
s["second"].option[1].fn = function()
    bell_sound:stop()
    bell_sound:play()
    
    fire_sound:setVolume(1)
end


s["second1.5"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["second1.5"].text = "This time a desperation pervades you\
when you find yourself again at the temple.\
The bonfire still cracking,\
you feel trapped in an endless cycle."
s["second1.5"].option[1] = {text = "...", next_scene = "second2", effect = {{"time", 2}}}


s["second2"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["second2"].text = "You recollect something rather curious.\
Your past seems flexible,\
your paths contradictory with one another,\
even accounting for differences in your action;\
but your future is fixed, unmoving.\
Shouldn't it be the contrary?"
s["second2"].option[1] = {text = "...", next_scene = "second3"}



s["second3"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["second3"].text = "You stare at the bonfire one more time\
hoping to find rest in this world."
s["second3"].option[1] = {text = "...", next_scene = "start11"}
s["second3"].option[1].fn = function()
    fire_sound:setVolume(.3)
end


s["third"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["third"].text = "As this happen, you perception of things\
becomes paradoxical; the whole world dances like a fire."
s["third"].option[1] = {text = "...", next_scene = "third1.5"}
s["third"].option[1].fn = function()
    bell_sound:stop()
    bell_sound:play()
    
    fire_sound:setVolume(1)
end


s["third1.5"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["third1.5"].text = "You're disappointed and tired\
of these lives of your, and again\
your vision begins to crumble."
s["third1.5"].option[1] = {text = "...", next_scene = "third2"}


s["third2"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["third2"].text = "But—this time something is different."
s["third2"].option[1] = {text = "Let's hold on...", next_scene = "third3"}
s["third2"].option[1].fn = function()
    fire_sound:stop()
    cicada_sound:play()
end


s["third3"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["third3"].text = "It's night, you're in an endless meadow,\
the song of a thousand cicadas filling your ear."
s["third3"].option[1] = {text = "...", next_scene = "third4"}


s["third4"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["third4"].text = "You were alone, but now you feel\
someone has joined you."
s["third4"].option[1] = {text = "...", next_scene = "third5"}


s["third5"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["third5"].text = "You meet again the Sphynx.\
She stands beside you, asks you\
if you've thought about her riddle."
s["third5"].option[1] = {text = "...", next_scene = "third6"}


s["third6"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["third6"].text = "Oedipus: Things have changed.\
I've realized that I've spent so long\
obsessed with my destiny,\
that's all I really lived for.\
I tried to change it at all costs,\
but it was useless."
s["third6"].option[1] = {text = "...", next_scene = "third7"}


s["third7"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["third7"].text = "I've committed terrible deeds.\
I knew they would happen, and\
I did what I could to avoid them.\
I don't even know if it can be considered\
my fault or not, but it doesn't matter."
s["third7"].option[1] = {text = "...", next_scene = "third8"}


s["third8"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["third8"].text = "Now I'm old, and tired,\
but I'm finally free.\
No fate has been set upon me by the gods,\
no prophecy guides my actions,\
I'm the master of my life."
s["third8"].option[1] = {text = "...", next_scene = "third9"}


s["third9"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["third9"].text = "And in any case, I think\
I finally know who I am."
s["third9"].option[1] = {text = "...", next_scene = "third10"}


s["third10"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["third10"].text = "The Sphynx: And what's that?"
s["third10"].option[1] = {text = "...", next_scene = "third11"}


s["third11"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 3,
    option = {}
}
s["third11"].text = "I'm one bitchass motherfucker."
s["third11"].option[1] = {text = ".", next_scene = "credits"}
s["third11"].option[1].fn = function()
    cicada_sound:stop()
    outro_sound:stop()
    outro_sound:play()
end


s["credits"] = {
    bg_color = black,
    text_color = medium_gray,
    sel_color = white,
    text_size = 4,
    option = {}
}
s["credits"].text = "Game by Giack.\
Credit music by Pietvo."



return s