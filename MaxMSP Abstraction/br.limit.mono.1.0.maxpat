{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 0,
            "revision": 0,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [
            85.0,
            104.0,
            1100.0,
            330.0
        ],
        "bglocked": 0,
        "openinpresentation": 0,
        "default_fontsize": 12.0,
        "default_fontface": 0,
        "default_fontname": "Arial",
        "gridonopen": 1,
        "gridsize": [
            15.0,
            15.0
        ],
        "gridsnaponopen": 1,
        "objectsnaponopen": 1,
        "statusbarvisible": 2,
        "toolbarvisible": 1,
        "lefttoolbarpinned": 0,
        "toptoolbarpinned": 0,
        "righttoolbarpinned": 0,
        "bottomtoolbarpinned": 0,
        "toolbars_unpinned_last_save": 0,
        "tallnewobj": 0,
        "boxanimatetime": 200,
        "enablehscroll": 1,
        "enablevscroll": 1,
        "devicewidth": 0.0,
        "description": "br.limit.mono.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
        "digest": "",
        "tags": "",
        "style": "",
        "subpatcher_template": "",
        "assistshowspatchername": 0,
        "dependency_cache": [],
        "autosave": 0,
        "boxes": [
            {
                "box": {
                    "id": "obj-signature",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        630.0,
                        15.0,
                        360.0,
                        33.0
                    ],
                    "text": "br.limit.mono.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/",
                    "fontsize": 12.0,
                    "fontname": "Arial"
                }
            },
            {
                "box": {
                    "id": "obj-gen",
                    "maxclass": "newobj",
                    "numinlets": 7,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
                    "patching_rect": [
                        15.0,
                        110.0,
                        480.0,
                        22.0
                    ],
                    "text": "gen~ @title br.limit.mono.1.0",
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 0,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "dsp.gen",
                        "rect": [
                            134.0,
                            87.0,
                            1300.0,
                            884.0
                        ],
                        "bglocked": 0,
                        "openinpresentation": 0,
                        "default_fontsize": 12.0,
                        "default_fontface": 0,
                        "default_fontname": "Arial",
                        "gridonopen": 1,
                        "gridsize": [
                            15.0,
                            15.0
                        ],
                        "gridsnaponopen": 1,
                        "objectsnaponopen": 1,
                        "statusbarvisible": 2,
                        "toolbarvisible": 1,
                        "lefttoolbarpinned": 0,
                        "toptoolbarpinned": 0,
                        "righttoolbarpinned": 0,
                        "bottomtoolbarpinned": 0,
                        "toolbars_unpinned_last_save": 0,
                        "tallnewobj": 0,
                        "boxanimatetime": 200,
                        "enablehscroll": 1,
                        "enablevscroll": 1,
                        "devicewidth": 0.0,
                        "description": "",
                        "digest": "",
                        "tags": "",
                        "style": "",
                        "subpatcher_template": "",
                        "assistshowspatchername": 0,
                        "dependency_cache": [],
                        "autosave": 0,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-code",
                                    "maxclass": "codebox",
                                    "numinlets": 7,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        26.0,
                                        307.0,
                                        1040.0,
                                        900.0
                                    ],
                                    "code": "// br.limit.mono.1.0 -- mono safety brickwall limiter\n// Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/\n// MUST MATCH: br.limit.1.0 -- the same code with mono I/O\n// in1 audio\n// in2 drive dB 0..24: pushes the input into the limiter; louder, the ceiling still holds\n// in3 ceiling dBFS -30..0: the output never goes above it\n// in4 release ms 1..1000: how fast the level comes back after a peak\n// in5 lookahead ms 0..5: 0 = no latency, the gain drops on the peak itself, which can sound harsh on hard hits;\n//     above 0 the gain starts dropping that much early, cleaner, and the audio is late by the same amount\n// in6 true peak 0/1: also catches peaks that fall between samples with a 4x oversampled check, adds 6 samples latency\n// in7 on/off 1 on, 0 off: off = the input passes untouched, no drive, still delayed by the latency so nothing jumps\n// out1 audio, out2 gain reduction dB, positive: 0 = none, 6 = turned down 6 dB\n//\n// How the ceiling is guaranteed: for every sample the limiter works out the gain that would put it exactly\n// on the ceiling. It holds the lowest\n// gain seen over the lookahead, lets it recover at the Release speed, then averages it over the lookahead.\n// That average can only be at or below the gain each delayed sample needs, so nothing gets through, and the\n// gain ramps down smoothly over the lookahead instead of jumping. With lookahead 0 the gain jumps.\n// A final clip at the ceiling only catches rounding dust.\n//\n// Changing Lookahead or True Peak changes the latency, which would make the audio jump. Instead the output\n// fades out over 5 ms, switches while silent, waits until the limiter has refilled, and fades back in.\n// Set them before you play. Changes that arrive during a fade are taken at the next one.\n\n// lookahead up to 4000 samples, 5 ms at 768 kHz, + 6 for true peak\nDelay aL(4100);\n// the input without drive, for Off\nDelay rL(4100);\nDelay yd(4100);\n// lowest-gain queue: value, sample number\nData dq(4096, 2);\nHistory started(0);\nHistory curN(0);\nHistory curT(0);\nHistory dipR(0);\nHistory dipS(0);\nHistory holdC(0);\nHistory yS(1);\nHistory sumS(0);\nHistory qHead(0);\nHistory qCnt(0);\nHistory tick(0);\nHistory ceilS(0.966051);\nHistory driveS(1);\nHistory onS(1);\n\n// read all state first\nst = started;\nn = curN;\ntp = curT;\ndr = dipR;\nds = dipS;\nhc = holdC;\nrs = 0;\ny = yS;\nsm = sumS;\nqh = qHead;\nqc = qCnt;\nt = tick;\ncl = ceilS;\ndv = driveS;\nen = onS;\n\n// drive, ceiling and on/off glide over 20 ms so nothing clicks\nk = 1 - exp(-1 / mstosamps(20));\ndv = dv + (dbtoa(clip(in2, 0, 24)) - dv) * k;\ncl = cl + (dbtoa(clip(in3, -30, 0)) - cl) * k;\nen = en + (clip(floor(in7 + 0.5), 0, 1) - en) * k;\nkr = 1 - exp(-1 / max(1, mstosamps(clip(in4, 1, 1000))));\nnT = clip(floor(mstosamps(clip(in5, 0, 5)) + 0.5), 0, 4000);\ntpT = clip(floor(in6 + 0.5), 0, 1);\n\n// DRIVE: everything below works on the driven input\ndL = in1 * dv;\n\n// at load: start silent on the settings, fill up, then fade in over 5 ms\nif (st == 0) {\n    n = nT;\n    tp = tpT;\n    dr = 1;\n    ds = 2;\n    hc = 2 * n + 8;\n    rs = 1;\n    st = 1;\n}\n\n// LATENCY CHANGE: fade out, switch while silent, hold until refilled, fade in\ndinc = 1 / mstosamps(5);\nif (ds == 0) {\n    if (nT != n || tpT != tp) {\n        ds = 1;\n    }\n}\nif (ds == 1) {\n    dr = dr + dinc;\n    if (dr >= 1) {\n        dr = 1;\n        ds = 2;\n        n = nT;\n        tp = tpT;\n        hc = 2 * n + 8;\n        rs = 1;\n    }\n} else if (ds == 2) {\n    hc = hc - 1;\n    if (hc <= 0) {\n        ds = 3;\n    }\n} else if (ds == 3) {\n    dr = dr - dinc;\n    if (dr <= 0) {\n        dr = 0;\n        ds = 0;\n    }\n}\ndipG = 0.5 + 0.5 * cos(pi * dr);\n\n// DETECT: sample peaks or true peaks\npk = abs(dL);\nxL0 = 0;\nxL1 = 0;\nxL2 = 0;\nxL3 = 0;\nxL4 = 0;\nxL5 = 0;\nxL6 = 0;\nxL7 = 0;\nxL8 = 0;\nxL9 = 0;\nxL10 = 0;\nxL11 = 0;\niL1 = 0;\niL2 = 0;\niL3 = 0;\nif (tp > 0) {\n    xL0 = dL;\n    xL1 = aL.read(1);\n    xL2 = aL.read(2);\n    xL3 = aL.read(3);\n    xL4 = aL.read(4);\n    xL5 = aL.read(5);\n    xL6 = aL.read(6);\n    xL7 = aL.read(7);\n    xL8 = aL.read(8);\n    xL9 = aL.read(9);\n    xL10 = aL.read(10);\n    xL11 = aL.read(11);\n    iL1 = -0.001272 * xL0 + 0.007982 * xL1 - 0.022830 * xL2 + 0.050721 * xL3 - 0.106961 * xL4 + 0.290377 * xL5 + 0.897104 * xL6 - 0.164139 * xL7 + 0.073268 * xL8 - 0.034630 * xL9 + 0.014175 * xL10 - 0.003795 * xL11;\n    iL2 = -0.003314 * xL0 + 0.015275 * xL1 - 0.039987 * xL2 + 0.086227 * xL3 - 0.185502 * xL4 + 0.627302 * xL5 + 0.627302 * xL6 - 0.185502 * xL7 + 0.086227 * xL8 - 0.039987 * xL9 + 0.015275 * xL10 - 0.003314 * xL11;\n    iL3 = -0.003795 * xL0 + 0.014175 * xL1 - 0.034630 * xL2 + 0.073268 * xL3 - 0.164139 * xL4 + 0.897104 * xL5 + 0.290377 * xL6 - 0.106961 * xL7 + 0.050721 * xL8 - 0.022830 * xL9 + 0.007982 * xL10 - 0.001272 * xL11;\n    pk = max(max(abs(xL6), abs(xL5)), max(max(abs(iL1), abs(iL2)), abs(iL3)));\n}\ngq = (pk > cl) ? cl / pk : 1;\n\n// HOLD the lowest gain of the last n + 1 samples: a queue of rising values, oldest first.\n// Each entry: the gain and the sample counter when it arrived\n// the sample counter wraps at 2^20 so it stays exact in Data, which stores 32-bit floats\nt = t + 1;\nif (t >= 1048576) {\n    t = t - 1048576;\n}\nbk = qh + qc - 1;\nif (bk >= 4096) {\n    bk = bk - 4096;\n}\nif (bk < 0) {\n    bk = bk + 4096;\n}\nwhile (qc > 0 && peek(dq, bk, 0) >= gq) {\n    qc = qc - 1;\n    bk = bk - 1;\n    if (bk < 0) {\n        bk = bk + 4096;\n    }\n}\nbi = qh + qc;\nif (bi >= 4096) {\n    bi = bi - 4096;\n}\npoke(dq, gq, bi, 0);\npoke(dq, t, bi, 1);\nqc = qc + 1;\n// drop values older than n samples; the newest always stays, so this loop always ends\npt = peek(dq, qh, 1);\nage = t - pt;\nif (age < 0) {\n    age = age + 1048576;\n}\nwhile (qc > 1 && age > n) {\n    qh = qh + 1;\n    if (qh >= 4096) {\n        qh = 0;\n    }\n    qc = qc - 1;\n    pt = peek(dq, qh, 1);\n    age = t - pt;\n    if (age < 0) {\n        age = age + 1048576;\n    }\n}\nheld = peek(dq, qh, 0);\n\n// RELEASE: drops at once, recovers at the Release speed\ny = (held < y) ? held : y + (held - y) * kr;\n\n// SMOOTH: average over the lookahead, so the gain ramps down before the peak arrives\ng = y;\nj = 0;\nif (rs > 0) {\n    sm = y;\n    for (j = 1; j < n; j = j + 1) {\n        sm = sm + yd.read(j);\n    }\n} else if (n > 0) {\n    sm = sm + y - yd.read(n);\n}\nif (n > 0) {\n    g = sm / n;\n}\nyd.write(y);\n\n// the audio, late by the lookahead, + 6 samples with true peak\nlat = n + tp * 6;\nxL = dL;\nyL = in1;\nif (lat > 0) {\n    xL = aL.read(lat);\n    yL = rL.read(lat);\n}\naL.write(dL);\nrL.write(in1);\n\n// write state last\nstarted = st;\ncurN = n;\ncurT = tp;\ndipR = dr;\ndipS = ds;\nholdC = hc;\nyS = y;\nsumS = sm;\nqHead = qh;\nqCnt = qc;\ntick = t;\nceilS = cl;\ndriveS = dv;\nonS = en;\n\n// apply the gain; the clip only catches rounding dust. Off: the delayed input, untouched and without drive\nlL = clip(xL * g, -cl, cl);\nout1 = mix(yL, lL, en) * dipG;\n// gain reduction as a positive number, like br.comp: 0 = none, 6 = turned down 6 dB.\n// While the output is silent for a load or latency change the gain is still refilling: report 0, not a false reading\ngr = (ds == 2) ? 1 : g;\nout2 = -atodb(max(mix(1, gr, en), 0.00001));\n",
                                    "fontsize": 12.0,
                                    "fontname": "<Monospaced>",
                                    "fontface": 0
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-gin1",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        20.0,
                                        20.0,
                                        183.0,
                                        22.0
                                    ],
                                    "text": "in 1 @comment \"Audio In (Signal)\"",
                                    "fontsize": 12.0,
                                    "fontname": "Arial"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-gin2",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        298.0,
                                        56.0,
                                        120.0,
                                        143.0
                                    ],
                                    "text": "in 2 @comment \"Drive (Signal/Float) dB 0. to 24. Pushes the input into the limiter: louder, and the Ceiling still holds. Glides over 20 ms. Off bypasses it. Default 0\" @default 0",
                                    "fontsize": 12.0,
                                    "fontname": "Arial",
                                    "linecount": 10
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-gin3",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        444.0,
                                        48.0,
                                        120.0,
                                        116.0
                                    ],
                                    "text": "in 3 @comment \"Ceiling (Signal/Float) dBFS -30. to 0. The output never goes above it. Glides over 20 ms. Default -0.3\" @default -0.3",
                                    "fontsize": 12.0,
                                    "fontname": "Arial",
                                    "linecount": 8
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-gin4",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        574.0,
                                        48.0,
                                        120.0,
                                        143.0
                                    ],
                                    "text": "in 4 @comment \"Release (Signal/Float) ms 1. to 1000. How fast the level comes back after a peak. Short = louder but can distort, long = smoother. Default 100\" @default 100",
                                    "fontsize": 12.0,
                                    "fontname": "Arial",
                                    "linecount": 10
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-gin5",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        704.0,
                                        8.0,
                                        120.0,
                                        263.0
                                    ],
                                    "text": "in 5 @comment \"Lookahead (Signal/Float) ms 0. to 5. 0 = no latency, the gain drops on the peak itself and can sound harsh on hard hits. Above 0 the gain drops that much early, cleaner, and the audio is late by the same amount. Changing it fades the output out and back in over about 20 ms: set it before you play. Default 1.5\" @default 1.5",
                                    "fontsize": 12.0,
                                    "fontname": "Arial",
                                    "linecount": 19
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-gin6",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        834.0,
                                        48.0,
                                        120.0,
                                        183.0
                                    ],
                                    "text": "in 6 @comment \"True Peak (Signal/Int) 0 off, 1 on: also catches peaks between samples, which can still clip a converter or an mp3. Adds 6 samples latency. Switching fades out and back in like Lookahead. Default 0\" @default 0",
                                    "fontsize": 12.0,
                                    "fontname": "Arial",
                                    "linecount": 13
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-gin7",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        964.0,
                                        48.0,
                                        120.0,
                                        143.0
                                    ],
                                    "text": "in 7 @comment \"On/Off (Signal/Int) 1 on, 0 off. Off: the input passes untouched, still delayed by the latency so nothing jumps. Fades over 20 ms. Default 1\" @default 1",
                                    "fontsize": 12.0,
                                    "fontname": "Arial",
                                    "linecount": 10
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-gout1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "patching_rect": [
                                        30.0,
                                        1321.0,
                                        199.0,
                                        22.0
                                    ],
                                    "text": "out 1 @comment \"Audio Out (Signal)\"",
                                    "fontsize": 12.0,
                                    "fontname": "Arial"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-gout2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "patching_rect": [
                                        955.0,
                                        1342.0,
                                        140.0,
                                        76.0
                                    ],
                                    "text": "out 2 @comment \"Gain Reduction (Signal) in dB, positive: 0 = none, 6 = turned down 6 dB. For meters\"",
                                    "fontsize": 12.0,
                                    "fontname": "Arial",
                                    "linecount": 5
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "source": [
                                        "obj-gin1",
                                        0
                                    ],
                                    "destination": [
                                        "obj-code",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-gin2",
                                        0
                                    ],
                                    "destination": [
                                        "obj-code",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-gin3",
                                        0
                                    ],
                                    "destination": [
                                        "obj-code",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-gin4",
                                        0
                                    ],
                                    "destination": [
                                        "obj-code",
                                        3
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-gin5",
                                        0
                                    ],
                                    "destination": [
                                        "obj-code",
                                        4
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-gin6",
                                        0
                                    ],
                                    "destination": [
                                        "obj-code",
                                        5
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-gin7",
                                        0
                                    ],
                                    "destination": [
                                        "obj-code",
                                        6
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-code",
                                        0
                                    ],
                                    "destination": [
                                        "obj-gout1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-code",
                                        1
                                    ],
                                    "destination": [
                                        "obj-gout2",
                                        0
                                    ]
                                }
                            }
                        ]
                    },
                    "fontsize": 12.0,
                    "fontname": "Arial"
                }
            },
            {
                "box": {
                    "id": "obj-why",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        630.0,
                        60.0,
                        360.0,
                        128.0
                    ],
                    "text": "Mono safety brickwall limiter: the output never goes above the Ceiling, however hard Drive pushes it. Lookahead 0 = no latency; above 0 the gain ramps down early, so peaks are caught cleanly, and the audio is late by the lookahead. True Peak also catches peaks between samples. Outlet 2 = gain reduction in dB. Same code as br.limit.1.0.",
                    "fontsize": 12.0,
                    "fontname": "Arial"
                }
            },
            {
                "box": {
                    "id": "obj-in1",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        15.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Audio In (Signal)",
                    "index": 0,
                    "fontsize": 12.0,
                    "fontname": "Arial"
                }
            },
            {
                "box": {
                    "id": "obj-in2",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        90.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Drive (Signal/Float) dB 0. to 24. Pushes the input into the limiter: louder, and the Ceiling still holds. Glides over 20 ms. Off bypasses it. Default 0",
                    "index": 1,
                    "fontsize": 12.0,
                    "fontname": "Arial"
                }
            },
            {
                "box": {
                    "id": "obj-in3",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        165.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Ceiling (Signal/Float) dBFS -30. to 0. The output never goes above it. Glides over 20 ms. Default -0.3",
                    "index": 2,
                    "fontsize": 12.0,
                    "fontname": "Arial"
                }
            },
            {
                "box": {
                    "id": "obj-in4",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        240.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Release (Signal/Float) ms 1. to 1000. How fast the level comes back after a peak. Short = louder but can distort, long = smoother. Default 100",
                    "index": 3,
                    "fontsize": 12.0,
                    "fontname": "Arial"
                }
            },
            {
                "box": {
                    "id": "obj-in5",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        315.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Lookahead (Signal/Float) ms 0. to 5. 0 = no latency, the gain drops on the peak itself and can sound harsh on hard hits. Above 0 the gain drops that much early, cleaner, and the audio is late by the same amount. Changing it fades the output out and back in over about 20 ms: set it before you play. Default 1.5",
                    "index": 4,
                    "fontsize": 12.0,
                    "fontname": "Arial"
                }
            },
            {
                "box": {
                    "id": "obj-in6",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        390.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "comment": "True Peak (Signal/Int) 0 off, 1 on: also catches peaks between samples, which can still clip a converter or an mp3. Adds 6 samples latency. Switching fades out and back in like Lookahead. Default 0",
                    "index": 5,
                    "fontsize": 12.0,
                    "fontname": "Arial"
                }
            },
            {
                "box": {
                    "id": "obj-in7",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        465.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "comment": "On/Off (Signal/Int) 1 on, 0 off. Off: the input passes untouched, still delayed by the latency so nothing jumps. Fades over 20 ms. Default 1",
                    "index": 6,
                    "fontsize": 12.0,
                    "fontname": "Arial"
                }
            },
            {
                "box": {
                    "id": "obj-out1",
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        170.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Audio Out (Signal)",
                    "index": 0,
                    "fontsize": 12.0,
                    "fontname": "Arial"
                }
            },
            {
                "box": {
                    "id": "obj-out2",
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        90.0,
                        170.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Gain Reduction (Signal) in dB, positive: 0 = none, 6 = turned down 6 dB. For meters",
                    "index": 1,
                    "fontsize": 12.0,
                    "fontname": "Arial"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "source": [
                        "obj-in1",
                        0
                    ],
                    "destination": [
                        "obj-gen",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-in2",
                        0
                    ],
                    "destination": [
                        "obj-gen",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-in3",
                        0
                    ],
                    "destination": [
                        "obj-gen",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-in4",
                        0
                    ],
                    "destination": [
                        "obj-gen",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-in5",
                        0
                    ],
                    "destination": [
                        "obj-gen",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-in6",
                        0
                    ],
                    "destination": [
                        "obj-gen",
                        5
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-in7",
                        0
                    ],
                    "destination": [
                        "obj-gen",
                        6
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-gen",
                        0
                    ],
                    "destination": [
                        "obj-out1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-gen",
                        1
                    ],
                    "destination": [
                        "obj-out2",
                        0
                    ]
                }
            }
        ]
    }
}