# ECE 3140 'Glo' project - Temp, weather and alarm beacon.
**By Ope and Daria**

Demo -> https://www.youtube.com/watch?v=NZNe1-gufVE

Glo is a cloud-enabled, portable station that displays the weather and temperature on an 8x5 LED matrix. 
Glo is also able to wake one up via light patterns and calling one's phone. The alarm is set via a simple iphone app;
Contact ope (ooo25@cornell.edu) to get the app's source code. 

The code is well commented with each of the functions aptly named. The basic overview is we use Mbed's ethernet library to initialize a connection via our ethernet cable with cornell (We defined and registered our MAC address on cit.mycomputers.net ). We then use the http library (by mbed) to obtain the data from a server that contains weather information derived from darkSky's API. We also use this server to externally store our alarm time as a string. To combat the problem of the k64 losing the time when it disconnected from power, when we initialize the code, we update the RTClock time with a unix time provided from our generous server. 

We then make use of the pixelArray and WS2812 library to write to the LEDs.'WS2812' is the model number for the LEDs. Made by adafruit; these leds have specific timing protocols necessary to write to them. What the WS2812 library does is to generate these timing values using nops and specific timing paramaters when initialized (specific to arm processor. in our case 120mhz).

# To Replicate

  - Obtain Adafruit Arduino LED matrix board
  - Do the necessary soldering
  - write backend code on a server to provide weather & time. (if one is actually trying to replicate the project, feel free to contact ope(ooo25) to use mine. 
  - Contact Ope (ooo25) for alarm app.


# App Preview


![](https://raw.githubusercontent.com/oooseun/Glo/master/IMG_0858.jpg)
