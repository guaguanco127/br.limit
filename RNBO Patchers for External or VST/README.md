# Max/MSP RNBO Patch for External Creation: br.limit.rnbo.1.1  
   
By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.limit.1.1, with all related files, can be found here: [https://github.com/guaguanco127/br.limit](https://github.com/guaguanco127/br.limit)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9 and RNBO.

## Table of Contents 

[About](#About)   
[What is an External for Max/MSP?](#External)  
[How To Export as a Max/MSP External](#Export)  
[A Note on VST and AU Plugins](#VST)  
[Credits](#Credits) 

## <a name="About"></a>About

A safety brickwall limiter. The output never goes above the Ceiling, however hard Drive pushes it. In stereo the louder side sets the gain for both sides, so the stereo image never moves. Every control is click-free. Stereo and mono versions. Works at any sample rate.

Inside [rnbo~], Drive, Ceiling, Release, Lookahead, True_Peak and On_Off are params, and inlets 3 to 8 set the same params, so the external has the same inlets and outlets as the stereo abstraction: L, R, Drive, Ceiling, Release, Lookahead, True Peak, On/Off / L, R, Gain Reduction. Lookahead is a param from 0 to 5 ms in 0.5 ms steps. The gen~ code inside is the same as br.limit.1.1, so you can also copy it into your own RNBO patches. To try it, drop a sample into the [playlist~] and use the attrui controls; the number shows the gain reduction.

With Lookahead at 0 and True Peak off it adds no latency. Otherwise the audio is late by the Lookahead time, + 6 samples with True Peak. Changing either fades the output out and back in over about 10 to 20 ms, so set them before you play.

The settings also come out of [rnbo~]'s rightmost outlet as `drive 6.`, `ceiling -0.3`, `release 100.`, `lookahead 1.5`, `truepeak 0` and `on 1` the moment they change ([outport drive], [outport ceiling], [outport release], [outport lookahead], [outport truepeak] and [outport on] inside), matching the State outlet of the abstractions. The patch shows them picked out with [route drive ceiling release lookahead truepeak on].

## <a name="External"></a>What is an External for Max/MSP?

An external is a type of object that does not come with your Max/MSP library. Unlike the typical objects that you can call on all versions of Max/MSP, an external must be installed on the user's computer a specific way. 

## <a name="Export"></a>How To Export as a Max/MSP External

1. Make sure Max 9 is installed on your computer, and that you have an RNBO license.

2. Open br.limit.rnbo.1.1.maxpat.

3. Double-click the [rnbo~] object while the patch is locked.

4. Click "Show Export Sidebar" on the right-hand side.

5. Select "Max External Export".

6. Name the object br.limit.1.1~ and export.

**Keep the ~ at the end of the name.** Without it, the external has exactly the same name as the abstraction br.limit.1.1, and Max loads whichever one it finds first, so you can't be sure which one you're using. The ~ also follows the Max convention for objects that process audio. Any other name is fine as long as it isn't the name of an abstraction you also use.

7. Copy the exported .mxo (Mac) or .mxe64 (Windows) into a folder on Max's search path, for example Documents/Max 9/Externals, and add that folder in Options > File Preferences if it isn't listed. Then create an object called br.limit.1.1~ in any patch. It has the same inlets as the stereo abstraction, except that the controls take numbers only.

## <a name="VST"></a>A Note on VST and AU Plugins

RNBO can also export this patch as a VST3 or AU plugin (Export Sidebar > Audio Plugin Export). The six params become the plugin's parameters. Most DAWs already include a limiter, so this is mostly useful if you want the same sound in Max and in your DAW. The plugin may not tell the DAW about its latency: if you hear timing or phase problems against other tracks, set Lookahead to 0 with True Peak off for no latency at all, or compensate by hand in your DAW.

## <a name="Credits"></a>Credits

True Peak detection follows the 4x oversampled true-peak method of ITU-R BS.1770.
