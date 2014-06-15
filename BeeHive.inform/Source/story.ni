"Hornets Nest" by Jason Lautzenheiser

Use scoring and full-length room descriptions. 
Use American dialect.

Volume - Bibliography

The story genre is "Comedy".
The story headline is "An Interactive Experience in Pest Removal".
The story description is "You weren't going to let the hornet's nest in the shade tree out front stop you from enjoying your summer."
The release number is 1.
The story creation year is 2014.

Volume - Extensions

Include Small Kindnesses by Aaron Reed.
[Include Adaptive Hints by Eric Eve.]

Book  - Not for release

[Include Object Response Tests by Juhana Leinonen.
Include Property Checking by Emily Short.
Include Debugging by Al Golden.
Include Basic Screen Effects by Emily Short.
]

Volume - Testing & Debugging

Book - Test commands

 	 
Book - Tests

test spray with "s/in/take ladder/search shelf/take can/out/n/lean ladder on tree/u/spray/z/z".
test wood with "test spray/s/catch fly/n/throw fly in web/get wood".
test fire with "test wood/n/drop wood/take leaves/burn wood with glasses/drop leaves on fire".
test cut with "test fire/s/in/take saw/n/n/climb ladder/cut tree/d/se/z/n".

Book - Transcripting

Include Basic Screen Effects by Emily Short.

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
	
	
Volume - Game Settings

[The describe what's on scenery supporters in room descriptions rule is not listed in any rulebook.]

Abouting is an action out of world applying to nothing.
Understand "about" as abouting.
Understand the command "credits" or "info" as "about".

Report abouting:
	say "[italic type][Story title][roman type] is copyright © 2014 by Jason Lautzenheiser (jlautz@sssnet.com or visit by blog at http://lautzofif.wordpress.com/). It may be distributed for free, but not sold or included in any for-profit collection without written permission from the author.[paragraph break]";

Book - Uberstart

The uberstart rules are a rulebook.
After printing the banner text, say "Copyright © 2014, Jason Lautzenheiser."
The time of day is 6:05 AM.

When play begins:
	follow the uberstart rules.
	
An uberstart rule:
	now the left hand status line is "[the player's surroundings]/[number of uncompleted puzzles]";
	now the right hand status line is "Time: [time of day]";
	

Book - Rules

Rule for printing room description details: stop.


Book - Definitions

A room can be a safe-zone.
A thing can be lost or found.  A thing is usually found.
A thing can be flammable or impervious. A thing is usually impervious.
A thing can be throwable.
Flame-state is a kind of value. The flame-states are burnt, flaming, and new. Understand "burning" or "lit" as flaming.   A thing has a flame-state.  A thing is usually new.

Chapter - Flimsy

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

Book - Easter Eggs

understand "xyzzy" as a mistake("You face the tree and wave your fingers at the nest while chanting 'xyzzy, xyzzy, xyzzy ....' Nothing happens.").

[Understand "* [text]" as a mistake ("Noted.").]


Book - Nouns

Chapter - Player Character

Myself is a male person.  The player is myself.  
The description of the player is "You're a third generation farmer who is.....no not really, you bought this old farm house because it was falling down and you got it and the land cheap."

A person can be hiding or not-hiding.

Check going when the player is hiding:
	now the player is not-hiding.

The player is wearing reading glasses, t-shirt, jean shorts and baseball cap.


Book - Verbs

Part - New actions

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
			say "You shake your enitire body like a dog climbing out of the water, but the hornets don't seem impressed.";
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
		say "You try to put [the noun] on the tree, but it won't stay."

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
understand "spray [something]" as spraying it with.
understand "spray" as spraying it with.

Rule for supplying a missing second noun while spraying:
	now the second noun is the bug killer.
	
Rule for supplying a missing noun while spraying:
	now the noun is the hornets-nest.
	
Check spraying:
	if the second noun is not the bug killer , say "You could try spraying it with [the second noun] but I don't think you would be very successful."
	
Before spraying when the second noun is bug killer:
	if bug killer is empty:
		say "Well it's empty now,  spraying it won't help much now." instead.

Carry out spraying:
	if player is carrying the bug killer:
		if location is under-the-tree:	
			now the bug killer is half-full;
			now the hornets are angry;
			say "You take careful aim....and spray.....and the stream falls a foot short of the nest.  You take a second look at the can and see it says, 'Sprays up to 8 feet!'...well crap, I've got to get closer.[paragraph break]You shake the can one more time and you seem to have just a little left." instead;
		if location is up-the-tree:
			say "You are close enough now, there is no way you'll miss.  You'll have these damn hornets out of your hair in no time.  You shake the can one last time, more of a nervous habit than out of necessity, take careful aim.....and spray....[paragraph break]";
			now the bug killer is empty;
			say "...you shake the can and look at it in horror as just a little spray dribbles out ....just enough to grab the hornets' attention and they begin to mass an attack.";
			hornets attack in 1 turn from now;
			now spray-the-nest is completed;
			now the last-puzzle-completed of the player is spray-the-nest;
		otherwise:
			say "There is not much left, you probably don't want to waste it." instead;
	otherwise:
		say "You have nothing to spray with."
	
Chapter - counting

Counting is an action applying to one visible thing.  Understand "count [something]" as counting.

Check counting:
	if the noun is hornets:
		say "You watch the hornets for a bit as they swarm in and out of the nest.  It's hard to be sure, but you think there are 69,105 hornets." instead.
		
Carry out counting:
	say "Sure....maybe later."
	
Understand "count blessings" or "count your blessings" or "count my blessings" as a mistake("Well for one you haven't been stung yet...")

Part - Old Actions

Chapter - Throwing

[Get rid of those few rules I don't need]
The futile to throw things at inanimate objects rule is not listed in the check throwing it at rules.
The block throwing at rule is not listed in the check throwing it at rules.

Check throwing it at (this is the block juggling rule): 
	if the player is carrying the second noun, say "It would be difficult to throw at something you are yourself holding." instead.
	
Check throwing it at (this is the avoid throwing things into themselves rule): 
	if the second noun is within the noun, say "That would be a neat trick." instead.	


Understand "throw [something] in [something]" as throwing it at.

Check throwing:
	say "[noun] - [second noun]";
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
			now ladder is on the tree;
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

Understand the commands "light" and "burn" as something new.	

Understand "burn [something] with [something preferably held]" as burning it with. 
Burning it with is an action applying to one thing and one carried thing.
Understand the command "light" as "burn".

Before printing the name of something flaming: 
	say "flaming ".
	
Check burning something with something:  
	if the second noun is not reading glasses, say "You can't start a fire with [the second noun]." instead; 
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
		say "You can't set [the noun] on fire." instead;
	
Carry out burning something with something:
	say "You take off your glasses and hold them at just the right angle so the sunlight makes a pinpoint on [the noun].  After a few moments a small stream of smoke rises from [the noun] and then suddenly a flame appears.";
	now the noun is off-stage;
	now the fire is on-stage;
	now the smoke is on-stage.
	
Before taking something that is flaming:
	say "It's way to hot to carry around." instead.

The fire is a container.  The fire-top is a supporter.  The fire-top is part of the fire.  The fire is scenery.
	
Volume - The World

Book - Rooms

Part - Under the Tree

Under-the-tree is a room.  The printed name is "Under the Tree".   The description is "You are standing under the large shade tree in the front yard.  The tree provides wonderous shade during the summer months that you take advantage of whenever you can.  However, now as fall is in full swing and winter is approaching, the leaves are beginning to fall and pile up under the tree.  The leaves are becoming sparse in the tree[if the hornets-nest is part of the tree] and you can see a hornet's nest about ten feet up on a branch[end if].  [if pile of ashes is on-stage]There is a pile of ashes under the tree.  [end if]To the south is your ancient utility shed where you store all the essentials.  You can go west to get on your porch.  [other-stuff-in-area]".

To say other-stuff-in-area:
	let need_period be false;
	if ladder is on tree:
		now need_period is true;
		say  "Your ladder is leaning up against the tree";
	if cut branch is in under-the-tree:
		now need_period is true;
		if ladder is on tree:
			say " and  the";
		otherwise:
			say "The ";
		say "branch you just cut is laying on the ground";
	if need_period is true:
		say ".".
		
Before going up from under-the-tree:
	if the player is carrying ladder:
		try leaning ladder on tree;
	if ladder is not on the tree:
		say " You never were much of a tree climber.  Besides it wouldn't be pretty if the bees attack while you were trying to pull yourself up the tree." instead.
	

Part - In the shed

In-the-shed is a room.  In-the-shed is a safe-zone. The printed name is "[if the player is hiding]Hiding in[otherwise]In[end if] the Shed".  The description is "You're inside your shed.  It is a complete mess.  There is a dirty window in the north wall that looks back towards your front yard and a shelf covered in junk just inside the doorway.[if the bug killer is found and the bug killer is on the shelf]  On the shelf is a can of bug killer.[end if]  [describe-the-hand-saw]".  In-the-shed is inside from outside-the-shed.  

before going north in in-the-shed:
	try exiting instead;

A dirty window is in in-the-shed.  The dirty window is scenery. The description of the dirty window is "The window is covered in cobwebs and dust.  It doesn't look like it's been cleaned for decades, if ever.  [if horsefly is in in-the-shed]In the corner of the window is a large horsefly, buzzing up against the window trying to get out.[end if]"

Before opening the window:
	say "The window probably hasn't been opened in a hundred years. It's not going to happen now." instead.

Before attacking the window when the location is in-the-shed:
	say "You wouldn't want to break the window, you'd just have to replace it." instead.

A shelf is scenery supporter in in-the-shed.  The description of the shelf is "The shelf is just inside the door and looks to be where things were just thrown.  There is piles of junk on it."

Junk is scenery in in-the-shed.  

Before examining junk:
	try examining shelf instead.

Before searching junk:
	try searching shelf instead.

before overly elaborate looking:
	try searching the location instead.
	
Before searching while location is in-the-shed:
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
	say "As you rummage through the junk on the shelf, you notice a can of bug killer that must have been thrown up there years ago.";
	move the bug killer to the shelf;
	now the bug killer is found instead.
	
	

Part - Outside the shed

Outside-the-shed is a room.   The printed name is "[if the player is hiding]Hiding outside[otherwise]Outside[end if] the Shed".  The description is "Your utility shed was built back in the 1860s and is falling down.  However it[']s close to the house, easy to get to and large enough to store just about anything you need around the yard.  [if woodpile is on-stage]Stacked to one side of the shed is a [woodpile].[end if] [if ladder is on the shed]The ladder is leaning against the shed.[end if]".  Outside-the-shed is south of under-the-tree and southeast of on-the-porch.

before of going south in outside-the-shed:
	try going inside instead.
	

Part - On the porch

On-the-porch is a room.  on-the-porch is a safe-zone.  The printed name is "[if the player is hiding]Hiding on[otherwise]On[end if] the Porch".  The description is "The front porch is where you spend most of your evenings after work in the summer, sitting on the glider and drinking a beer."  The on-the-porch is west of under-the-tree and northwest of outside-the-shed.

The glider is a enterable supporter in on-the-porch.  The glider is scenery.  The description of glider is "The glider sits in the corner of the porch.  Close enough to the door so it's easy enough to get up and get another beer."

Instead of swinging the glider:
	if the player is on the glider:
		say "You lean back and swing for a bit, but as much as you hoped, the hornets didn't leave on their own.";
	otherwise:
		say "You give the glider a soft kick and it rocks back and forth for a bit."

The beer is a flimsy in on-the-porch. The action-refusal is "You wish you had some beer right now, but you need to keep focused on the task at hand."

before going up when the player is on the glider:
	if player is on the glider:
		try getting off the glider instead.

Does the player mean entering the glider when the player is in on-the-porch: it is likely.
Does the player mean swinging the glider when the player is in on-the-porch: it is likely.
Does the player mean swinging the glider when the player is on the glider: it is likely.



Part - Up the tree

Up-the-tree is a room.  The printed name is "Up the Tree".  The description is "You are standing near the top of the ladder near the nest.  The hornets are beginning to become aware of your presence and starting to buzz your head."  Up-the-tree is up from under-the-tree.

Check dropping something while location is up-the-tree:
	say "[The noun] falls to the ground.";
	move the noun to under-the-tree instead;
	
Book - Things

Part - Carried items

Chapter - Bug Killer

The bug killer is a thing.  The description of bug killer is "The can of bug killer has been laying in the shed for a number of years." The indefinite article of bug killer is "a can of".  understand "can" as bug killer.  
The bug killer is either empty, half-full or full.  The bug killer is full.
The bug killer is either shaken or settled.  The bug killer is settled.
The bug killer is lost.

Before putting the bug killer on the fire-top:
	if the player is carrying the bug killer:
		now fire-the-missle is running instead.

Before inserting the bug killer into the fire:
	try putting the bug killer on the fire-top instead.

Before putting the bug killer on the fire:
	try putting the bug killer on the fire-top instead.

Before throwing bug killer at fire:
	try putting the bug killer on the fire-top instead.	
	
	
Chapter - Hand saw	

The hand-saw is an undescribed thing in in-the-shed.  The printed name of hand-saw is "hand saw".  Understand "saw/handsaw" as hand-saw.  
The description of hand-saw is "Nope you didn't use this much either.  The saw is new and shiny." 	
The hand-saw can be hanging.  The hand-saw is hanging.  

Check taking the hand-saw for the first time:
	now the hand-saw is not hanging.
	
Rule for deciding whether all includes the hand-saw: it does.
	
	
	
	
Chapter - Shovel

The shovel is a thing in on-the-porch.  The description of shovel is "The shovel is handy for cleaning up the dog-doo.  That's why you just leave it laying around on the porch within easy reach."
	
Chapter - Ladder

A ladder is a thing.  A ladder is in in-the-shed.  The description is "It's a cheap aluminum step ladder your Dad gave you for a house warming gift when you moved in twenty years ago[one of][if location is in-the-shed and player is not carrying the ladder] is still laying where you left it.....oh....twenty years ago[end if][or][stopping]."

Before climbing the ladder:
	if location is under-the-tree:
		if the ladder is on the tree:
			say "You climb as quietly as possible up the ladder until you are just a few feet away from the nest.  The hornets didn't see you coming, but now a few start to buzz around your head.";
		otherwise:
			try leaning the ladder on the tree;
		try going up instead.

Instead of putting the ladder on something (called the leaned-on):
	try leaning the ladder on the leaned-on instead.
	
The describe what's on scenery supporters in room descriptions rule is not listed in any rulebook.

	
Chapter - Reading glasses

The reading glasses are a wearable thing.  The description of reading glasses is "A pair of very thick glasses, you like to call them reading glasses, but in fact you're quite blind without them on."	Understand "spectacles" as reading glasses.

Chapter - Baseball cap

The baseball cap is a wearable thing.  The description of baseball cap is "You never really liked baseball, but this hat is very comfortable and it conveniently hides your slightly balding head." The indefinite article is "a".   Understand "hat" as baseball cap.

Instead of dropping the baseball cap, say "You're pretty self-conscious about your hair, or lack of, so you'll just keep it on."
Instead of taking off the baseball cap:
	try dropping the baseball cap instead.
	
Chapter - Jean shorts

The jean shorts is a wearable thing.  The description of jean shorts is "Your wife always is always trying to throw these shorts out...she says they are too tight on you.  I don't know what she's talking about, these are so well broken in they feel like wearing nothing at all." The indefinite article is "some".   Understand "pants/trousers/bottoms" as jean shorts

Instead of dropping the shorts, say "Even though they feel like you're wearing nothing, they really do serve a purpose....let's not expose your no-no places."

Instead of taking off the jean shorts:
	try dropping the jean shorts instead.
	
Chapter - T-shirt

The t-shirt is a wearable thing.  The description of the t-shirt is "Just a plain white t-shirt, nothing fancy." The indefinite article is "a". 
Understand "tshirt/shirt/tee/tee-shirt/teeshirt" as t-shirt.
Instead of dropping the t-shirt, say "You decide to keep your six-pack covered."
Instead of taking off the t-shirt:
	try dropping the t-shirt instead.

Chapter - Some wood	

Some twigs is a thing.  The description of some twigs is "[describe-twigs]".  Understand "wood" as some twigs when spider is off-stage.  Some twigs are flammable.  
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
		


Chapter - Pile of ashes

The pile of ashes is a fixed in place flimsy.  "Just the remains of your wood, now just a pile of grey ashes."  The pile of ashes is described.  Pile of ashes is plural-named.   


Part - Scenery

Chapter - Leaves

Some leaves are in under-the-tree.  The leaves are undescribed.  The description of the leaves is "The leaves are starting to come down and cover the ground around the tree.  Every step you take results in a crunch of dried leaves under your feet."


After taking leaves:
	say "You gather up a handful of leaves, but there are still plenty left to clean up."
	
Instead of counting leaves:
	say "There are exactly 69,105 leaves...somehow that doesn't surprise you.";

instead of putting the leaves on the twigs:
	if twigs are flaming:
		say "You toss the leaves onto the fire and the smoke begins to build until a dark gray cloud begins to lift from the ground up into the tree.";
		now leaves are off-stage;
		now the smoke is heavy instead;
	otherwise:
		say "Tossing the leaves on the twigs would not serve any purpose right now."
			
Chapter - Hole

The hole is a fixed in place container.   The description is "The hole isn't very deep, but you think it is big enough for the nest to fit into."

Instead of taking the hole:
	say "Really, did you really just try to pick up the hole?"
	
	
Chapter - Smoke

The smoke is scenery.  The smoke is undescribed.  The smoke can be heavy or light.  The smoke is light.

Instead of doing anything to the smoke: say "The smoke flitters away before you can do that."

Instead of examining the smoke:
	if the smoke is light:
		say "Just a light tendril of smoke streams up from the burning twigs.";
	if the smoke is heavy:
		say "A heavy gray smoke pours out from the burning pile."


Chapter - Hornets Nest

The hornets-nest is a container.  It is part of the shade tree.  It is fixed in place. The description is "You see a gigantic hornet's nest hanging from the branch of your shade tree.  [one of]It must have appeared overnight as you don't recall seeing it yesterday.[or][stopping]". The printed name is "hornet's nest".  The indefinite article is "a".  

Understand "hive/hives/nest" or "bee's nest" or "hornets nest" as the hornets-nest.

instead of taking the hornets-nest:
	say "Not going to be that easy."

before attacking the hornets-nest:
	say "That wouldn't end pretty." instead.
	
instead of touching the hornets-nest:
	if location is up-the-tree:
		say "You reach out to touch the nest, but the hornet's begin to swarm around your hand and you think better of doing that.";
	otherwise:
		say "You are not sure that would be a good idea even if you could reach it from here."
	
	
Chapter - Hornets	

Some hornets are a thing in the hornets-nest. It is plural-named. The printed name is "hornets". The indefinite article is "some".  The description is "[description-of-hornets]".

understand "hornet/bee/bees/soldiers/workers" as hornets.

To say description-of-hornets:
	if the hornets are swarming:
		say "The hornets are swarming around the nest, workers headed in and out, soldiers perched on the nest as if expecting a full frontal assault.";
	if the hornets are angry:
		say "The hornets look pissed, more so than usual.  None are going back in the nest, they are steadily pouring out and if you look closely enough, they appear to be readying an all out assault.";
	if the hornets are aggressive:
		say "Oh boy, you better move it.....they are flying every which way that looks chaotic yet orchestrated at the same time. [if location is under-the-tree]It would be wise to move quickly, they are headed your way[otherwise if location is up-the-tree]They are dive-boming you in a synchronized pattern that would be strangely beautiful if they weren't out to make you hurt[end if].";
	if the hornets are subdued:
		say "Just a few hornets remain on the outside and even they appear as if they have had enough and are ready to call it a day."

The hornets can be swarming, subdued, angry or aggressive.  The hornets are swarming.

Before taking hornets:
	say "If you tried that, you would regret it." instead.
	
Before attacking hornets:
	say "If you tried that, you would regret it." instead.

Chapter - Tree

The shade tree is a supporter which is in under-the-tree. The tree is scenery. The description is "The large shade tree stands majestically in your front yard.  It is well over fifty feet tall and a hundred years old.  The tree branches spread over the front porch and shade the house from the morning sun.  [if hornets-nest is part of the shade tree]About ten feet up is the largest hornet's nest you've ever seen.[end if][if ladder is on the tree] The ladder is leaning against the tree.[end if]".

understand "branch" as tree when cut branch is not in under-the-tree.

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
	
instead of listening to the tree:
	say "You hear the buzz of the hornet's as the fly around the nest."
	
instead of listening:
	if location is under-the-tree:
		try listening to the tree;
	if location is in-the-shed:
		say "Even from within the shed, you can hear the faint sounds of the hornet's nest.";
	if location is on-the-porch:
		say "Though you can't see the nest from here, you can hear it."
		
Instead of looking under the tree:
	say "Throughout the [yard] you see the tree's [roots] that stretch out from it's base."
	
Instead of pushing the tree:
	say "You strain against the tree but you fail to budge it."

	
Understand "saw [something]" as cutting.
Instead of cutting the tree:
	if player carries the hand-saw:
		if location is up-the-tree:
			if cut branch is in under-the-tree:
				say "The hornet's have built their new nest in a branch too high for you to reach.";
			otherwise:
				say "You take the hand saw and begin to cut through the branch that the hornet's nest is hanging from.  After a moment the branch cracks and falls to the ground taking the nest with it.  You start to raise your arms in triumph, but then remembering you are standing on a ladder, you think better of it and just grin happily to yourself.";
				if  the hole is in under-the-tree:
					say "[paragraph break]The nest falls right into the hole.  You clamber down the ladder and quickly fill in the hole covering the nest.  ";
					now the hole is off-stage;
					now the hornets-nest is off-stage;
					now the player is in under-the-tree;
				otherwise:
					say "[paragraph break]As the nest hits the ground, it bursts into pieces and the hornets scatter in all directions.......only to regroup high up in the tree where they hover for a moment, then as if shot from a pistol, head in your direction.";
					now the cut branch is in under-the-tree;
					hornets attack in 1 turn from now;
		otherwise:
			say "Cutting down the entire tree is a bit of overkill don't you think?";
	otherwise:
		say "You make a cutting motion on the tree with your hand and succeed in nothing more than scraping up your hand.";
		
The bark is a flimsy.  The bark is part of the shade tree.
The roots are a flimsy.  The roots are part of the shade tree.  the action-refusal is  "The roots are pretty necessary to the health of the tree.  You don't want to risk anything."

The yard is a backdrop which is everywhere.  The description is "A large yard and you take care of it as well as you can."

The cut branch is scenery.  The description of cut branch is "The large branch you just cut from the tree is laying on the ground and the remenents of the old nest have scattered in the light breeze."  

instead of doing anything with the cut branch:
	say "It is much too heavy."

Chapter - House

The house is a backdrop which is everywhere.  The description of the house is "Your century old farm house sits in the middle of your farm.  It's old, it's got it's problems....but it's home."  Understand "farm house" or "century old farm house" or "old farm house" or "home/farm/farmhouse" as house.

Chapter - Shed

The shed is a backdrop which is everywhere.  The description of the shed is "The tool shed was built back in the 1860s and is falling down, however it[']s close to the house, easy to get to and large enough to store just about anything you need around the yard."

before entering shed:
	say "You wonder off to the shed.";
	now the player is in in-the-shed instead.

Chapter - Pile of wood

The woodpile is a supporter. The woodpile is undescribed. The woodpile is fixed in place. The description of woodpile is "You stacked this woodpile here years ago in the misguided thought that you would actually use the [wood-burner] in the house to save on heating costs in the winter.  Well here it still is, neatly stacked."  Understand "wood/pile" as woodpile.  The woodpile is in outside-the-shed.

Before taking woodpile:
	if large spider is on-stage:
		say "As you go to take some of the wood, the large spider turns towards your hand and rears up as if to bite." instead;
	otherwise:
		if web is on-stage:
			say "You brush the web aside and take a handful of the dry wood.";
			now the player carries some twigs instead;
			now the web is off-stage;
		

Chapter - Spider web

The web is a container on the woodpile.  The web is open.  The web is not openable.  The description of web is "A large web covers much of the pile of wood[if spider is on-stage] and in the center is the largest spider you've ever seen.[end if]."

The web-top is a supporter.  The web-top is a part of the web.
Instead of attacking the web:
	try attacking the large spider.

before taking the web:
	try taking the spider instead.
	

Chapter - spider	

The large spider is a animal in the web.  The  description of large spider is "The spider is as large as the palm of your hand.  It's black with large yellow streaks.  It sits in the middle of the web waiting for dinner.  It looks hungry."  Understand "spider" as the large spider.

Instead of taking the large spider:
	say "You start to reach for the spider to brush it and it's web out of the way, but as your hand approaches, the spider actually turns and rears up at you ready to bite."
	
Instead of attacking the large spider:
	try taking large spider.
	
Chapter - horsefly

Every turn when the player is in in-the-shed and the horsefly is on-stage and the player does not carry the horsefly:
	if a random chance of 1 in 2 succeeds:
		say "[one of]You hear a fly in the window as it tries to escape[or]You notice a fly walking up the window[or]A fly buzzes past your nose, just to circle around and fly right back into the window[at random]."

The horsefly is an undescribed thing in in-the-shed.  The description of horsefly is "The large horsefly is at least two inches long and [if player carries horsefly]it struggles to get out of your grip[otherwise if location is in-the-shed]keeps buzzing around the window trying to get out[end if]."  Understand "fly" as horsefly.

Before taking horsefly:
	say "You spend several minutes trying to get your hands on the fly.  It is only after it gets hung up in some cobwebs that you are finally able to catch it.  You grab it holding on by it's wings to keep it from moving around too much.";
	now the player carries the horsefly instead; 

after dropping horsefly:
	say "You let the horsefly go and you watch it fly away, [if location is not in-the-shed]right back into the shed, [end if]right back into the window.";
	now horsefly is in in-the-shed.

Before putting the horsefly on the web-top:
	if player is carrying horsefly:
		say "You toss the fly into the web and the spider instantly pounces on it and begins to wrap it up.  When it's done wrapping, it drags the fly off the web and underneath the wood pile.";
		now spider is off-stage;
		now horsefly is off-stage instead;
	otherwise:
		try dropping the noun instead.
			
Before inserting the horsefly into the web:
	try putting the horsefly on the web-top instead.

Before putting the horsefly on the web:
	try putting the horsefly on the web-top instead.

Before throwing horsefly at spider:
	try putting the horsefly on the web-top instead.

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
		say "The last completed puzzle is [last-puzzle-completed of the player]."

Understand "puzzles" as requesting puzzle status.

A puzzle is a kind of thing.  A puzzle is always undescribed.  A puzzle can be completed, uncompleted, running, default or impossible.  A puzzle is usually uncompleted.   A puzzle can be active or inactive.  A puzzle are usually inactive.

The player has a puzzle called last-puzzle-completed.  The last-puzzle-completed of the player is usually no-puzzle.

no-puzzle is a default puzzle.
spray-the-nest is a puzzle.
build-a-fire is a puzzle.
smoke-the-nest is a puzzle.
cut-the-branch is a puzzle.
fire-the-missle is a puzzle.

[puzzle activation rules]
Every turn:
	if build-a-fire is uncompleted and build-a-fire is not impossible:
		if twigs are on-stage:
			now build-a-fire is active;
		otherwise:
			now build-a-fire is inactive;
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
			

Book - Recurring events

Part - Hornets Attack

at the time when the hornets attack:
	if location is up-the-tree or location is under-the-tree:
		say "The hornets swarm around you aggressively, diving in and trying to penetrate through the wall of your flailing arms.  You[if location is up-the-tree] jump out of the tree and[end if] run around screaming wildly.[paragraph break]";
		now the player is hiding;
		now the hornets are aggressive;
		now the player is in a random safe-zone room;
		if the last-puzzle-completed of the player is spray-the-nest:
			say "Well that didn't work too well.  [bug-killer-drop-description][line break][clue-next-puzzle]";
			now woodpile is in outside-the-shed;
		if the last-puzzle-completed of the player is smoke-the-nest:
[			now twigs are off-stage;
			now woodpile is off-stage;
			now pile of ashes is in under-the-tree;]
			now hand-saw is in in-the-shed;
		if the last-puzzle-completed of the player is cut-the-branch:
			now the player is in a random safe-zone room;
		Hornets calm down in two turns from now.

at the time when the hornets calm down:
	now the hornets are swarming;
	if the last-puzzle-completed of the player is cut-the-branch:
		say "Amazingly as you look back at the tree, the hornets are swarming wildly around another branch.  Their activity grows in intensity and soon you can see nothing but a large mass of hornets all moving together.  [paragraph break]After a few moments, the activity ceases, most of the hornets retreat into a new nest that is now hanging from another branch.";
	if the number of uncompleted puzzles is one:
		end the story saying "Here ends the intro to Hornet's Nest.   Hope you enjoyed this and look for more to come."


to say bug-killer-drop-description:
	if player carries bug killer:
		silently try dropping bug killer;
		say "You throw the can away in disgust and as it bounces off [if location is in-the-shed]the wall[otherwise if location is on-the-porch]the porch floor[end if] it hits square on the nozzle, which promptly breaks off and a long spray comes out until now the can is now truly empty." ;
		now the printed name of the bug killer is "[if bug killer is empty]now empty [end if]bug killer";
		
to say clue-next-puzzle:
	if spray-the-nest is uncompleted:
		say "test 1";
	else if smoke-the-nest is uncompleted:
		say "As you look on in disbelief, a thought comes to you; hornets don't like smoke, why don't you try smoking them out.[line break][line break]";
	else if cut-the-branch is uncompleted:
		say "As you pause to catch your breath, you wonder what to do.   Maybe if you try cutting it down, they'll just pick up and leave."
		
	
Book - Aggressive Hornets

Aggressive-hornets is a recurring scene.   Aggressive-hornets begins when hornets are aggressive.  Aggressive-hornets ends when hornets are not aggressive

Every turn while aggressive-hornets is happening:
	if location is under-the-tree:
		say "As soon as walk back under the tree the hornets seem to take notice of you again.  The reform into a tight group and launch an attack.  You hastily retreat back to where you came.";
		try retreating;
	if location is up-the-tree:
		do nothing;
	otherwise:
		say "[one of]From here you can hear the angry buzz of the hornets.[or]You can see the hornets swarming as if looking for something to sting.[or]You must have really made them mad this time.[or]Occassionally a hornet seems to locate you.  It buzzes your head and you manage to swat it away before it does much damage.  It flys back towards the nest....you hope it doesn't bring back friends.[then at random]".


Book - Trying the bug killer

Trying-the-bug-killer is a scene.  Trying-the-bug-killer begins when spray-the-nest is active.  Trying-the-bug-killer ends when spray-the-nest is completed.

Book - Exploding Can

Exploding Can is a scene.  Exploding Can begins when fire-the-missle is running.  Exploding Can ends when fire-the-missle is completed.
When exploding can begins:
	say "The can sits in the fire for a few moments and then it starts to turn a hot red as it heats up.  As the sides of the can start to bulge out at the center you quickly decide it's time to hide behind the tree.  Just as you retreat behind the tree you hear a large explosion and you hit the ground.  You hear a whistle as the exploded can flys towards the nest hitting it right in the bottom, plugging up the entrance to the nest.";
	now the bug killer is a part of the hornets-nest;
	
	


Book - Building a fire

Building-a-fire  is a scene.  Building-a-fire begins when Trying-the-bug-killer ends.  Building-a-fire ends when the twigs are flaming.

	
Book - Smoking them out

Smoking-them-out is a scene.  Smoking-them-out begins when smoke is heavy.  Smoking-them-out ends when smoke-the-nest is completed.	

When smoking-them-out begins:
	say "As the smoke rises it slowly begins to engulf the nest.  At first the hornets look confused as they their activity increases slightly, then suddenly they all retreat back into the nest.  Now the smoke is so heavy that you can't make out the nest at all.  You are feeling a little bit proud of yourself as you figure this will be the end of them all.
	
What is that noise?  You hear a faint buzz coming from the tree.  Looking up, the smoke begins to clear and you see a mass of hornets around the entrance to the nest.  Just as you see them, they see you and attack.

As they begin to swarm around your head, you notice there is something different about them.... they are now wearing minature gas masks.";
	now the last-puzzle-completed of the player is smoke-the-nest;
	hornets attack in 0 turn from now;
	now smoke-the-nest is completed;
	
Book - Cutting them down

Cutting-them-down is a scene.  Cutting-them-down begins when Smoking-them-out ends.  Cutting-them-down ends when cut-the-branch is completed.



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

[To say verbword: (- print (address) verb_word; -).

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

check throwing something at a second noun
(this is the can't throw what you don't have rule):
if the noun is not carried by the player,
say "You don't have [the noun]." instead.

report throwing something
(this is the throwing rule):
say "You can't throw [the noun].".

report throwing something into something
(this is the throwing something into something rule) :
say "You can't [verbword] [the noun] into [the second noun].".

report throwing something off a second noun
(this is the throwing something off something rule) ::
say "You can't [verbword] [the noun] off [the second noun].". 

report throwing something over something
(this is the throwing something over something rule) ::
say "You can't [verbword] [the noun] over [the second noun].". 

report throwing something under a second noun
(this is the throwing something under something rule) ::
say "You can't [verbword] [the noun] under [the second noun].". 

report throwing something down a second noun
(this is the throwing something down something rule) ::
say "You can't [verbword] [the noun] down [the second noun].". 

report throwing something through a second noun
(this is the throwing something through something rule) ::
say "You can't [verbword] [the noun]through [the second noun].". 

report throwing something out of a second noun
(this is the throwing something out of something rule) ::
say "You can't [verbword] [the noun] out of [the second noun]."]
