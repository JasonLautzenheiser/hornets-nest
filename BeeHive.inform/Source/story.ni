"Hornets' Nest" by Jason Lautzenheiser

Use full-length room descriptions. 
Use American dialect.

Volume - Metadata

Book - License

To say the license:
say "Copyright (c) 2014 Jason Lautzenheiser
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:  The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE."

Book - Bibliography

The story genre is "Comedy".
The story headline is "An Interactive Experience in Pest Removal".
The story description is "You weren't going to let the hornet's nest in the shade tree out front stop you from enjoying your summer."
The release number is 1.
The story creation year is 2014.
Release along with a website.
Release along with an interpreter.

Volume - Mechanics

Book - Extensions

Include Small Kindnesses by Aaron Reed.
Include Trinity Inventory by Mikael Segercrantz.
Include Basic Screen Effects by Emily Short.

Book - Extensions - Not for release 

[Include Object Response Tests by Juhana Leinonen.
Include Property Checking by Emily Short.
Include Debugging by Al Golden.
Include Basic Screen Effects by Emily Short.
]
 Include Response Assistant by Aaron Reed.

Book - Extension overrides

Chapter - No valid directions showing (in place of Chapter - Show valid directions after going nowhere in Small Kindnesses by Aaron Reed)


Book - Objects

Part - Things

Chapter - Properties

A room can be a safe-zone.
A thing can be lost or found.  A thing is usually found.
A thing can be flammable or impervious. A thing is usually impervious.
A thing can be throwable.
Flame-state is a kind of value. The flame-states are burnt, flaming, and new. Understand "burning" or "lit" as flaming.   A thing has a flame-state.  A thing is usually new.

Everything has some text called the think-text.  The think-text is usually "".
Everything has some text called the blind-text.  The blind-text is usually "".
A room has some text called the blind-text.  The blind-text of a room is usually "".


Book - General

To say para -- running on: 
	(- DivideParagraphPoint(); new_line; -). 

To set the/-- pronoun it to (O - an object): (- LanguagePronouns-->3 = {O}; -).
To set the/-- pronoun him to (O - an object): (- LanguagePronouns-->6 = {O}; -).
To set the/-- pronoun her to (O - an object): (- LanguagePronouns-->9 = {O}; -).
To set the/-- pronoun them to (O - an object): (- LanguagePronouns-->12 = {O}; -).



Part - Rules

Rule for printing room description details: stop.

The can't take scenery rule response (A) is "[The noun] can't be taken anywhere."
The block attacking rule response (A) is "[if the noun is hornets]Yes that is your ultimate goal, but it's not going to be that easy.[otherwise]Really no need to do that.[end if]".
The can't put onto what's not a supporter rule response (A) is "Putting [the noun] on [the second noun] wouldn't do anything exciting."

Rule for printing a parser error when the latest parser error is the I beg your pardon error:
  say "[one of]Bzzzzzzz.[or]The hornets laugh at your indecision.[or]Your wife glares at you from the house wondering why you're just standing there.[or]Ahhh...if only I had a beer.[or]Daydreaming again?[or]Your blood pressure is rising.[or]What?[or]Come again?[or]Prithee, pardon?[in random order]"


Part - Sanity Checks

The sanity-check rules are a rulebook.

This is the sanity-check stage rule:
	abide by the sanity-check rules.

The sanity-check stage rule is listed before the before stage rule  in the action-processing rules.

sanity-check eating an inedible thing:
	say "Even if [the noun] looked appetizing, you don't have time to eat anything." instead.

sanity-check wearing something which is not wearable:
	say  "How in the world would you go about wearing [the noun]?" instead.
	
sanity-check taking something that is flaming:
	say "It's way too hot to carry around." instead.
	
sanity-check sleeping:
	say "Sleeping before the job is done?  I don't think so." instead.

sanity-check waiting:
	if hornets are aggressive:
		say "Probably not a bad idea to wait and let the hornets calm down a bit before venturing back out there." instead;
	otherwise:
		say "What are you waiting on?  You're running out of time." instead.





Part - Flimsy

A flimsy is a kind of thing.  A flimsy has some text called the action-refusal.  The action-refusal of a flimsy is usually "".  A flimsy is usually fixed in place, undescribed.

To say brush-off of (n - a thing):
	say "You don't need to worry about [if n is plural-named]those[else]that[end if]."

Rule for writing a paragraph about a flimsy (called xx):
	now xx is mentioned.

Instead of examining a flimsy:
	if the initial appearance of the noun is "", say "[brush-off of noun]";
	otherwise say "[initial appearance of the noun][paragraph break]".

instead of doing anything to a flimsy:
	if the action-refusal of the noun is "", say "[brush-off of noun]";
	otherwise say "[action-refusal of the noun][paragraph break]".

Part - Blind Text	


instead of examining something when the player is blinded:
	if the blind-text of the noun is "":
		say "Without your glasses on, everything is a big blur.";
	otherwise:
		say "[blind-text of the noun][paragraph break]".

instead of looking when the player is blinded:
	if the blind-text of the location is "":
		say "Without your glasses on, everything is a big blur.";
	otherwise:
		say "[blind-text of the location][paragraph break]".

before searching the location when blinded:
	say "All you find are vague shapes and colors." instead;

instead of going somewhere when the player is blinded and the location is up-the-tree:
	say "You start to move, but not seeing clearly,  you misjudge the next rung on the ladder and manage to fall, not to gently to the ground.";
	now the player is in under-the-tree.

instead of going somewhere when the player is blinded:
	say "You put your hands out in front of you to keep from running into anything, but you manage to [blind-going-reject] and end up staying right where you are."
	
instead of going nowhere when the player is blinded:
	say "You put your hands out in front of you to keep from running into anything, but you manage to [blind-going-reject] and end up staying right where you are."

to say blind-going-reject:
	say "[one of]trip[or]stumble[or]fall[or]go in circles[then at random]".
	

Book - Easter Eggs

understand "xyzzy" as a mistake("You face the tree and wave your fingers at the nest while chanting 'xyzzy, xyzzy, xyzzy ....' Nothing happens.").
understand "cut the cheese" or "cut cheese" or "pass gas" or "fart" as a mistake("You pass a little gas.   The hornets seem somewhat amused.").


Book - Actions

Part - Standard Actions

Chapter - Synonyms

Understand "climb [direction]" as going.

Part - New actions

Chapter - Misc

Instead of looking under something carried by the player:
	say "It should be pretty obvious what is under [the noun] since you are carrying [it], but you can't help but to take a look anyway."
	
Instead of looking under something (called the underling) worn by the player:
	if underling is the baseball cap:
		say "Well you can't really bend your eyes in a way to see the top of your head, but you suspect it is relatively hairless.";
	if underling is the glasses:
		say "Well considering your eyes are under your glasses, you try to recursively look at your eyes through your eyes, but only manage to give yourself a headache from the eye strain.";
	if underling is the t-shirt:
		say "You look underneath your shirt just to find your hairy chest just like you left it.";
	if underling is the jean shorts:
		say "Well now, I think you know what's under there.".
		

Chapter - Knocking on

Knocking on is an action applying to one thing.
Understand "knock on [something]" or "knock [something]" as knocking on.
understand the commands "bang" and "tap" and "rap" as "knock".

Chapter - Dancing

Dancing is an action applying to nothing.
Understand "dance" as dancing.

instead of dancing:
	if location is under-the-tree and fire is on-stage:
		say "[one of]You pick up a few of the flaming twigs and twirl them around as you dance around the fire.  After a few moments of intense dancing, you pause and see your wife looking at you from the house.  She just shakes her head and walks away.  You drop the sticks back in the fire and pretend that just didn't happen.[or]Haven't you made a fool of yourself enough already?[stopping]";
	otherwise:
		say "You dance a little jig.  Perhaps you managed to entertain the hornets, but they aren't any closer to being gone."

Chapter - Kicking

Kicking is an action applying to one thing.  
Understand "kick [something]" as kicking.

before kicking anything when the location is up-the-tree:
	say "Kicking something while perched on the ladder would most likely make your trip to the ground very rapid." instead.

Report kicking something (called the booted-item):
	say "You kick [the booted-item] and you now feel a bit better."
	

Chapter - Praying

Praying is an action applying to nothing.  Understand "pray" as praying.
sanity-check praying:
	say "You kneel down, close your eyes and pray that the nest will be gone.  You open your eyes and [if location is in-the-shed]look out the window expectantly[else]look up hopefully[end if], only to be disappointed to still see the nest in the tree."

Chapter - Singing

Singing is an action applying to nothing.  Understand "sing", "hum" as singing.

sanity-check singing:
	say "You start to [verbword] a simple tune, but that only seems to agitate the hornets more." instead;

Chapter - Scoring

carry out requesting the score:
	if number of completed puzzles is 0:
		say "You have not managed to annoy the hornets yet.";
	otherwise:
		let left-ways be number of not default puzzles minus number of completed puzzles;
		say "You have annoyed the hornets [number of completed puzzles] way[if number of completed puzzles is greater than 1]s[end if].  Maybe you can find [left-ways] more.[para]";
		say "The ways you've annoyed the hornets so far are: [list of completed puzzles].";
	stop the action.

Chapter - Digging

Digging is an action applying to nothing. Understand "dig", "dig hole", "dig a hole", "dig a", "dig in ground", "dig a hole in the ground", "dig hole in ground", "dig a hole in ground", and "dig hole in the ground" as digging.

Instead of digging:
	if the player is carrying the shovel:
		if the location is under-the-tree:
			if the hole is in under-the-tree:
				say "The ground is too hard and full of roots to expand the hole any further.";
			otherwise:
				now the hole is in under-the-tree;
				say "It's tough digging, but you manage to dig around the roots and make a hole directly underneath the nest.";
		otherwise if the location is in-the-shed:
			say "Why would you want to dig a hole in the shed floor?";
		otherwise if the location is on-the-porch:
			say "The shovel won't dig through the concrete porch.";
	otherwise:
		say "Digging with your hands just doesn't sound like a good use of your time."

Chapter - Shaking

Shaking is an action applying to one visible thing.
Understand "shake [something]" as shaking.
Understand "shake" as shaking.

Rule for supplying a missing noun while shaking:
	now the noun is the player.
	
Check shaking:
	if the noun is:
		-- myself:
			say "You shake your entire body like a dog climbing out of the water, but the hornets don't seem impressed.";
		-- the tree:
			say "You try to shake the tree, but luckily for you, it is too large and you can't budge it.";
		-- the bug killer:
			do nothing;
		-- otherwise:
			say "You shake it, but nothing happens other than your arm getting a little tired."
	
Carry out shaking:
	if the noun is the bug killer: 
		now the noun is shaken.
	
Report shaking the bug killer:
	say "You shake the can listening to that little ball inside bounce on the inside[if bug killer is full]. There seems to be some spray left[otherwise if bug killer is half-full].  There seems to be very little spray left[otherwise], but the can feels empty[end if]."

Chapter - Leaning

Leaning it on is an action applying to two visible things.
understand "lean [something] on [something]" as leaning it on.
understand "lean [something] against [something]" as leaning it on.
understand "lean [something]" as leaning it on.
understand "set [something]" as leaning it on.
understand "set [something] on [something]" as leaning it on.
understand "set [something] against [something]" as leaning it on.
understand "put [something] on [something]" as leaning it on.
understand "put [something] against [something]" as leaning it on.

Rule for supplying a missing noun while leaning (this is the leaning on rule):
	now the noun is the player.
	
Rule for supplying a missing second noun while leaning:
	if location is under-the-tree:
		now the second noun is the bug killer;
	if location is on-the-porch:
		now the second noun is the house;
	otherwise:
		say "You lean [the noun] against thin air and it promptly leans all the way to the ground.";
		now the noun is in the location.
	
Check leaning:
	if the noun is:
		-- myself:
			if the second noun is the tree:
				say "You lean against the tree nonchalantly...well that didn't work, the hornets notice you and become a bit agitated.";
		-- ladder:
			if the second noun is the tree:
				say "You lean the ladder against the tree, being careful not to bump the nest in the process.";
				now the ladder is on the tree;
			if the second noun is the shed:
				say "You don't think the shed would hold you if you managed to climb up on top of it.  You decide to hold on to the ladder.";

			
Before putting something on the tree: 
	if the noun is not the ladder:
		say "You try to put [the noun] on the tree, but it won't stay." instead.

Chapter - Catching
		
Catching it is an action applying to one visible thing.
Understand "catch [something]" as catching it.
Understand "catch a cold" or "catch cold" as a mistake("Now why would you want to do that?")

Check catching:
	if the noun is the hornets, say "I'm sure that would be quite painful.  Stick around long enough and they may catch you." instead;
	if the noun is not the horsefly, say "Perhaps if [the noun] was running away, you could catch it.  It's not, so you can't." instead.
	
Carry out catching:
	if the location is in-the-shed:
		if the horsefly is in in-the-shed:
			try  taking the horsefly instead.
		
		

Chapter - Spraying

Spraying it with is an action applying to two visible things.
understand "spray [something] with [something]" as spraying it with.
understand "spray [something] on [something]" as spraying it with (with nouns reversed).
understand "spray [something] at [something]" as spraying it with (with nouns reversed).
understand "spray [something] towards [something]" as spraying it with (with nouns reversed).
understand "spray [something]" as spraying it with.
understand "spray" as spraying it with.

Rule for supplying a missing second noun while spraying:
	now the second noun is the bug killer.
	
Rule for supplying a missing noun while spraying:
	now the noun is the hornets-nest.
	
Check spraying:
	if the second noun is not the bug killer , say "You could try spraying it with [the second noun] but I don't think you would be very successful." instead;
	if player is not carrying the bug killer, say "You have nothing to spray with." instead;
	if bug killer is empty, say "Well, the can is empty now, so spraying [the noun] won't help much now." instead;		
	if noun is the large spider:
		say "You read the back of the can and it doesn't mention spiders as something it is effective on, so you don't bother as there is not much spray left." instead;
	if noun is the horsefly:
		say "[one of]Spraying the fly seems like such a waste of good bug spray.[or]You are going to need every last drop of bug spray for the hornets.[or]Against your better judgment, you lift the can to spray the fly.  Just as you are about to end it's miserable life, it flies away from the window.[then at random]" instead;
	otherwise:
		if location is not under-the-tree and the location is not up-the-tree:
			if noun is hornets or noun is hornets-nest:
				say "You'll need to get closer to the nest before attempting to spray [if noun is hornets]them[otherwise]it[end if]." instead;
			otherwise:
				say "Bug spray is used to kill bugs not [the noun]." instead;
	
spray-count is a number that varies. spray-count is 0.

Carry out spraying:
	if location is under-the-tree:	
		if noun is hornets-nest or noun is hornets:
			now the bug killer is half-full;
			now the hornets are angry;
			if spray-count is 0:
				now spray-count is spray-count plus one;
				say "You take careful aim....and spray.....and the stream falls a foot short of the nest.  You take a second look at the can and see it says, 'Sprays up to 8 feet!'...well crap, I've got to get closer.[paragraph break]You shake the can one more time and you seem to have just a little left." instead;
			otherwise:
				say "You really should try to get closer to the nest." instead;
	if location is up-the-tree:
		say "You are close enough now, there is no way you'll miss.  You'll have these damn hornets out of your hair in no time.  You shake the can one last time, more of a nervous habit than out of necessity, take careful aim.....and spray....[paragraph break]";
		now the bug killer is empty;
		now spray-count is spray-count plus one;
		say "...you shake the can and look at it in horror as just a little spray dribbles out ....just enough to grab the hornets' attention.  They begin to mass an attack.";
		hornets attack in 1 turn from now;
		now spray-the-nest is completed;
		now the last-puzzle-completed of the player is spray-the-nest;
	
Chapter - counting

Counting is an action applying to one visible thing.  Understand "count [something]" as counting.

Check counting:
	if the noun is hornets:
		say "You watch the hornets for a bit as they swarm in and out of the nest.  It's hard to be sure, but you think there are 69,105 hornets." instead.
		
Carry out counting:
	say "Sure....maybe later."
	
Understand "count blessings" or "count your blessings" or "count my blessings" as a mistake("Well for one you haven't been stung yet...")


sanity-check jumping:
	if location is up-the-tree:
		say "You prepare to leap off the ladder, only to realize that it's probably just as easy to climb down safely." instead;
	else if location is under-the-tree:
		say "You jump as high as you can trying reach the nearest branch, but it is way out of your reach." instead;
	otherwise:
		say "You do your best impression of a basketball player (or is it a ballerina)?" instead.

Chapter - Thinking

Thinking about is an action applying to one thing.
Understand "think about [something]" as thinking about.
Understand "think [something]" as thinking about.

instead of thinking about:
	if think-text of the noun is "":
		say "You love thinking about [the noun].";
	otherwise:
		say "[think-text].";

Instead of thinking:
	say "Yep, that's a strong talent of yours, sitting around, drinking a beer and thinking."

Chapter - Cutting with

Cutting with is an action applying to two things.

understand "cut [something] with/using  [something preferably held]" as cutting with.
understand "saw [something] with/using [something preferably held]" as cutting with.

[Check cutting with:
	say "[We] don't need to cut [regarding the second noun][those]." instead.
]
instead of cutting with:
	if the second noun is the hand-saw:
		try cutting the noun;
	otherwise:
		say "You attempt to cut [the noun] with [the second noun], but it is not very effective."


Chapter - Putting

Putting under is an action applying to two things.
Understand "put [something] under [something]" as putting under.

instead of putting under:
	try dropping the noun instead.

Chapter - Taking

understand the command "grab" as "take".

Chapter - Attacking it with

Understand the commands "attack" and "punch" and "destroy" and "kill" and "murder" and "hit" and "thump" and "break" and "smash" and "torture" and "wreck" as something new.

Attacking it with is an action applying to one visible thing and one carried thing. Understand "attack [something] with [something preferably held]" as attacking it with.

Understand the commands "punch" and "destroy" and "kill" and "murder" and "hit" and "thump" and "break" and "smash" and "torture" and "wreck"  as "attack".

sanity-check attacking something which is not attackable with something:
	try attacking the noun instead.

sanity-check attacking someone which is not attackable with something:
	try attacking the noun instead.

Check attacking it with:
	if the noun is the hornets-nest:
		if the location is up-the-tree:
			say "You take a test swing with [the second noun] but realize that you don't have the coordination to swing with enough force to be effective without knocking yourself off the ladder and down to the ground.";
		otherwise:
			say "You swing [the printed name of the second noun] at the nest over and over but you're not tall enough to hit it and the wind generated from your incessant swinging does little.";
	otherwise if the noun is the large spider:
		say "You swat at the large spider with [the second noun], but each time it ducks into a crevice where you can't reach it.  The spider resumes it's place on the web, glaring at you with very little sympathy.";
	otherwise: 
		follow the block attacking rule.

Understand "swing [something preferably held] at [something]" as attacking it with (with nouns reversed).

A thing can be attackable.


Chapter - Throwing

[Get rid of those few rules I don't need]
The futile to throw things at inanimate objects rule is not listed in the check throwing it at rules.
The block throwing at rule is not listed in the check throwing it at rules.

Check throwing it at (this is the block juggling rule): 
	if the player is carrying the second noun, say "It would be difficult to throw at something you are yourself holding." instead.
	
Check throwing it at (this is the avoid throwing things into themselves rule): 
	if the second noun is within the noun, say "That would be a neat trick." instead.	

Check throwing it at (this is the avoid throwing things being worn rule): 
	if the player is wearing the noun, say "You'll want to keep that on instead of throwing it." instead.	


Understand "throw [something] in [something]" as throwing it at.
Understand "throw [something] on [something]" as throwing it at.
Understand "throw [something] at [something]" as throwing it at.

Check throwing:
	if the noun is bug killer:
		if the second noun is the tree:
			say "You throw [the noun] at [the second noun] and miss horribly.";
			now bug killer is in under-the-tree instead;
		if the second noun is the house:
			say "You would wind up just breaking a window so you decide not to." instead;
		if the second noun is a flaming thing:
			now fire-the-missle is running;
	if the noun is the ladder:
		if the location is under-the-tree:
			say "You give the ladder a heave and if by magic it lands upright leaning against the tree.";
			now ladder is on the tree instead;
		otherwise:
			say "You awkwardly throw the ladder and it falls just as awkwardly to the ground.";
			now the ladder is in the location instead;
	if the noun is the horsefly:
		if the second noun is web:
			try putting the horsefly on the web instead;
		otherwise:
			try dropping the horsefly instead;
	otherwise:
		say "As frustrated as you are, throwing [the noun] will not help." instead.




Chapter - Burning

Everything has some text called the burn-reject.  The burn-reject is usually "".
burn-with-glasses is a truth state that varies.  burn-with-glasses is false.
fire-is-out is a truth state that varies.  fire-is-out is false.

Understand the commands "light" and "burn" as something new.	

Understand "burn [something] with [something preferably held]" as burning it with. 
Burning it with is an action applying to one thing and one carried thing.
Understand the command "light" as "burn".

[The block burning rule is not listed in any rulebook.]

Before printing the name of something flaming: 
	say "flaming ".

understand "burn [something]" as burning it with when burn-with-glasses is true.

Check burning something with something:  
	if the second noun is not reading glasses, say "You can't start a fire with [the second noun]." instead; 
	if burn-with-glasses is false:
		say "[first time][italic type]Note: now you can just type BURN something and I'll use your glasses.[roman type][paragraph break][only]";
	now burn-with-glasses is true;
	if the noun is flammable:
		if the noun is new:
			if the player is carrying the noun:
				say "You might want to set [the noun] down first." instead;
			otherwise:
				if location is not under-the-tree:
					say "[if location is in-the-shed]You risk burning the entire shed down if you tried that.[otherwise if location is outside-the-shed]The fire could spread to the shed and you'd end up burning that down.[otherwise if location is on-the-porch]You might catch the house on fire if you tried that.[otherwise if location is up-the-tree]You couldn't manage to do that without setting the tree on fire or falling out of it, probably both.[end if]" instead;
		if the noun is flaming:
			say "That is already on fire." instead;
		if the noun is burnt:
			say "You try burning [the noun] again, but it only smokes a little then sputters out." instead;
	otherwise:
		if the noun is some leaves and the twigs are flaming:
			try putting some leaves on the fire instead;
		if the burn-reject of the noun is "":
			say "You could set [the noun] on fire, but you shouldn[']t.  You're not a kid anymore." instead;
		otherwise:
			say "[burn-reject of the noun][paragraph break]" instead;
	
Carry out burning something with something:
	say "You take off your glasses and remembering your training from cub scouts, you hold them at just the right angle so the sunlight makes a pinpoint on [the noun]. [paragraph break]";
	if the noun is bug killer:
		say "The can gets a little hot, but nothing else happens.";
	if the noun is twigs:
		say "After a few moments a small stream of smoke rises from [the noun] and then suddenly a flame appears.";
		now the fire is on-stage;
		now the smoke is on-stage;
		now the noun is flaming;
		flame goes out in 10 turns from now;
[		now build-a-fire is completed;
		now the last-puzzle-completed of the player is build-a-fire.]

rule for supplying a missing second noun when burn-with-glasses is true: 
	now second noun is glasses


	
Part - Out of world

Chapter - Credits

Abouting is an action out of world applying to nothing.
Understand "about" as abouting.
Understand the command "credits" or "info" as "about".

Report abouting:
	say "[italic type][Story title][roman type] is copyright © 2014 by Jason Lautzenheiser (jlautz@sssnet.com or visit by blog at http://lautzofif.wordpress.com/). It may be distributed for free, but not sold or included in any for-profit collection without written permission from the author.[para]";
	say "This work was created just for the fun of it beginning in early 2014.  This release is made for the IntroComp 2014 contest.  Special thanks to my great testers (in no particular order):  Andrew Schultz, Daniel Stelzer, Hanon Ondricek and Marshal Tenner Winter.  Also special thanks to my wife Holly and my four children, all of whom I was able to bounce ideas off of.[para]"; 

After printing the banner text:
	say "ABOUT for more information[para]".


Chapter - License

Requesting the license is an action out of world.
Understand "license" and "lisense" and "lisence" as requesting the license.
Carry out requesting the license:
	say the license.
	
Chapter - Transcripting

To say email:
	say "lautzenheiser.jason@gmail.com".

Include (-
[ CheckTranscriptStatus;
#ifdef TARGET_ZCODE;
return ((0-->8) & 1);
#ifnot;
return (gg_scriptstr ~= 0);
#endif;
];
-).
 
To decide whether currently transcripting: (- CheckTranscriptStatus() -)
 
ignore-transcript-nag is a truth state that varies.
 
After reading a command:
	if the player's command matches the regular expression "^\*+|\;.+":
		if currently transcripting:
			say "Noted.";
		otherwise:
			if ignore-transcript-nag is false:
				say "You've made a comment-style command, but the transcript is off. Type TRANSCRIPT to turn it on, if you wish to make notes.[paragraph break]The long version of this nag will only appear once. You may press any key to continue.";
				wait for any key;
				now ignore-transcript-nag is true;
			else:
				say "(Comment not sent to transcript.)";
		reject the player's command.
		
report switching the story transcript on:
	if currently transcripting:
		say "Thanks for doing this! Email can go to [email]";

check quitting the game when currently transcripting:
	say "Thanks for taking the time to create a transcript.  Please send it to [email] and I'll be grateful.  Thanks!"
	
	

Volume - The World

Book - Startup

After printing the banner text, say "Copyright © 2014, Jason Lautzenheiser."
The time of day is 6:05 AM.

When play begins:
	now the left hand status line is "[the player's surroundings] ";  [number of uncompleted puzzles]
	now the right hand status line is "Time: [time of day]";
	say "You pause to hide behind a tree.  You can hear the orc crashing through the underbrush searching for its prey, you.  Eluding them since they attacked your village, you hoped to lead them away from the others while trying to keep out of their cooking pot yourself.  You try to control your breathing as you rest for a moment, but you doubt it can hear it through all the noise it's making.

Suddenly from behind, two arms like tree branches reach out and grab for you.  You slice out with your hunting the knife, the only weapon you managed to grab on your flight out, cutting deeply but not doing any real damage.  The orc keeps hold and slings you over its shoulder and begins to traipse back through the forest.

Suddenly it stops, sniffing the air when suddenly you smell something too.  A smell you know oh too well. A flowery scent, one that strikes fear into the heart of any creature, large or small.  The orc drops you where he stands and runs off in a panic, leaving you lying there.  

The world begins to blur as the smell becomes stronger, you suddenly realize that it's all been a dream and the orc attacking your village was nothing more than a result of some late night tacos.  But that smell is one all too real.  The perfume your wife wears every day, announcing her presence as she enters the bedroom you share.

'Will you get out of bed!!!' she screeches.  

'You promised you'd get rid of that hornets['] nest before my mother got here.  You know she's allergic.'

You slowly roll out of bed, you had secretly hoped that perhaps your mother-in-law would get stung and never come back.  But your fear of your wife is stronger than your desire to see her mother disappear. 

Getting up you manage to pull on your shorts and a t-shirt before she shoves you out the door.

'Now don't come back until it's gone,' she demands as she slams and locks the door behind you."



Book - Characters

Part  - Player Character

Myself is a male person.  The player is myself.  
The description of the player is "You're a third generation farmer who is.....no not really, you bought this old farm house because it was falling down and you got it and the land cheap."

A person can be hiding or not-hiding.
A person can be blinded.   
Every person has a number called the sting-count.
The sting-count of the player is 0.

Check going when the player is hiding:
	now the player is not-hiding.

The player is wearing reading glasses, t-shirt, jean shorts and baseball cap.



Chapter - wife

Wife is a female person.  The description of wife is "Your wife is a very beautiful and smart woman.  Someone she has managed to put up with you for all these years and still stick around.  Maybe she just feels sorry for you."  The printed name of wife is "wife".

After deciding the scope of the player: 
	place the wife in scope.
	
before doing anything to wife:
	if examining wife:
		say "[description of wife][para]" instead;
	otherwise:
		say "You're not going to [verbword] her until the nest is out of the tree.  She's made that abundantly clear." instead.

before taking wife:
	say "You're not going to take her anywhere until the nest is out of the tree.  She's made that abundantly clear." instead.
	


Chapter - General Actions the player can perform

instead of going nowhere:
	say "As much as you want to shirk your responsibility, you promised to get those hornets out of the tree."

Chapter - Reading glasses

The reading glasses are a wearable thing.  The description of reading glasses is "A pair of very thick glasses, you like to call them reading glasses, but in fact you're quite blind without them on."	Understand "spectacles" as reading glasses.  The printed name of reading glasses is "your glasses".

Rule for printing the name of the reading glasses:
	say "your glasses".
	
before of searching glasses:
	if "[verbword]" exactly matches the text "look":
		say "You can see clearly now." instead.
	
before wearing the glasses:
	now the player is not blinded.
	
before taking off the glasses:
	now the player is blinded.
	
report wearing the glasses:
	say "Ahhh...now you can see better.";
	try looking;
	stop the action.
	
Chapter - Baseball cap

A baseball cap is a wearable thing.  The description of baseball cap is "You never really liked baseball, but this hat is very comfortable and it conveniently hides your slightly balding head." The indefinite article is "a".   Understand "hat" as baseball cap.  the printed name of baseball cap is "your baseball cap".

Rule for printing the name of the baseball cap when taking inventory:
	say "a baseball cap".

Rule for printing the name of the baseball cap:
	say "your baseball cap".
	
Instead of dropping the baseball cap, say "You're pretty self-conscious about your hair, or lack of, so you'll just keep it on."
Instead of taking off the baseball cap:
	try dropping the baseball cap instead.
	
Chapter - Jean shorts

The jean shorts is a wearable thing.  The description of jean shorts is "Your wife is always trying to throw these shorts out...she says they are too tight on you.  You don't know what she's talking about, these are so well broken in they feel like wearing nothing at all." The indefinite article is "some".   Understand "pants/trousers/bottoms" as jean shorts.  The printed name of jean shorts is "your shorts".

Instead of dropping the shorts, say "Even though they feel like you're wearing nothing, they really do serve a purpose....let's not expose your no-no places."

Instead of taking off the jean shorts:
	try dropping the jean shorts instead.

Rule for printing the name of the jean shorts when taking inventory:
	say "some shorts".
	
[instead of doing anything with the jean shorts:
	try dropping the shorts.
]

	

Chapter - T-shirt

The t-shirt is a wearable thing.  The description of the t-shirt is "Just a plain white t-shirt, nothing fancy." The indefinite article is "a".   the printed name of t-shirt is "your t-shirt".
Understand "tshirt/shirt/tee/tee-shirt/teeshirt" as t-shirt.
Instead of dropping the t-shirt, say "You decide to keep your six-pack covered."
Instead of taking off the t-shirt:
	try dropping the t-shirt instead.
Rule for printing the name of the t-shirt:
	say "a t-shirt".
		

Book - Map

Part - Under the Tree

Under-the-tree is a room.  The printed name is "Under the Tree".   The description is "You are standing under the large shade tree in the front yard.  The tree provides wondrous shade during the summer months that you take advantage of whenever you can.  However, now as fall is in full swing and winter is approaching, the leaves are beginning to fall and pile up under the tree.  The leaves are becoming sparse in the tree[if the hornets-nest is part of the tree] and you can see a hornet's nest about ten feet up on a branch[end if].  [if pile of ashes is on-stage]There is a pile of ashes under the tree.  [end if]To the south is your ancient utility shed where you store all the essentials.  You can go west to get on your porch.  [other-stuff-in-area][say-fire-is-out]".


The blind-text of under-the-tree is "You can make out the faint blur of the tree and the shadows created by the leaves.  You can definitely hear the hornets in their nest above you."

To say say-fire-is-out:
	if fire-is-out is true:
		say "[para]You're fire appears to have gone out since you were gone.";
		now fire-is-out is false;
		
		
To say other-stuff-in-area:
	let need_period be false;
	if ladder is on tree:
		now need_period is true;
		say  "Your ladder is leaning up against the tree";
	if cut branch is in under-the-tree:
		now need_period is true;
		if ladder is on tree:
			say " and the ";
		otherwise:
			say "The ";
		say "branch you just cut is laying on the ground";
	if need_period is true:
		say ".".
		
Before going up from under-the-tree:
	if the player is carrying ladder:
		try leaning ladder on tree;
	if ladder is not on the tree:
		say " You never were much of a tree climber.  Besides it wouldn't be pretty if the hornets attack while you were trying to pull yourself up the tree." instead.
	
Chapter - Pile of ashes

The pile of ashes is a fixed in place flimsy.  "Just the remains of your wood, now just a pile of grey ashes."  The pile of ashes is described.  Pile of ashes is plural-named.   


Chapter - Leaves

Some leaves are in under-the-tree.  Some leaves are undescribed.  The description of some leaves is "The leaves are starting to come down and cover the ground around the tree."  The burn-reject of the leaves is "You gather a pile of leaves and try to light them with your glasses.  They begin to smoke profusely but quickly go out as they are too wet from a recent rain to ignite on their own."
Some leaves is plural-named.

After taking some leaves:
	say "You gather up a handful of leaves, but there are still plenty left to clean up."
	
Instead of counting some leaves:
	say "There are exactly 69,105 leaves...somehow that doesn't surprise you.";

instead of throwing leaves when twigs are flaming:
	try putting some leaves on the twigs instead.

Before throwing some leaves at twigs:
	try putting some leaves on the twigs instead.	

Before throwing some leaves into twigs:
	try putting some leaves on the twigs instead.	

Before throwing some leaves onto twigs:
	try putting some leaves on the twigs instead.	

	
instead of putting some leaves on the twigs:
	if twigs are flaming:
		say "[regarding the noun][if the player is not carrying some leaves]You gather up a handful of leaves and [otherwise]You [end if]toss [them] onto the fire and the smoke begins to build until a dark gray cloud begins to lift from the ground up into the tree.";
		now leaves are off-stage;
		now the smoke is heavy instead;
	otherwise:
		say "Tossing the leaves on the twigs would not serve any purpose right now."

instead of kicking the leaves:
	say "You kick at the leaves and they fly up into the air only to settle down again.  The yard looks no different."

Before putting some leaves on the fire-top:
	try putting some leaves on the twigs instead.
		

	
Part - In the shed

In-the-shed is a room.  In-the-shed is a safe-zone. The printed name is "[if the player is hiding]Hiding in[otherwise]In[end if] the Shed".  The description is "You're inside your shed.  It is a complete mess.  There is a dirty window in the north wall that looks back towards your front yard and a shelf covered in junk just inside the doorway to the north.[if the bug killer is found and the bug killer is on the shelf]  On the shelf is a can of bug spray.[end if]  [describe-the-hand-saw]".  
In-the-shed is inside from outside-the-shed.  

The blind-text of in-the-shed is "Everything is dark except for a faint glow coming from the window and the slightly brighter glow of the doorway to the north."

before going north in in-the-shed:
	try exiting instead;

A dirty window is in in-the-shed.  The dirty window is scenery. The description of the dirty window is "The window is covered in cobwebs and dust.  It doesn't look like it's been cleaned for decades, if ever.  [if horsefly is in in-the-shed]In the corner of the window is a large horsefly, buzzing up against the window trying to get out.[end if]"

instead of kicking the window:
	say "You start to kick the window but then realize that it would probably be easier to just go through the open doorway."

sanity-check rubbing up:
	try rubbing the junk instead.
	
Sanity-check rubbing the window:
	say "You rub and rub the window but it doesn't look much cleaner." instead.
	
Before opening the window:
	say "The window probably hasn't been opened in a hundred years. It's not going to happen now." instead.

Before attacking the window when the location is in-the-shed:
	say "You wouldn't want to break the window, you'd just have to replace it." instead.

A shelf is scenery supporter in in-the-shed.  The description of the shelf is "The shelf is just inside the door and looks to be where things were just thrown.  There are piles of junk on it."

Junk is scenery in in-the-shed.  The description of junk is "Just piles of stuff that has collected here over the years.  [if the bug killer is not found]You could try searching it to see if there is anything to help you current dilemma.[end if]".  Understand "piles" or "mess" as junk when the location is in-the-shed.

sanity-check rubbing the junk:
	say "Cleaning would be a hopeless task." instead.

Instead of taking junk:
	say "[if the bug killer is not found]There is really no need to take all of this, but perhaps if you searched the junk you could find something useful.[otherwise]You've looked through the junk and couldn't find anything useful, so you'll just leave it all here for another day.[end if]"

instead of searching anything when the player is blinded and the location is in-the-shed:
	say "You search and search but see only vague shapes."

Before searching junk:
	try searching shelf instead.

before overly elaborate looking:
	try searching the location instead.
	
Before searching while location is in-the-shed and the noun is not the window:
	try searching junk instead.
	
Understand "look out [something]" as searching.

Instead of looking north when location is in-the-shed:
	try searching the window.

Instead of searching the window:
	say "Looking out the hazy window[if the hornets-nest is part of the tree], you barely make out the hornets in the tree.  [view-hornets-out-window][else] you can see the tree.[end if]".

To say describe-the-hand-saw:
	if the hand-saw is hanging and the hand-saw is found:
		say "Hanging on the wall near the back is a handsaw.[run paragraph on]";

To say view-hornets-out-window:
	if the hornets are swarming:
		say "They are swarming and from here it looks like a haze around the nest.";
	if the hornets are angry:
		say "The haze around the nest appears to be boiling with activity.";
	if the hornets are aggressive:
		say "As you stand next to the window, the hornets still appear to know where you are.  One breaks from the swarm and flies right into the window with an audible thunk.";
	if the hornets are subdued:
		say "You can see the nest still in the tree, but through the dust and haze of the window you can't make out much more."

Instead of examining the shelf for the first time:
	try searching the shelf.

Before searching the shelf:
	if the bug killer is not found:
		say "As you rummage through the junk on the shelf, you notice a can of bug spray that must have been thrown up there years ago.";
		move the bug killer to the shelf;
		now the bug killer is found instead;
	otherwise:
		say "You find nothing that looks useful to your current plight." instead.
	
Chapter - Can of Bug Killer

The bug killer is a thing.  The description of bug killer is "The can of bug killer has been laying in the shed for a number of years." The indefinite article of bug killer is "a can of".  understand "can" or "spray" as bug killer.   the bug killer is flammable.

The bug killer is either empty, half-full or full.  The bug killer is full.
The bug killer is either shaken or settled.  The bug killer is settled.
The bug killer is lost.

Before putting the bug killer on the twigs:
	if the twigs are flaming:
		try putting the bug killer on the fire-top instead.
		
Before putting the bug killer on the fire-top:
	if the player is carrying the bug killer:
		now fire-the-missle is running instead.

before kicking the bug killer:
	if the location is not up-the-tree:
		say "You give the can of bug spray the boot and it goes flying.";
		now the bug killer is in a random adjacent room.

Understand "kick the can" or "kick can" as a mistake("Dying may be preferable to seeing your inlaws, but that's not a viable option, so back to getting rid of the nest.").	

Chapter  - Hand saw	

The hand-saw is an undescribed thing in in-the-shed.  The printed name of hand-saw is "hand saw".  Understand "saw/handsaw" or "hand saw" as hand-saw.  
The description of hand-saw is "Nope, you didn't use this much either.  The saw is new and shiny." 	
The hand-saw can be hanging.  The hand-saw is hanging.  

Check taking the hand-saw for the first time:
	now the hand-saw is not hanging.

Before kicking the hand-saw:
	say "You try to kick the saw, but only manage to slice your leg as you miss horribly." instead.
	
Rule for deciding whether all includes the hand-saw: it does.

Chapter - Ladder

A ladder is a thing.  A ladder is in in-the-shed.  The description is "It's a cheap aluminum step ladder your Dad gave you for a house warming gift when you moved in twenty years ago[one of][if location is in-the-shed and player is not carrying the ladder] is still laying where you left it.....oh....twenty years ago[end if][or][stopping]."

Before climbing the ladder:
	if location is under-the-tree:
		if the ladder is on the tree:
			say "You climb as quietly as possible up the ladder until you are just a few feet away from the nest.  The hornets didn't see you coming, but now a few start to buzz around your head.";
		otherwise:
			try leaning the ladder on the tree;
		try going up instead.

instead of kicking the ladder:
	say "You kick the ladder and manage to hurt your toe in the process.  The ladder doesn't appear to have noticed."
	
Instead of putting the ladder on something (called the leaned-on):
	try leaning the ladder on the leaned-on instead.
	
The describe what's on scenery supporters in room descriptions rule is not listed in any rulebook.
The examine supporters rule is not listed in any rulebook.

Chapter - horsefly

[http://inform7.com/learn/man/ex1.html]
Every turn when the player is in in-the-shed and the horsefly is on-stage and the player does not carry the horsefly and the noun part of the current action is not the horsefly:
	if a random chance of 1 in 2 succeeds:
		say "[one of]You hear a fly in the window as it tries to escape[or]You notice a fly walking up the window[or]A fly buzzes past your nose, just to circle around and fly right back into the window[or]The fly unceasingly bangs into the window[or]A sudden silence startles you only to be interrupted by the fly in the window again[at random]."

The horsefly is an undescribed thing in in-the-shed.  The description of horsefly is "The large horsefly is at least two inches long and [if player carries horsefly]it struggles to get out of your grip[otherwise if location is in-the-shed]keeps buzzing around the window trying to get out[end if]."  Understand "fly" as horsefly.

instead of kicking the horsefly:
	say "You kick at the fly, but it is moving to fast and you too uncoordinated for you to make contact.".

Before taking horsefly:
	if the player is carrying the horsefly:
		say "No need, you already have it." instead;
	otherwise:
		say "You spend several minutes trying to get your hands on the fly.  It is only after it gets hung up in some cobwebs that you are finally able to catch it.  You grab it holding on by its wings to keep it from moving around too much.";
		now the player carries the horsefly instead; 

after dropping horsefly:
	say "You let the horsefly go and you watch it fly away, [if location is not in-the-shed]right back into the shed.[otherwise]right back into the window.[end if]";
	now horsefly is in in-the-shed.

before putting the horsefly on anything:
	try dropping horsefly instead.

Before putting the horsefly on the web-top:
	if player is carrying horsefly:
		say "You toss the fly into the web and the spider instantly pounces on it and begins to wrap it up.  When it's done wrapping, it drags the fly off the web and underneath the wood pile.";
		now spider is off-stage;
		now horsefly is off-stage instead;
	otherwise:
		try dropping the noun instead.

before throwing the horsefly:
	try dropping the horsefly instead;

before throwing the horsefly at something:
	try dropping the horsefly instead;

Before throwing the horsefly at web:
	try putting the horsefly on the web-top instead.	

Before throwing the horsefly into web:
	try putting the horsefly on the web-top instead.	

Before throwing the horsefly onto web:
	try putting the horsefly on the web-top instead.	

Before inserting the horsefly into the web:
	try putting the horsefly on the web-top instead.

Before putting the horsefly on the web:
	try putting the horsefly on the web-top instead.

Before throwing horsefly at spider:
	try putting the horsefly on the web-top instead.
	
instead of giving the horsefly to the spider:
	try putting the horsefly on the web-top instead.

understand "smack [something]" or "swat [something]" as attacking.

instead of attacking the horsefly:
	try taking the horsefly instead.
	
before eating the horsefly:
	say "As juicy as it looks, you don't find it near as appetizing as some other creatures.  Perhaps something else would enjoy eating it instead." instead.

After deciding the scope of the player when location is outside-the-shed and the horsefly is off-stage: 
	place the horsefly in scope.

before doing anything to the horsefly while the horsefly is off-stage:
	say "I'm sure the spider is having a wonderful time with the fly, but you won't be able to do anything with it anymore." instead.


	
	
Part - Outside the shed

Outside-the-shed is a room.   The printed name is "[if the player is hiding]Hiding outside[otherwise]Outside[end if] the Shed".  The description is "Your utility shed was built back in the 1860s and is falling down.  However, it[']s close to the house, easy to get to and large enough to store just about anything you need around the yard.  Your large tree is to the north and to the northwest is the front porch of your house.  [if woodpile is on-stage]Stacked to one side of the shed is a [woodpile].[end if] [if ladder is on the shed]The ladder is leaning against the shed.[end if]".  Outside-the-shed is south of under-the-tree and southeast of on-the-porch.

The blind-text of outside-the-shed is "The large shape that is your shed is to the south and you can make out the blur that is your house and you can hear the buzz of the hornets from the tree to the north."

before going south in outside-the-shed when the player is blinded:
	say "You start to head south into your shed, but you manage to miss the door and run into the side of the building." instead.
	
before going south in outside-the-shed:
	try going inside instead.
	
Chapter - Shed Door

The shed-door is a backdrop.  The shed-door is in outside-the-shed and in-the-shed.  The description of shed-door is "The shed door has fallen off it's hinges long ago and you used it for firewood soon after.  You've never bothered to replace it."  Understand "door" as shed-door when the location is outside-the-shed or the location is in-the-shed.

shed-door-first-seen is a truth state that varies.  shed-door-first-seen is false.

Before opening or closing the shed-door:
	say "[described-shed-door]You act like you [verbword] the imaginary door.  You feel better inside.";
	now shed-door-first-seen is true instead.

To say described-shed-door:
	if we have not examined the shed-door and shed-door-first-seen is false:
		say "The shed door has fallen off years ago and you never bothered to replace it.  ".
		
Chapter - Some twigs	

Some twigs is a thing.  The description of some twigs is "[describe-twigs]".  Understand "wood/pile/piles" as some twigs when spider is off-stage and the location is not in-the-shed.  Some twigs are flammable.  
The indefinite article of the twigs is "a small pile of".	

To say describe-twigs:
	if twigs are new:
		say "A few logs....ok maybe just a few twigs and sticks.";
	if twigs are flaming:
		if the smoke is light:
			say "The pile of twigs is burning, but not really putting out much smoke and definitely not reaching the hornet's nest.";
		otherwise if the smoke is heavy:
			say "The pile of twigs and leaves is smoldering putting out a heavy smoke that is engulfing the hornet's nest.";
	if twigs are burnt:	
		say "The remains of your wood, nothing left but lightly smoking ashes."

after doing something with the twigs:
	set the pronoun it to the twigs;
	continue the action.

before taking some twigs:
	if the player is carrying some twigs:
		say "You have enough wood for right now." instead;

after dropping:
	if the noun is the twigs and the location is under-the-tree:
		say "You put the pile of twigs right under the nest.";
	otherwise:
		continue the action.

instead of cutting the twigs:
	say "You break up a few of the twigs into pieces small enough to stand in for toothpicks, but you wisely decide that they may better serve as kindling so you leave the rest intact."

Instead of kicking the twigs:
	if twigs are flaming:
		try kicking the fire instead;
	otherwise:
		say "You kick the twigs scattering them throughout the yard.";
		now the twigs are off-stage.

Chapter - Pile of wood

The woodpile is a supporter. The woodpile is undescribed. The woodpile is fixed in place. The description of woodpile is "You stacked this woodpile here years ago in the misguided thought that you would actually use the [wood-burner] in the house to save on heating costs in the winter.  Well here it still is, neatly stacked."  Understand "wood/pile" as woodpile.  The woodpile is in outside-the-shed.



Before taking woodpile:
	if large spider is on-stage:
		say "As you go to take some of the wood, the large spider turns towards your hand and rears up as if to bite." instead;
	otherwise:
		if the web is on-stage:
			say "You brush the web aside and take a handful of the dry wood.";
			now the player carries some twigs;
			now the web is off-stage instead;
		else if the player is carrying some twigs:
			say "You have enough wood for now." instead;
		if some twigs are flaming:
			say "You have a fire going already and don't want to make too big of one this close to your house." instead;
		otherwise:
			say "You gather some more wood.";
			now the player carries some twigs instead;
			
before putting something on the woodpile:
	if the noun is the horsefly:
		try putting the horsefly on the web-top instead;

before throwing something at the woodpile:
	if the noun is the horsefly:
		try putting the horsefly on the web-top instead;

before throwing something on the woodpile:
	if the noun is the horsefly:
		try putting the horsefly on the web-top instead;

before throwing something onto the woodpile:
	if the noun is the horsefly:
		try putting the horsefly on the web-top instead;

before throwing something into the woodpile:
	if the noun is the horsefly:
		try putting the horsefly on the web-top instead;

instead of cutting the woodpile:
	say "You break up some of the wood into pieces small enough to stand in for toothpicks, but you wisely decide that they may better serve as kindling so you leave the rest intact."


Section - Spider web

The web is a container on the woodpile.  The web is open.  The web is not openable.  The description of web is "A large web covers much of the pile of wood[if spider is on-stage] and in the center is the largest spider you've ever seen[end if]."

The web-top is a supporter.  The web-top is a part of the web.
Instead of attacking the web:
	try attacking the large spider.

instead of kicking the web:
	try kicking the large spider instead.
	
before taking the web:
	if spider is on-stage:
		try taking the spider instead;
	otherwise:
		say "You brush the web aside only to have some of it stick to your hand.  You then spend the next ten minutes trying to get the web off your hand, first transferring it to your shorts, then back to your other hand until you finally manage to wipe most of it off on the ground.";
		now the web is off-stage;
		increase the time of day by 10 minutes instead.


Section - spider	

The large spider is a animal in the web.  The  description of large spider is "The spider is as large as the palm of your hand.  It's black with large yellow streaks.  It sits in the middle of the web waiting for dinner.  It looks hungry."  Understand "spider" as the large spider.
The spider is attackable.

Instead of taking the large spider:
	say "You start to reach for the spider to brush it and its web out of the way, but as your hand approaches, the spider actually turns and rears up at you ready to bite."
	
before kicking the spider:
	say "You kick at the spider, but your foot catches on the edge of the wood and manage to fall rather ungracefully." instead.

Instead of attacking the large spider:
	try taking large spider.

Instead of kissing the spider:
	say "You close your eyes, pucker up and move in for the kiss.  You open them at the last second and see the spider right in your face ready to return your 'kiss' with a bite of it's own.  You quickly retreat and wonder what in the world you were thinking."

before doing anything to the spider when the spider is off-stage:
	say "You know the spider is under this pile of wood somewhere." instead
	
After deciding the scope of the player when location is outside-the-shed and the spider is off-stage: 
	place the spider in scope.
		
				
Part - On the porch

On-the-porch is a room.  on-the-porch is a safe-zone.  The printed name is "[if the player is hiding]Hiding on[otherwise]On[end if] the Porch".  The description is "The front porch is where you spend most of your evenings after work in the summer, sitting on the [porch-swing] and drinking a [beer].  To the east right off the porch is the large tree and to the southeast is your shed."  The on-the-porch is west of under-the-tree and northwest of outside-the-shed.

The porch is a backdrop.  The porch is everywhere.  The description of the porch is "The front porch is large and roomy.  Plenty of space to sit and relax...if it wasn't for those hornets."

Instead of taking the porch:
	say "[one of]The thought had crossed your mind that if you could just move the porch to the back of the house, then you could sit out there free of the hornets.  Alas, if you could you probably would.[or]Moving the porch anywhere just isn't possible.[stopping]".

The porch-swing is a enterable supporter in on-the-porch.  The porch-swing is scenery.  The printed name of porch-swing is "porch swing".  The description of porch-swing is "The porch swing sits in the corner of the porch.  Close enough to the door so it's easy enough to get up and get another beer."
Understand "swing" or "porch swing" or "glider" as porch-swing.

Instead of swinging the porch-swing:
	if the player is on the porch-swing:
		say "You lean back and swing for a bit, but as much as you hoped, the hornets didn't leave on their own.";
	otherwise:
		say "You give the porch swing a soft kick and it rocks back and forth for a bit." 

The beer is a flimsy in on-the-porch. The action-refusal is "You wish you had some beer right now, but you need to keep focused on the task at hand."  The initial appearance of the beer is "Oh trust me, if you had a beer right now, you'd be doing more than just looking at it."

The front door is a flimsy in on-the-porch. "The front door leading into your house, in fact it's the only way into your house and your wife locked the door behind you when you left this morning.  Her exact words were 'Don[']t bother coming back until that nest is gone.'".  The action-refusal is "You told your wife you were not coming in until the nest was gone (actually, she told you that, but you won't admit that out loud, will you?)".

before going inside in on-the-porch:
	try opening the front door instead.

before going up when the player is on the porch-swing:
	if player is on the porch-swing:
		try getting off the porch-swing instead.

Does the player mean entering the porch-swing when the player is in on-the-porch: it is likely.
Does the player mean swinging the porch-swing when the player is in on-the-porch: it is likely.
Does the player mean swinging the porch-swing when the player is on the  porch-swing: it is likely.

Chapter - Shovel

The shovel is a thing.  The description of shovel is "[if the shovel is in on-the-porch and the shovel is not carried by the player]The shovel is handy for cleaning up the dog-doo.  That's why you just leave it laying around on the porch within easy reach.[otherwise]Simple spade wth long wooden handle.  You've only ever used it to clean up the mess the dog leaves in the yard.[end if]"

Understand "spade" as shovel.

	
Part - Up the tree

Up-the-tree is a room.  The printed name is "Up the Tree".  The description is "You are standing near the top of the ladder near the nest.  The hornets are beginning to become aware of your presence and starting to buzz your head.  The only way is down."  Up-the-tree is up from under-the-tree.

Check dropping something while location is up-the-tree:
	say "[The noun] falls to the ground.";
	move the noun to under-the-tree instead;

Chapter - Hornets Nest

The hornets-nest is a container.  It is part of the shade tree.  It is fixed in place. The description is "You see a gigantic hornet's nest hanging from the branch of your shade tree.  [if bug killer is part of the hornets-nest]Stuck in the bottom of the nest is the can of bug spray.[end if][one of]You promised your wife you wouldn't come back until the nest was gone or you wouldn't come back at all.[or][stopping]". The printed name is "hornet's nest".  The indefinite article is "a".  The hornets-nest is attackable.

The burn-reject of the hornets-nest is "The nest is up too high to set on fire without setting the whole tree ablaze."

Understand "hive/hives/nest" or "bee's nest" or "hornets nest" or "hornet's nest" or "hornets' nest" as the hornets-nest.

instead of taking the hornets-nest:
	if location is up-the-tree:
		say "You reach out to grab the nest while balancing precariously on the ladder when the ladder begins to move.  You quickly decide that taking the nest by hand is probably not the brightest thing to do.";
	otherwise:
		say "You stretch on your very tippy toes but you are not tall enough or stretchy enough to reach it from here."

before attacking the hornets-nest:
	say "That wouldn't end pretty." instead.
	
instead of inserting something into the hornets-nest:
	say "You reach out to try and plug the nest with [the noun] but it is too far away to do safely.";
	
instead of touching the hornets-nest:
	if location is up-the-tree:
		say "You reach out to touch the nest, but the hornet's begin to swarm around your hand and you think better of doing that.";
	otherwise:
		say "You are not sure that would be a good idea even if you could reach it from here."
	
instead of kicking the hornets-nest:
	if location is under-the-tree:
		say "You do your best high kick and come nowhere close to making contact with the nest.";	
	otherwise:
		say "You are too far away to even make the attempt.".
		
Instead of cutting the hornets-nest:	
	If location is up-the-tree:
		say "You reach out to cut the nest but you begin to lose your balance as it is too far to reach and being scared of falling from this height you wisely put both hands back on the ladder.";
	otherwise:
		say "The nest is too far away to effectively cut up into little pieces."
		
Chapter - Hornets	

Some hornets are an animal in the hornets-nest. It is plural-named. The printed name is "hornets". The indefinite article is "some".  The description is "[description-of-hornets][if the smoke is on-stage and the smoke is heavy]They appear to be wearing miniature gas masks.[end if]".  The hornets are attackable.
The hornets can be grabbed.

understand "hornet/bee/bees/soldiers/workers" as hornets.

To say description-of-hornets:
	if the hornets are swarming:
		say "The hornets are swarming around the nest, workers headed in and out, soldiers perched on the nest as if expecting a full frontal assault.";
	if the hornets are angry:
		say "The hornets look pissed, more so than usual.  None are going back in the nest, they are steadily pouring out and if you look closely enough, they appear to be readying an all-out assault.";
	if the hornets are aggressive:
		say "Oh boy, you better move it.....they are flying every which way that looks chaotic yet orchestrated at the same time. [if location is under-the-tree]It would be wise to move quickly, they are headed your way[otherwise if location is up-the-tree]They are dive-bombing you in a synchronized pattern that would be strangely beautiful if they weren't out to make you hurt[end if].";
	if the hornets are subdued:
		say "Just a few hornets remain on the outside and even they appear as if they have had enough and are ready to call it a day."

The hornets can be swarming, subdued, angry or aggressive.  The hornets are swarming.

before kicking the hornets:
	try kicking the hornets-nest instead.
	
instead of taking hornets:
	if the location is up-the-tree:
		say "[one of]You swat at a hornet as it buzzes by you and actually manage to snag it between your fingers.  It promptly stings you causing you to shriek and nearly fall from the ladder after which you decide that perhaps catching the hornets won't work as you expected anyway.[or]Having been stung once already you'll refrain from grabbing another hornet as it wasn't a pleasant experience the first time.[stopping]";
		increment the sting-count of the player;
		now the hornets are grabbed;
	otherwise:
		if the hornets are grabbed:
			say "You've been stung once by your foolish desire to hold one so you'll resist the urge this time as you don't want to get stung again.";
		otherwise:
			say "A hornet flies down to buzz your head and you reach out to snag it but luckily you only manage to grab thin air." 
	
Before attacking hornets:
	say "If you tried that, you would regret it." instead.

before kissing the hornets:
	say "Why???   Do you want big red lips?" instead.
	
		
Book - Things

Chapter - Fire

The fire is a container.  The fire-top is a supporter.  The printed name of fire-top is "fire".  The fire-top is part of the fire.  The fire is scenery.
Understand "flame" as fire.

Before inserting something (called the fuel) into the fire:
	try putting the fuel on the fire-top instead.

Before putting something (called the fuel)  on the fire:
	try putting the fuel on the fire-top instead.

Before throwing something (called the fuel) onto fire:
	try putting the fuel on the fire-top instead.	

Before throwing something (called the fuel) into fire:
	try putting the fuel on the fire-top instead.	

Before throwing something (called the fuel)  at fire:
	try putting the fuel on the fire-top instead.	
	
Before putting something on the fire-top:
	if the noun is not flammable:
		say "You could put [the noun] in the fire, but it wouldn't burn." instead;
	otherwise:
		say "here i am" instead.
		
after kicking the fire:
	say "You kick at the fire and manage to put it out.";
	now the fire is off-stage;
	now the smoke is off-stage;
	now the smoke is light;
	now the twigs are new;
	now the twigs are off-stage.
	
	
instead of examining the fire:
	say "The fire is small but hot and [if smoke is light]not putting out much smoke[otherwise]putting out quite a bit of smoke[end if]."


Chapter - Hole

The hole is a fixed in place container.   The description is "The hole isn't very deep, but you think it is big enough for the nest to fit into."

Instead of taking the hole:
	say "Really, did you really just try to pick up the hole?"
	
	
Chapter - Smoke

The smoke is scenery.  The smoke is undescribed.  The smoke can be heavy or light.  The smoke is light.

Instead of doing anything to the smoke: say "The smoke flitters away before you can do that."

instead of kicking the smoke:
	say "You kick at the smoke and your leg passes right through."

Instead of examining the smoke:
	if the smoke is light:
		say "Just a light tendril of smoke streams up from the burning twigs.";
	if the smoke is heavy:
		say "A heavy gray smoke pours out from the burning pile."



Book - Backdrops

Chapter - Tree

The shade tree is a supporter which is in under-the-tree. The tree is scenery. The description is "The large shade tree stands majestically in your front yard.  It is well over fifty feet tall and a hundred years old.  The tree branches spread over the front porch and shade the house from the morning sun.  [if hornets-nest is part of the shade tree]Hanging from a branch is the largest hornet's nest you've ever seen.[end if][if ladder is on the tree] The ladder is leaning against the tree.[end if]".

The think-text of the shade tree is "You wonder how old this tree really is.  It would be a shame to damage it in any way getting the hornets['] out."

The burn-reject of the shade tree is "Burning the tree is a bit overkill to remove the hornets."

understand "branch" as tree when cut branch is not in under-the-tree.
understand "branches" or "branchs" as tree.

after deciding the scope of the player:
	place the tree in scope;

Rule for reaching inside a room:
	if the location is up-the-tree:
		if the noun is the shade tree or the noun is the hornets or the noun is the hornets-nest:
			allow access;
		otherwise:
			say "You can only look at [the noun] from a distance.";
			deny access;
	otherwise:
		if the noun is not scenery:
			say "You can only look at [the second noun] from a distance.";
		otherwise:
			say "You can only look at [the noun] from a distance.";
		deny access.
	
instead of touching the tree:
	say "You affectionately touch the tree."

Before examining tree:
	if location is in-the-shed:
		say "You look out the window and see the tree in front of your house." instead.
		
does the player mean climbing the tree when the player is in under-the-tree: it is very likely.

before climbing the tree:
	try going up instead;
	
instead of taking the tree:
	say "[one of]You think that if you could just move the tree to the other side of the yard your problem will be solved.  You wrap your arms as far as you can around the tree and lift.  Nothing happens except for an inaudible pop that comes from your back.[or]You're back is still sore from your last attempt at moving the large tree, so you'll try to think of some other way to move the nest from the front yard.[stopping]";
	
instead of listening to the tree:
	say "You hear the buzz of the hornets as the fly around the nest."
	
instead of listening:
	if location is under-the-tree:
		try listening to the tree;
	if location is outside-the-shed:
		say "The buzz of the nest in the tree, while lessened here is still the only noise you can hear.";
	if location is in-the-shed:
		if the horsefly is on-stage and the player does not carry the horsefly:
			say "The buzzing of the horsefly in the window drowns out any other noises.";
		otherwise:
			say "Even from within the shed, you can hear the faint sounds of the hornet's nest.";
	if location is on-the-porch:
		say "Though you can't see the nest from here, you can hear it."
		
Instead of looking under the tree:
	say "Throughout the [yard] you see the tree's [roots] that stretch out from its base."
	
Instead of pushing the tree:
	say "You strain against the tree but you fail to budge it."

instead of attacking or kicking the tree:
	say "It's really not the tree's fault [if the hornets-nest is part of the tree]that it has that hornet's nest in there[end if].";


Understand "saw [something]" as cutting.

Instead of cutting the tree:
	if player carries the hand-saw:
		if location is up-the-tree:
			if cut branch is in under-the-tree:
				say "The hornets have built their new nest in a branch too high for you to reach.";
			otherwise:
				say "You take the hand saw and begin to cut through the branch that the hornet's nest is hanging from.  After a moment the branch cracks and falls to the ground taking the nest with it.  You start to raise your arms in triumph, but then remembering you are standing on a ladder, you think better of it and just grin happily to yourself.";
				if the hole is in under-the-tree:
					say "[paragraph break]The nest falls right into the hole.  You clamber down the ladder and quickly fill in the hole covering the nest.  ";
					now the hole is off-stage;
					now the hornets-nest is off-stage;
					now the player is in under-the-tree;
				otherwise:
					say "[paragraph break]As the nest hits the ground, it bursts into pieces and the hornets scatter in all directions.......only to regroup high up in the tree where they hover for a moment, then as if shot from a pistol, head in your direction.";
					now the cut branch is in under-the-tree;
					now the last-puzzle-completed of the player is cut-the-branch;
					hornets attack in 1 turn from now;
				now cut-the-branch is completed;
		otherwise:
			say "Cutting down the entire tree is a bit of overkill, don't you think?";
	otherwise:
		say "You make a cutting motion on the tree with your hand and succeed in nothing more than scraping up your hand.";
		
The bark is a flimsy.  The bark is part of the shade tree.
The roots are a flimsy.  The roots are part of the shade tree.  the action-refusal is  "The roots are pretty necessary to the health of the tree.  You don't want to risk anything."

The yard is a backdrop which is everywhere.  The description is "A large yard and you take care of it as well as you can."

The cut branch is scenery.  The description of cut branch is "The large branch you just cut from the tree is laying on the ground and the remnants of the old nest have scattered in the light breeze."  

instead of taking the cut branch:
	say "It is much too heavy.";

[instead of doing anything with the cut branch:
	say "It is much too heavy."]

Chapter - Sun

The sun is a backdrop which is everywhere.  The description of the sun is "You start to stare at the sun, but realize that is probably why your eye sight is not so good anymore.  It's very bright and very hot."

instead of kicking the sun:
	say "Really??"

Chapter - House

The house is a backdrop which is everywhere.  The description of the house is "Your century old farm house sits in the middle of your farm.  It's old, it's got its problems....but it's home."  Understand "farm house" or "century old farm house" or "old farm house" or "home/farm/farmhouse" as house.

Chapter - Shed

The shed is a backdrop which is everywhere.  The description of the shed is "The tool shed was built back in the 1860s and is falling down, however it[']s close to the house, easy to get to and large enough to store just about anything you need around the yard."

before entering shed:
	say "You wander off to the shed.";
	now the player is in in-the-shed instead.


	

Chapter - wood-burner

The wood-burner is a backdrop which is everywhere.  The description of wood-burner is "The wood burner was in the house when you bought it and you thought for sure you would use it every winter.  Then came that first year of chopping wood....that was too much like work, so you stacked that little pile by the shed and never thought about it again."  Understand "woodburner/burner" or "wood burner" as wood-burner.


Volume - Scenes

Book - Puzzles

Requesting puzzle status is an action out of world.
Report requesting puzzle status: 
	repeat with puzzle-status running through all running puzzles:
		say "[puzzle-status] is now running.";
	repeat with puzzle-status running through all active uncompleted puzzles:
		say "[puzzle-status] is active.";
	repeat with puzzle-status running through all uncompleted inactive puzzles:
		say "[puzzle-status] is not completed.";
	repeat with puzzle-status running through all completed puzzles:
		say "[puzzle-status] is completed.";
	repeat with puzzle-status running through all impossible puzzles:
		say "[puzzle-status] is now impossible.";
	if the last-puzzle-completed of the player is not no-puzzle:
		say "The last completed puzzle is [last-puzzle-completed of the player].";
	say "Not completed: [number of uncompleted inactive puzzles].";
	say "Active: [number of active uncompleted puzzles].";
	say "Running: [number of running puzzles].";

Understand "puzzles" as requesting puzzle status.

A puzzle is a kind of thing.  A puzzle is always undescribed.  A puzzle can be completed, uncompleted, running, default or impossible.  A puzzle is usually uncompleted.   A puzzle can be active or inactive.  A puzzle are usually inactive.
A puzzle has some text called end-text. The end-text is usually "".

The player has a puzzle called last-puzzle-completed.  The last-puzzle-completed of the player is usually no-puzzle.

no-puzzle is a default puzzle.
spray-the-nest is a puzzle.  The printed name of spray-the-nest is "spraying the nest with bug spray".  The end-text of spray-the-nest is "Well that didn't work too well.  [bug-killer-drop-description][line break]".
smoke-the-nest is a puzzle.  The printed name of smoke-the-nest is "using heavy smoke to remove the hornets".
cut-the-branch is a puzzle.  The printed name of cut-the-branch is "cutting the branch the nest is on out of the tree".
fire-the-missle is a puzzle.  The printed name of fire-the-missle is "blowing up the can of spray".

[puzzle activation rules]
Every turn:
[	if build-a-fire is uncompleted and build-a-fire is not impossible:
		if twigs are on-stage:
			now build-a-fire is active;
		otherwise:
			now build-a-fire is inactive;]
	if spray-the-nest is uncompleted and spray-the-nest is not impossible:
		if bug killer is not empty and the player carries the bug killer:
			now spray-the-nest is active;
		otherwise:
			now spray-the-nest is inactive;
	if smoke-the-nest is uncompleted:
		if the twigs are flaming:
			now smoke-the-nest is active;
		otherwise:
			now smoke-the-nest is inactive;
	if cut-the-branch is uncompleted:
		if the player carries the hand-saw:
			now cut-the-branch is active;
		otherwise:
			now cut-the-branch is inactive;
	if fire-the-missle is uncompleted:
		if the the player carries the bug killer and the twigs are on-stage:
			now fire-the-missle is active;
		otherwise:
			now fire-the-missle is inactive;
	if fire-the-missle is completed:
		if spray-the-nest is uncompleted:
			now spray-the-nest is impossible.

Book - Recurring events

Part  - Flame goes out

at the time when the flame goes out:
	if location is under-the-tree:
		say "You notice that your fire has gone out.";
	otherwise:	
		now fire-is-out is true;
	now the fire is off-stage;
	now the smoke is off-stage;
	now the smoke is light;
	now the twigs are new;
	now the twigs are off-stage.

Part - Hornets Attack

at the time when the hornets attack:
	if location is up-the-tree or location is under-the-tree:
		if the last-puzzle-completed of the player is fire-the-missle:
			say "With the can stuck in the opening of the nest, the nest begins to expand as the hornets attempt to escape.  Finally in a large explosion of pieces of nest and angry hornets, they escape and begin to swarm around you aggressively.  You[if location is up-the-tree] jump out of the tree and[end if] run around screaming wildly.[paragraph break]";
		otherwise:
			say "The hornets swarm around you aggressively, diving in and trying to penetrate through the wall of your flailing arms.  You[if location is up-the-tree] jump out of the tree and[end if] run around screaming wildly.[paragraph break]";
		now the player is hiding;
		now the hornets are aggressive;
		now the player is in a random safe-zone room;
		if the end-text of the last-puzzle-completed of the player is not "":
			say "[end-text of the last-puzzle-completed of the player]";
		suggest next puzzle;
		Hornets calm down in two turns from now.

to suggest next puzzle:
	if spray-the-nest is uncompleted and spray-the-nest is not impossible:
		suggest spray the nest;
	else if smoke-the-nest is uncompleted and smoke-the-nest is not impossible:
		suggest smoke the nest;


to suggest smoke the nest:
	say "As you look on in disbelief, a thought comes to you: hornets don't like smoke.  Why don't you try smoking them out?".

to suggest spray the nest:
	if player carries bug killer:
		say "Perhaps that bug spray you're carrying will be of some help.";
	else:
		if bug killer is on-stage:
			say "You think you saw some bug spray around here somewhere.";
		else:
			say "Perhaps there is something to be found in the shed."

at the time when the hornets calm down:
	now the hornets are swarming;
	if the last-puzzle-completed of the player is cut-the-branch:
		say "Amazingly as you look back at the tree, the hornets are swarming wildly around another branch.  Their activity grows in intensity and soon you can see nothing but a large mass of hornets all moving together.  [paragraph break]After a few moments, the activity ceases, most of the hornets retreat into a new nest that is now hanging from another branch.";


to say bug-killer-drop-description:
	say "You throw the can away in disgust and as it bounces off [if location is in-the-shed]the wall[otherwise if location is on-the-porch]the porch floor[end if] it hits square on the nozzle, which promptly breaks off and a long spray comes out until now the can is now truly empty." ;
	now the printed name of the bug killer is "[if bug killer is empty]now empty [end if]bug spray";
	if player carries bug killer:
		silently try dropping bug killer;
		
to say clue-next-puzzle:
	if spray-the-nest is uncompleted:
		say "test 1";
	else if smoke-the-nest is uncompleted:
		say "As you look on in disbelief, a thought comes to you: hornets don't like smoke.  Why don't you try smoking them out.[line break][line break]";
	else if cut-the-branch is uncompleted:
		say "As you pause to catch your breath, you wonder what to do.   Maybe if you try cutting it down, they'll just pick up and leave."
		
	
Book - Aggressive Hornets

Aggressive-hornets is a recurring scene.   Aggressive-hornets begins when hornets are aggressive.  Aggressive-hornets ends when hornets are not aggressive.

When aggressive-hornets ends:
	say "The hornets seemed to have settled down a bit."

Every turn while aggressive-hornets is happening:
	if location is under-the-tree:
		say "As soon as you walk back under the tree the hornets seem to take notice of you again.  The reform into a tight group and launch an attack.  You hastily retreat back to where you came.";
		try retreating;
	if location is up-the-tree:
		do nothing;
	otherwise:
		say "[one of]From here you can hear the angry buzz of the hornets.[or]You can see the hornets swarming as if looking for something to sting.[or]You must have really made them mad this time.[or]Occasionally a hornet seems to locate you.  It buzzes your head and you manage to swat it away before it does much damage.  It flies back towards the nest....you hope it doesn't bring back friends.[then at random]".




Book - Exploding Can

Exploding Can is a scene.  Exploding Can begins when fire-the-missle is running.  Exploding Can ends when fire-the-missle is completed.
When exploding can begins:
	say "The can sits in the fire for a few moments and then it starts to turn a hot red as it heats up.  As the sides of the can start to bulge out at the center, you quickly decide it's time to hide behind the tree.  Just as you retreat behind the tree, you hear a large explosion and you hit the ground.  You hear a whistle as the exploded can flies towards the nest hitting it right in the bottom, plugging up the entrance to the nest.";
	now the last-puzzle-completed of the player is fire-the-missle;
	now fire-the-missle is completed;
	hornets attack in 1 turn from now;
	now the bug killer is a part of the hornets-nest;
	
	




	
Book - Smoking them out

Smoking-them-out is a scene.  Smoking-them-out begins when smoke is heavy.  Smoking-them-out ends when smoke-the-nest is completed.	

When smoking-them-out begins:
	say "As the smoke rises it slowly begins to engulf the nest.  At first the hornets look confused as they their activity increases slightly, then suddenly they all retreat back into the nest.  Now the smoke is so heavy that you can't make out the nest at all.  You are feeling a little bit proud of yourself as you figure this will be the end of them all.
	
What is that noise?  You hear a faint buzz coming from the tree.  Looking up, the smoke begins to clear and you see a mass of hornets around the entrance to the nest.  Just as you see them, they see you and attack.

As they begin to swarm around your head, you notice there is something different about them.... they are now wearing miniature gas masks.";
	now the last-puzzle-completed of the player is smoke-the-nest;
	hornets attack in 0 turn from now;
	now smoke-the-nest is completed;
	

Book - Scene - Running the Game 

Running-the-game is a scene.  running-the-game begins when play begins.  
Running-the-game ends when the number of uncompleted inactive puzzles is 0 and the number of active uncompleted puzzles is 0 and the number of running puzzles is 0 and aggressive-hornets is not happening:

When running-the-game ends:
	end the story saying "Here ends the intro to Hornet's Nest.  I hope you enjoyed this introduction to this piece.  I plan to add more ways to try and achieve your goal of removing the nest from the tree.  [para]You've managed to annoy the hornets in the following ways: [list of completed puzzles].";
	





Volume - Hints


[Part 1 - Hint Tables

Table of Potential Hints (continued)
title	subtable
"What do I do to get started?"	Table of Getting Started Hints
"What can I do in the Shed?"	Table of Shed Hints

Table of Getting Started Hints
hint	used
"Try exploring a bit."	a number
"Then trying exploring a bit more."
"Have you explored enough yet?"
"OK, find your way to the shed."

Table of Shed Hints
hint	used
"Search it thoroughly."
"What did you find?"
"Perhaps that tall cabinet is worth investigating."

A hint deactivation rule:
	if the number of visited rooms is the number of rooms - 1,
		deactivate the Table of Getting Started Hints.


Understand "help" as asking for hints.
When play begins: activate the Table of Getting Started Hints.]



Volume - Looking from Supplemental Actions by Al Golden

looking north is an action applying to nothing.
looking south is an action applying to nothing.
looking east is an action applying to nothing.
looking west is an action applying to nothing.
looking northeast is an action applying to nothing.
looking northwest is an action applying to nothing.
looking southeast is an action applying to nothing.
looking southwest is an action applying to nothing.
looking up is an action applying to nothing.
looking down is an action applying to nothing.

understand "look north" or "look n" as looking north.
understand "look south" or "look s" as looking south.
understand "look east" or "look e" as looking east.
understand "look west" or "look w" as looking west.
understand "look northeast" or "look ne" as looking northeast.
understand "look northwest" or "look nw" as looking northwest.
understand "look southeast" or "look se" as looking southeast.
understand "look southwest" or "look sw" as looking southwest.
understand "look up" or "l u" or "lu" as looking up.
understand "look down" or "l d" or "ld" as looking down.

report looking north
(this is the looking north rule):
say "You can't look to the north."

report looking south
(this is the looking south rule):
say "You can't look to the south."

report looking east
(this is the looking east rule):
say "You can't look to the east."

report looking west
(this is the looking west rule):
say "You can't look to the west."

report looking northeast
(this is the looking northeast rule):
say "You can't look to the northeast."

report looking northwest
(this is the looking northwest rule):
say "You can't look to the northwest."

report looking southeast:
say "You can't look to the southeast."

report looking southwest:
say "You can't look to the southwest."

report looking up
(this is the looking up rule):
say "You can't look up.".

report looking down
(this is the looking down rule):
say "You can't look down.".


Volume - Throwing from Supplemental Actions by Al Golden

To say verbword: (- print (address) verb_word; -).

understand the command "throw" as something new.

throwing is an action applying to one thing.
understand "chuck [things]" as throwing. 
understand "heave [things]" as throwing. 
understand "throw [things]" as throwing.
understand "toss [things]" as throwing.
understand "hurl [things]" as throwing. 
understand "pitch [things]" as throwing.

understand "throw [something] at [something]" as throwing it at.
understand "chuck [things] at[something]" as throwing it at.
understand "heave [things] at [something]" as throwing it at.
understand "throw [things] at [something]" as throwing it at. 
understand "toss [things] at [something]" as throwing it at.
understand "hurl [things] at[something]" as throwing it at.
understand "pitch [things] at [something]" as throwing it at.

throwing it into is an action applying to two things.
understand "chuck [things] in/into [something]" as throwing it into. 
understand "heave [things] in/into [something]" as throwing it into. 
understand "throw [things] in/into [something]" as throwing it into. 
understand "toss [things] in/into [something]" as throwing it into. 
understand "hurl [things] in/into [something]" as throwing it into. 
understand "pitch [things] in/into [something]" as throwing it into.

throwing it onto is an action applying to two things. 
understand "chuck [things] on/onto [something]" as throwing it onto.
understand "heave [things] on/onto [something]" as throwing it onto. 
understand "throw [things] on/onto [something]" as throwing it onto. 
understand "toss [things] on/onto [something]" as throwing it onto. 
understand "hurl [things] on/onto [something]" as throwing it onto. 
understand "pitch [things] on/onto [something]" as throwing it onto.

throwing it down is an action applying to two things.
understand "chuck [things] down [something]" as throwing it down. 
understand "throw [things] down [something]" as throwing it down. 
understand "heave [things] down [something]" as throwing it down. 
understand "toss [things] down [something]" as throwing it down. 
understand "hurl [things] down [something]" as throwing it down.
understand "pitch [things] down [something]" as throwing it down.

throwing it off is an action applying to two things.
understand "chuck [things] off [something]" as throwing it off. 
understand "heave [things] off [something]" as throwing it off. 
understand "throw [things] off [something]" as throwing it off. 
understand "toss [things] off [something]" as throwing it off. 
understand "hurl [things] off [something]" as throwing it off.
understand "pitch [things] off [something]" as throwing it off.

throwing it out of is an action applying to two things.
understand "chuck [things] out/out of [something]" as throwing it out of. 
understand "heave [things] out/out of [something]" as throwing it out of. 
understand "throw [things] out/out of [something]" as throwing it out of. 
understand "toss [things] out/out of [something]" as throwing it out of. 
understand "hurl [things] out/out of [something]" as throwing it out of.
understand "pitch [things] out/ouf of [something]" as throwing it out of.

throwing it over is an action applying to two things.
understand "chuck [things] over [something]" as throwing it over. 
understand "throw [things] over [something]" as throwing it over. 
understand "heave [things] over [something]" as throwing it over. 
understand "toss [things] over [something]" as throwing it over. 
understand "hurl [things] over [something]" as throwing it over. 
understand "pitch [things] over [something]" as throwing it over. 

throwing it under is an action applying to two things.
understand "chuck [things] under [something]" as throwing it under. 
understand "throw [things] under [something]" as throwing it under. 
understand "heave [things] under [something]" as throwing it under. 
understand "toss [things] under [something]" as throwing it under. 
understand "hurl [things] under [something]" as throwing it under. 
understand "pitch [things] under [something]" as throwing it under. 

throwing it through is an action applying to two things.
understand "chuck [things] through [something]" as throwing it through. 
understand "throw [things] through [something]" as throwing it through. 
understand "heave [things] through [something]" as throwing it through. 
understand "toss [things] through [something]" as throwing it through. 
understand "hurl [things] through [something]" as throwing it through.
understand "pitch [things] through [something]" as throwing it through.

check throwing something at a second noun (this is the can't throw what you don't have rule):
	if the noun is not carried by the player,
		say "You don't have [the noun]." instead.

report throwing something at a second noun (this is the throwing something at something rule):
	say "You can't [verbword] [the noun] at [the second noun]."

report throwing something on a second noun (this is the throwing something on something rule):
	say "You can't [verbword] [the noun] on [the second noun]."

report throwing something (this is the throwing rule):
	say "You can't throw [the noun].".

report throwing something into something (this is the throwing something into something rule) :
	say "You can't [verbword] [the noun] into [the second noun].".

report throwing something off a second noun (this is the throwing something off something rule) :
	say "You can't [verbword] [the noun] off [the second noun].". 

report throwing something over something (this is the throwing something over something rule) :
	say "You can't [verbword] [the noun] over [the second noun].". 

report throwing something under a second noun (this is the throwing something under something rule) :
	say "You can't [verbword] [the noun] under [the second noun].". 

report throwing something down a second noun (this is the throwing something down something rule) :
	say "You can't [verbword] [the noun] down [the second noun].". 

report throwing something through a second noun (this is the throwing something through something rule) :
	say "You can't [verbword] [the noun]through [the second noun].". 

report throwing something out of a second noun (this is the throwing something out of something rule) :
	say "You can't [verbword] [the noun] out of [the second noun]."


Volume - Testing & Debugging

Book - Test commands - Not for release
	 
Book - Tests - Not for release

test spray with "s/in/take ladder/search shelf/take can/out/n/lean ladder on tree/u/spray/z/z".
test wood with "test spray/s/catch fly/n/throw fly in web/get wood".
test fire with "test wood/n/drop wood/take leaves/burn wood with glasses/drop leaves on fire".
test cut with "test fire/s/in/take saw/n/n/climb ladder/cut tree/d/z/n".
test rocket with "s/in/search junk/take can/take fly/n/give fly to spider/take wood/n/drop wood/burn wood with glasses/put can in fire".
