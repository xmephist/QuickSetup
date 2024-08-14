[![Made with GameMaker](https://img.shields.io/badge/Made%20with-GameMaker-000000.svg?style=flat&logo=data%3Aimage%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAAA4AAAAOCAMAAAAolt3jAAAAZlBMVEX%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2BrG8stAAAAIXRSTlMABg0OFBkfcn1%2Bf4CBgoOFhoeIiouWmNDa5ebp8PX2%2B%2F6o6Vq%2BAAAAY0lEQVR42k2OWQ6AIAwFn%2BIOioobrnD%2FS4o0EeanmQxNAdErRFTWtsFq6%2BiiZozz0CSnTjYBwo0RkF8DWDLf51Ni9K%2FYdq0Fy3KAfzk97M7goK1F%2F4rGH9Kk1OlboQtEDIrmC%2BU3CVxTr%2FRMAAAAAElFTkSuQmCC)](https://www.yoyogames.com/gamemaker)

<h1>-- QuickSetup --</h1> 
This is a toolset I personally use to make GameMaker projects easier to produce!<br>
<br>
If you find any issues please report it as sometimes I don't catch bugs before I send stuff out :^)<br><br>

<h2><u>Make sure to replace all the QuickSetup default things in the Game Options</u></h2>

![image](https://user-images.githubusercontent.com/55968400/173220944-e7482417-124b-4060-9bb6-1b12b1b4962f.png)


<h2> Info </h2>

The <b>init</b> script is where I put all my variables but you don't really need to put them there if you don't want to.
The first room in the project is <b>r_init</b>, this is where I put all of my persistent objects.

<b>s_default</b> can be removed I just put it there to fill the void.

These macros are used for setting the in-game resolution
<br>
![image](https://user-images.githubusercontent.com/55968400/173221832-ada5d969-0f51-4b7d-b116-eabbf0b9b16c.png)
<br>
<b>DEBUG</b> is just a debug flag you can use <br>
<b>STARTRM</b> is for the actual room you plan on starting in. You go to it automatically at the start of the game.

<br>

![GameMaker_I4NTd3W68U](https://user-images.githubusercontent.com/55968400/173222013-ae7d14ae-b409-4330-9e57-a4fd3eac7dff.png)

This is just for setting the game caption. You don't need to use this and if you want to get rid of it then delete the Game Start event in `MANAGER`

<h2>=== MUSIC PLAYER ===</h2>

The music player is really simple to use. The script for it is located in '_audio'
You can see the details there.

Simply use the Music() function to play music like this

```gml
 
 if( playMusic == true )
	{
		Music(MySong,Looping,FadeType);
	}
 
```

The fade types are as follows-<br>

0 : No Fade (Hard Cut)<br>
1 : Fade In & Out<br>
2 : Crossfade<br>

====================

=== DEBUGGER ===

This is my own 'in-house' tool I use for almost all projects
It lists all rooms in the game (minus 2 characters at the start because of my
own prefix preference for rooms

You can press CTRL to toggle it

There is also a debug screen that toggles an objects name at their origin
You can add information to it in the step event. It displays basic information
such as the build date & time, Game Framerate and Real Framerate, and the current room

It can be toggled with TAB

====================

=== dbg() Script ===

This script is a substitute for show_debug_message & show_message
I got tired of writing them out so I made a script for them. It also displays
the object that's calling it (Note: I have no idea what happens if you call it from 
the script without it being invoked by an object)

====================

=== Camera System ===

If you prefer viewports or just like making your own camera system
you can get rid of this. It just creates a camera at Room Start for
you to use.

====================
<br><br>
