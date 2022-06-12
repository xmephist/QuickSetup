<h1>-- QuickSetup --</h1>
This is a GMS2 project I use to quickly setup new projects because I'm tired of setting up the same thing.
<br>
Sorry if this has bugs, I'll make sure to fix any that are reported and any that I find
<br> <br>
Make sure to replace this stuff.

![image](https://user-images.githubusercontent.com/55968400/173220944-e7482417-124b-4060-9bb6-1b12b1b4962f.png)


<h2> Info </h2>

The `init` script is where I put all my variables but you don't really need to put them there if you don't want to.
The first room in the project is `r_init`, this is where I put all of my persistent objects.

`s_default` can be removed I just put it there to fill the void.

These macros are used for setting the in-game resolution
<br>
![image](https://user-images.githubusercontent.com/55968400/173221832-ada5d969-0f51-4b7d-b116-eabbf0b9b16c.png)
<br>
`DEBUG` is just a debug flag you can use <br>
`STARTRM` is for the actual room you plan on starting in. You go to it automatically at the start of the game.

<br>

![GameMaker_I4NTd3W68U](https://user-images.githubusercontent.com/55968400/173222013-ae7d14ae-b409-4330-9e57-a4fd3eac7dff.png)

This is just for setting the game caption. You don't need to use this and if you want to get rid of it then delete the Game Start event in `MANAGER`


<h2> How to use Music Player </h2>

The music player is just stolen from <a href="https://www.youtube.com/playlist?list=PLFM-JMEG2BspdHfIhtQCtQIje59cZZSbn">PIXELPARTY</a> (a webseries I'm making)
The `audio` script is where you can play sounds and music. An example of Music() and Sound() usage is
```
  if(foo = 1){
    Music(mus_mysong,true)
  }
  if(bar = 1){
    Sound(snd_boom,1,0.5,false)
  }
  
  This is how it actually looks
  
   Music(music,loop)
   Sound(sound,pitch,volume,loop)
   ```
  In the `MANAGER` object you can find a region in the Step event called "Music Player". If you wish to change the time it takes to fade between songs then change
  the `fadeTime` variable.
