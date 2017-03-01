/**
AI Docs:

1.-Real Proporse of the AI
2.-Presets
3.-2 differents ways: quickSet
4.- Important information about memory leaks


=================================
1.-Real Proporse of the AI
=================================

The included AI can do Pathfinding tasks in grilled-like maps

It cannot do real AI tasks, like working on team, follow something or whatever
I didn't include this behaviours since they are absolutly different depending on the game
For example: An AI for a 16bits RPG style(like Terranigma, Illusion of time/Gaia) has a really different behaviour
than a TDS(like GTA 1-2) AI. That's why I stayed in Pathfinding and I didn't do real AI

However I'm thinking about doing some AI_director for a TDS-style game in a close future
and of course it will use this AI pathfinding framework

=================================
2.-Preset
=================================
You will need to do some things before getting ready:
First of all, the walls must be in a gril, GMS does this automatically so you shouldn't
worry

Secondly, there are three ways to tell the AI that a position cannot be touched:

First way: Make children of AI_avoid
The AI is hard-coded to avoid AI_avoid and that means that AI would avoid all of its children too
This is NECESSARY if you are going to use the easy way(quickSet)[See below].
It isn't necessary if you are gonna do it in the long way, but I recomend it anyway

Second way:
AI_add_obstacle(object). This script will tel the AI that she can't touch the object you provide, in any of its instances of course.

Third way:
AI_add_obstacle_raw(x,y). This one will tell the AI to not to touch an especific point




===========================================
3.-2 differents ways: quickSet && Long way
===========================================

Note that this is better explained in luigi003.ucoz.com/index/pathfinding_system/0-5

The AI has two differents ways of being programmed
The easier and shorter one would need Just one line of code(not really, I'll explain below)

quickSet(x,y,speed)
With this line you can do your object to go to a point at a certain speed, pretty easy, isn't it?



If you choose the long way you can make your AI patrol instead or going and you can avoid more especific elements or even points

First of all you will have to do AI_init(width,height,precise). Each script is explained in the same script so I won't re-explain it
Then you can do several things, you can add obstacles with AI_add_obstale(...) and AI_add_obstacle_raw(...).
You can start a simple movement with AI_move_target(...) or a patrol one with AI_patrol(...)

You can delete an obstacle(Note that raw obstacles should be deleted deleting the AI_avoid instance first, and AI
doesn't do that by itself since I can't code it without breacking your code)

You can tell the AI to check for changes with AI_recheck(). Note that if your AI is moving you should restart the movement
to apply the changes


===========================================
4.- Important information about memory leaks
===========================================
In order to prevent memory leaks, when your AI has finished its existence you should call AI_flush() or AI_destroy()
The difference is the flush just freezes the memory taked by Data structures and AI destroy the entire instance as well

This must be done even while closing the game. You can take a look at the object AI_test_obj included in this pack


Of course if you have some questions about this or any other part of the assets pack, you can write me at
luismayovalbuena@outlook.es
You can tweet me as well: @TLuigi003
Regards~
*/
