<h1>-- QuickSetup --</h1>
This is a GMS2 project I use to quickly setup new projects because I'm tired of setting up the same thing.
<br>
Sorry if this has bugs, this is my first repo!
<br> <br>
Make sure to replace this stuff.

![image](https://user-images.githubusercontent.com/55968400/173220944-e7482417-124b-4060-9bb6-1b12b1b4962f.png)

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
