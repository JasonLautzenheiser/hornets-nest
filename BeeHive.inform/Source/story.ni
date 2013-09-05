"HornetsNest" by Jason Lautzenheiser

Use no scoring and full-length room descriptions. 
Use American dialect.
After printing the banner text, say "Copyright © 2013, Jason Lautzenheiser."

Volume - Bibliography

The story genre is "Comedy".
The story headline is "An Interactive Experience in Pest Removal".
The story description is "You weren't going to let the bee hive in the shade tree out front stop you from enjoying your summer."
The release number is 1.
The story creation year is 2013.

Volume - Testing & Debugging (not for release)

Book - Tests

test spray with "s/take ladder/take can/n/lean ladder on tree/u/spray".


Book  - Not for release

Include Object Response Tests by Juhana Leinonen.
[Include Property Checking by Emily Short.]

Volume - Game Settings

The describe what's on scenery supporters in room descriptions rule is not listed in any rulebook.

Abouting is an action out of world applying to nothing.
Understand "about" as abouting.
Understand the command "credits" or "info" as "about".

Report abouting:
	say "[italic type][Story title][roman type] was created in the fall of 2013 as an exercise.[paragraph break]";
	say "[italic type][Story title][roman type] is copyright © 2013 by Jason Lautzenheiser (jlautz@sssnet.com or visit by blog at http://lautzofif.wordpress.com/). It may be distributed for free, but not sold or included in any for-profit collection without written permission from the author.[paragraph break]";

Book - Uberstart

The uberstart rules are a rulebook.
After printing the banner text, say "Copyright © 2013, Jason Lautzenheiser."
The time of day is 6:05 AM.

When play begins:
	follow the uberstart rules.
	
An uberstart rule:
	now the left hand status line is "[the player's surroundings] / Moves: [turn count] ";
	now the right hand status line is "Time: [time of day]";
	
Book - Definitions

A room can be a safe-zone.


Book - Nouns

Chapter - Player Character

Myself is a male person.  The player is myself.

Book - Verbs

Part - New actions

Chapter - Shaking

Shaking is an action applying to one visible thing.
Understand "shake [something]" as shaking.
Understand "shake" as shaking.

Rule for supplying a missing noun while shaking:
	change the noun to the player.
	
Check shaking:
	if the noun is:
		-- Myself:
			say "You shake and shake your whole body like a dog climbing out of the water, but the hornets don't seem impressed.";
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
	say "You shake and shake listening to that little ball inside bounce on the sides of the can[if bug killer is full] and there seems to be a some spray left[otherwise if bug killer is half-full]and there seems to be very little spray left[otherwise], but the can feels empty[end if]."

Chapter - Leaning

Leaning it on is an action applying to two visible things.
understand "lean [something] on [something]" as leaning it on.
understand "lean [something] against [something]" as leaning it on.
understand "lean [something]" as leaning it on.


Rule for supplying a missing noun while leaning:
	change the noun to Myself.
	
Rule for supplying a missing second noun while leaning:
	if location is under-the-tree:
		change the second noun to bug killer;
	if location is on-the-porch:
		change the second noun to house;
	otherwise:
		say "You lean [the noun] against thin air and it promptly leans all the way to the ground.";
		now the noun is in the location.
	
Check leaning:
	if the noun is:
		-- Myself:
			if the second noun is the tree:
				say "You lean against the tree nonchalantley...that didn't work...the hornets notice you and become a bit agitated.";
		-- ladder:
			if the second noun is the tree:
				say "You lean the ladder against the tree, being careful not to bump the nest in the process.";
				now ladder is on the tree.
		
Before putting something on the tree: 
	if the noun is not the ladder:
		say "You try to put [the noun] on the tree, but it won't stay."
		
		
Chapter - Spraying

Spraying it with is an action applying to two visible things.
understand "spray [something] with [something]" as spraying it with.
understand "spray [something]" as spraying it with.

Rule for supplying a missing second noun while spraying:
	change the second noun to bug killer.
	
Check spraying:
	if the second noun is not the bug killer , say "You could try spraying it with [the second noun] but I don't think you would be very successful."
	
Carry out spraying:
	if location is under-the-tree:	
		now the bug killer is half-full;
		now the hornets are angry;
		say "You take careful aim....and spray.....and the stream falls a foot short of the nest.  You take a second look at the can and see it says, 'Sprays up to 8 feet!'...well crap, I've got to get closer.[paragraph break]You shake the can one more time and you seem to have just a little left." instead;
	if location is up-the-tree:
		say "You are close enough now, there is no way you'll miss.  You'll have these doggone hornets out of your air in no time.  You shake the can one last time, more of a nervous habit than out of necessity, take careful aim.....[run paragraph on]";
		now the bug killer is empty;
	otherwise:
		say "There is not much left, you probably don't want to waste it." instead.
	

Volume - The World

Book - Rooms

Part - Under the Tree

Under-the-tree is a room.  The printed name is "Under the Tree".   The description is "You are standing under the large shade tree in the front yard.  To the south is your ancient utility shed where you store all the essentials. [if ladder is on tree]The ladder is leaning up against the tree.[end if]".

Before going up from under-the-tree:
	if ladder is not on the tree:
		say " You never were much of a tree climber." instead.

Part - In the shed

In-the-shed is a room.  In-the-shed is a safe-zone. The printed name is "In the Shed".  The description is "Your utility shed stands was built back in the 1860s and is falling down around you, however it's close to the house, easy to get to and large enough to store just about anything you need around the yard.  In fact, there is probably over a hundred years of junk in here that you keep saying someday you'll clean out."  In-the-shed is south of under-the-tree.

Part - On the porch

On-the-porch is a room.  on-the-porch is a safe-zone.  The printed name is "On the Porch".  The description is "The front porch is where you spend most of your evenings after work in the summer.  Sitting on the swing and drinking a beer."  The on-the-porch is west of under-the-tree and northwest of in-the-shed.

Part - Up the tree

Up-the-tree is a room.  The printed name is "Up the Tree".  The description is "You are standing near the top of the ladder near the nest.  The hornets are beginning to become aware of your presence and starting to buzz your head."  Up-the-tree is up from under-the-tree.


Book - Things

Part - Carried items

Chapter - Bug Killer

The bug killer is a thing in in-the-shed.  The description of bug killer is "The can of bug killer has been laying in the shed for a number of years." The indefinite article of bug killer is "a can of".  understand "can" as bug killer.
The bug killer is either empty, half-full or full.  The bug killer is full.
The bug killer is either shaken or settled.  The bug killer is settled.

Chapter - Ladder

A ladder is a thing.  A ladder is in in-the-shed.  The description is "The step ladder your Dad gave you for a house warming gift when you moved in twenty years ago is still laying where you left it.....oh....twenty years ago."

Before climbing the ladder:
	if location is under-the-tree:
		if the ladder is on the tree:
			say "You climb as quietly as possible up the ladder until you are just a few feet away from the nest.  The hornets didn't see you coming, but now a few start to buzz around your head.";
		try going up instead.

Instead of putting the ladder on something (called the leaned-on):
	try leaning the ladder on the leaned-on instead.
	
	
Part - Scenery

Chapter - Hornest Nest

The hornets-nest is a container.  It is part of the shade tree.  It is fixed in place. The description is "You see a gigantic hornet's nest hanging from the branch of your shade tree.  [first time]It must have appeared overnight as you don't recall seeing it yesterday.[only]". The printed name is "hornet's nest".  The indefinite article is "a".  

Understand "hive/hives/nest" or "bee's nest" as the hornets-nest.

Chapter - Hornets	

Some hornets are a thing in the hornets-nest. It is plural-named. The printed name is "hornets". The indefinite article is "some".  The description is "[description-of-hornets]".

To say description-of-hornets:
	if the hornets are swarming:
		say "The hornets are swarming around the nest, workers headed in and out, soldiers perched on the nest as if expecting a full frontal assault.";
	if the hornets are angry:
		say "The hornets look pissed, more so than usual.  None are going back in the nest, they are steadily pouring out and if you look closely enough, they appear to be readying an all out assault.";
	if the hornets are aggressive:
		say "Oh boy, you better move it.....they are flying every which way that looks chaotic yet orchestrated at the same time. [if location is under-the-tree]It would be wise to move quickly, they are headed your way.[end if]";
	if the hornets are subdued:
		say "Just a few hornets remain on the outside and even they appear as if they have had enough and are ready to call it a day."

The hornets  can be swarming, subdued, angry or aggressive.  The hornets are swarming.

Before taking hornets:
	say "Sure, if you tried that, you would regret it." instead.
	

Chapter - Tree

The shade tree is a supporter in under-the-tree.   The shade tree is scenery. The description is "The large shade tree stands majestically in your front yard.  It is well over fifty feet tall and a hundred years old.  The trees branches spread over the front porch and shade the house well from the morning sun.  [if hornets-nest is part of the shade tree]About ten feet up is the largest hornet's nest you've ever seen.[end if][if ladder is on the tree] The ladder is leaning against the tree.[end if]".

before climbing the tree:
	try going up instead;
	
	
Chapter - House

The house is a backdrop which is everywhere.  The description of the house is "Your century old farm house sits in the middle of your farm.  It's old, it's got it's problems....but it's home."  Understand "farm house" or "century old farm house" or "old farm house" or "home/farm/farmhouse" as house.


Volume - Scenes

Book - Recurring events

Part - Hornets Attack

at the time when the hornets attack:
	if location is up-the-tree or location is under-the-tree:
		say "The hornets swarm around you aggressively, diving in and trying to penetrate through the wall of your flailing arms .  You[if location is up-the-tree] jump out of the tree and[end if] run around screaming wildely.  For a few moments you don't even realize that after the hornets got you [if location is up-the-tree]out of[otherwise if location is under-the-tree]away from[end if] the tree, they went back to their nest.";
		now hornets are swarming;
		now player is in a random safe-zone room.

Book - Trying the bug killer

Trying-the-bug-killer is a scene.  Trying-the-bug-killer begins when play begins.  Trying-the-bug-killer ends when bug killer is empty.

When trying-the-bug-killer ends:
	say "You shake the can and look at it in horror.  Just a little spray dribbled out of the can....just enough to grab the hornets attention.  They have noticed you and are headed in your direction.";
	now the hornets are aggressive;
	hornets attack in 1 turn from now.
	

	
	