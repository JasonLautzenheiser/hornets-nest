"BeeHive" by Jason Lautzenheiser

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

Book  - Not for release

Include Object Response Tests by Juhana Leinonen.
[Include Property Checking by Emily Short.]

Volume - Game Settings

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
			say "You shake and shake your whole body like a dog climbing out of the water, but the bees don't seem impressed.";
		-- the tree:
			say "You try to shake the tree, but luckily for you, it is too large and you can't budge it.";
		-- the spray can:
			do nothing;
		-- otherwise:
			say "You shake it, but nothing happens other than your arm getting a little tired."
	
Carry out shaking:
	if the noun is the spray can:
		now the noun is shaken.
	
Report shaking the spray can:
	say "You shake and shake listening to that little ball inside bounce on the sides of the can[if spray can is full] and there seems to be a little spray left[otherwise], but the can feels empty[end if]."


Chapter - Spraying

Spraying it with is an action applying to two visible things.
understand "spray [something] with [something]" as spraying it with.
understand "spray [something]" as spraying it with.

Rule for supplying a missing second noun while spraying:
	change the second noun to spray can.
	
Check spraying:
	if the second noun is not the spray can, say "You could try spraying it with [the second noun] but I don't think you would be very successful."
	
Carry out spraying:
	now the spray can is empty.
	

Volume - The World

Book - Rooms

Part - Under the Tree

Under-the-tree is a room.  The printed name is "Under the Tree".   The description is "You are standing under the large shade tree in the front yard.  To the south is your ancient utility shed where you store all the essentials."

Part - In the shed

In-the-shed is a room.  The printed name is "In the Shed".  The description is "Your utility shed stands was built back in the 1860s and is falling down around you, however it's close to the house, easy to get to and large enough to store just about anything you need around the yard.  In fact, there is probably over a hundred years of junk in here that you keep saying someday you'll clean out."  In-the-shed is south of under-the-tree.

Part - On the porch

On-the-porch is a room.  The printed name is "On the Porch".  The description is "The front porch is where you spend most of your evenings after work in the summer.  Sitting on the swing and drinking a beer."  The on-the-porch is west of under-the-tree and north of in-the-shed.

Book - Things

Part - Carried items

Chapter - Spray Can

The spray can is a thing in in-the-shed.  The description of spray can is "The can of bug killer has been laying in the shed for a number of years."
The spray can is either empty or full.  The spray can is full.
The spray can is either shaken or settled.  The spray can is settled.




Part - Scenery

Chapter - Beehive

The beehive is a container.  It is part of the shade tree.  It is fixed in place. The initial appearance is "You see a gigantic beehive hanging from the branch of your shade tree.  [first time]It must have appeared overnight as you don't recall seeing it yesterday.[only]". The printed name is "beehive". The plural of beehive is beehives. The indefinite article is "a".  The description is "The beehive is the largest you've seen, bending the branch it's hanging from.".

Understand "hive/hives/nest" or "bee's nest" as the beehive.

Chapter - Bees	

Some bees are a thing in beehive. It is plural-named. The initial appearance is "There are bees swarming around the hive.". The printed name is "bees". The plural of bees is beehives. The indefinite article is "some".  The description is "The bees look like normal honey bees, ones that aren't very happy, but normal ones.".

The bees can be swarming, subdued, angry or aggressive.  The bees are subdued.

Before taking bees:
	say "Sure, if you tried that, you would regret it." instead.
	

Chapter - Tree

The shade tree is a backdrop in under-the-tree. It is plural-named. The description is "The large shade tree stands majestically in your front yard.  It is well over fifty feet tall and a hundred years old.  The trees branches spread over the front porch and shade the house well from the morning sun.  About ten feet up is the largest bee's nest you've ever seen."


Volume - Scenes

Book - Trying the spray

Trying-the-spray is a scene.  Trying-the-spray begins when play begins.  Trying-the-spray ends when spray can is empty.

When trying-the-spray ends:
	say "You shake the can and look at it in horror.  Enough of the spray came out, just to grab the bees attention.  They have noticed you and are headed in your direction.";
	now the bees are aggressive.
	
	