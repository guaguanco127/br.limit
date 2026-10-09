# Max/MSP Patches, Abstractions, Externals, RNBO and VSTs

## br.limit.1.2
   
By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.limit.1.2, with all related files, can be found here: [https://github.com/guaguanco127/br.limit](https://github.com/guaguanco127/br.limit)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9, or RNBO.

## Links

[About](#About)  
[Max/MSP Abstraction](https://github.com/guaguanco127/br.limit/tree/main/MaxMSP%20Abstraction) To use as an abstraction within Max/MSP   
[Max/MSP RNBO for External or VST](https://github.com/guaguanco127/br.limit/tree/main/RNBO%20Patchers%20for%20External%20or%20VST) To build your own Max external or VST/AU plugin, or to reuse the code in your own RNBO patches (needs RNBO)  

## <a name="About"></a>About

A safety brickwall limiter. The output never goes above the Ceiling, however hard Drive pushes it. In stereo the louder side sets the gain for both sides, so the stereo image never moves. Every control is click-free. Stereo and mono versions. Works at any sample rate.

You can use it as an abstraction within Max/MSP. With RNBO you can also build your own Max external or plugin from the included RNBO patch (stereo).

**Uses:**  
**Protecting your speakers and ears:** the last thing before [dac~] in a live patch, so feedback, a wild synth patch or a dropped cable can't blast the PA.  
**Catching peaks:** keep loud hits from clipping a recording, a stream or the next effect in a chain.  
**Making things louder:** push Drive up and let the limiter hold the peaks at the Ceiling.  

**Drive:** 0 to +24 dB. Pushes the input into the limiter: louder, and the Ceiling still holds. Default 0.  
**Ceiling:** -30 to 0 dBFS. The output never goes above it. Default -0.3.  
**Release:** 1 to 1000 ms. How fast the level comes back after a peak. Short = louder but can distort, long = smoother. Default 100.  
**Lookahead:** 0 to 5 ms. How early the limiter starts turning down before a peak. Default 1.5.  
**True Peak:** also catches peaks that fall between samples, which can still clip a converter or an mp3. Default off.  
**On/Off:** off passes the input untouched, without Drive, but still delayed by the latency so nothing jumps. Default on.  
**Gain reduction:** the last outlet, in dB, as a positive number: 0 = none, 6 = turned down 6 dB. The UI versions show it on a meter.

## <a name="Latency"></a>Lookahead and Latency

With Lookahead at 0 the limiter adds **no latency at all**: the gain drops on the peak itself. The Ceiling still holds, but on hard hits the sudden gain change can sound harsh.

Above 0 the limiter sees each peak coming and turns down smoothly over the lookahead time, which is cleaner. To do that, the audio is delayed by the same amount: 1.5 ms is about the delay of standing half a metre further from a speaker. It only matters if you mix the limited signal with an unlimited copy of the same sound, which would sound phasey.

True Peak adds 6 more samples of latency (about 0.13 ms at 48 kHz).

Changing Lookahead or True Peak changes the latency, so instead of jumping the output fades out, switches while silent, and fades back in, about 10 to 20 ms in all. Set them before you play. The UI versions use a menu of steps (0, 0.5, 1, 1.5, 3, 5 ms) for that reason, so each change is one deliberate pick.

**True Peak tip:** with True Peak on, peaks between samples stay within about 0.2 dB of the Ceiling. For full safety on those, set the Ceiling to -1 dB.

## <a name="New12"></a>What's new in 1.2

- The [State outlet](#State) is now on the UI versions only (the ones with controls). It reports the controls, so moving them, numbers into the inlets and preset recalls all show up, with the same names and the same position as in 1.1.
- The plain versions (no UI) and the RNBO patch no longer have a State outlet: whatever drives them already knows the values. Their outlets are audio only again.

## <a name="New"></a>What's new in 1.1

- New [State outlet](#State): every abstraction and the RNBO patch now send `drive 6.`, `ceiling -0.3`, `release 100.`, `lookahead 1.5`, `truepeak 0` and `on 1` out of their last outlet the moment a setting changes, so a display, Mira or another patch can follow along.
- The inlets and the audio outlets are unchanged. Only the file names move from 1.0 to 1.1.

## <a name="Files"></a>Which file?

| File | What it is |
|---|---|
| br.limit.1.2 | Stereo, no UI. The plain object to patch with |
| br.limit.ui.1.2 | Stereo, with controls and a gain reduction meter, ready for a [bpatcher] |
| br.limit.mono.1.2 | Mono, no UI |
| br.limit.mono.ui.1.2 | Mono, with the same controls and meter, ready for a [bpatcher] |
| _br.limit.example.1.2 | Example patch: open this first |

Each UI version contains its plain version and has the same inlets and audio outlets (plus State last), so either swaps in without rewiring (only Lookahead differs: the UI takes a menu item, the plain version takes ms). Open a UI version in patching mode for comments on how it is built.

## <a name="Use"></a>How To Use

**br.limit.1.2 (stereo)**

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Left In | Signal | | |
| 2 | Right In | Signal | | |
| 3 | Drive | Signal or Float (UI: Float only) | dB 0 to 24 | 0 |
| 4 | Ceiling | Signal or Float (UI: Float only) | dBFS -30 to 0 | -0.3 |
| 5 | Release | Signal or Float (UI: Float only) | ms 1 to 1000 | 100 |
| 6 | Lookahead | Signal or Float (UI: Int, menu item 0-5 = 0, 0.5, 1, 1.5, 3, 5 ms) | ms 0 to 5: 0 = no latency | 1.5 |
| 7 | True Peak | Signal or Int (UI: Int only) | 0 off, 1 on | 0 |
| 8 | On/Off | Signal or Int (UI: Int only) | 1 on, 0 off | 1 |

Outlets 1 / 2: Left Out / Right Out (Signal). Outlet 3: Gain Reduction (Signal), dB, 0 = none  
Outlet 4 (UI version only): State (Message), see [State outlet](#State)

**br.limit.mono.1.2 (mono)**

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | In | Signal | | |
| 2 | Drive | Signal or Float (UI: Float only) | dB 0 to 24 | 0 |
| 3 | Ceiling | Signal or Float (UI: Float only) | dBFS -30 to 0 | -0.3 |
| 4 | Release | Signal or Float (UI: Float only) | ms 1 to 1000 | 100 |
| 5 | Lookahead | Signal or Float (UI: Int, menu item 0-5 = 0, 0.5, 1, 1.5, 3, 5 ms) | ms 0 to 5: 0 = no latency | 1.5 |
| 6 | True Peak | Signal or Int (UI: Int only) | 0 off, 1 on | 0 |
| 7 | On/Off | Signal or Int (UI: Int only) | 1 on, 0 off | 1 |

Outlet 1: Out (Signal). Outlet 2: Gain Reduction (Signal), dB, 0 = none  
Outlet 3 (UI version only): State (Message), see [State outlet](#State)

Both versions use the same code. In the UI versions a number into an inlet moves its control, so the screen always shows what you hear. Hover any inlet or outlet in Max for its description.

## <a name="State"></a>State outlet

The last outlet of the UI versions (State) sends the current settings as named messages the moment they change: `drive 6.`, `ceiling -0.3`, `release 100.`, `lookahead 1.5`, `truepeak 0` and `on 1`. Use it to keep a display, Mira or another patch in sync. Pick them out by name with [route drive ceiling release lookahead truepeak on], not by position, so your patch keeps working if a later version adds controls. Repeats are filtered out.

| Message | Type | Range |
|---|---|---|
| drive | Float | dB, 0 to 24 |
| ceiling | Float | dBFS, -30 to 0 |
| release | Float | ms, 1 to 1000 |
| lookahead | Float | ms, 0 to 5 |
| truepeak | Int | 0 off, 1 on |
| on | Int | 0 off, 1 on |

The plain versions have no State outlet: whatever drives them already knows the values. Lookahead is reported in ms, the value that reaches the core. The UI's Lookahead inlet takes the menu index 0-5 (0, 0.5, 1, 1.5, 3, 5 ms), so send a `lookahead` State message to a plain version, or map it to the index first. The example patch has a State outlet tab that shows this.

## <a name="Credits"></a>Credits

True Peak detection follows the 4x oversampled true-peak method of ITU-R BS.1770.
