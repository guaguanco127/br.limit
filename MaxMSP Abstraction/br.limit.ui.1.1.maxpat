{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 4,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "openrect": [
            85.0,
            104.0,
            133.0,
            162.0
        ],
        "openrectmode": 0,
        "openinpresentation": 1,
        "devicewidth": 133.0,
        "description": "br.limit.ui.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
        "boxes": [
            {
                "box": {
                    "comment": "Left In (Signal)",
                    "id": "obj-in1",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        15.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Right In (Signal)",
                    "id": "obj-in2",
                    "index": 2,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        90.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Drive (Float) dB 0. to 24. Sets the dial. Pushes the input into the limiter; the Ceiling still holds. Default 0",
                    "id": "obj-in3",
                    "index": 3,
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
                    ]
                }
            },
            {
                "box": {
                    "comment": "Ceiling (Float) dBFS -30. to 0. Sets the dial. The output never goes above it. Default -0.3",
                    "id": "obj-in4",
                    "index": 4,
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
                    ]
                }
            },
            {
                "box": {
                    "comment": "Release (Float) ms 1. to 1000. Sets the dial. How fast the level comes back after a peak. Default 100",
                    "id": "obj-in5",
                    "index": 5,
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
                    ]
                }
            },
            {
                "box": {
                    "comment": "Lookahead (Int) menu item 0-5 = 0, 0.5, 1, 1.5, 3, 5 ms. Sets the menu. 0 = no latency. Changing it fades the output out and back in over about 20 ms. Default 3 = 1.5 ms",
                    "id": "obj-in6",
                    "index": 6,
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
                    ]
                }
            },
            {
                "box": {
                    "comment": "True Peak (Int) 0 off, 1 on. Sets the button. Also catches peaks between samples, adds 6 samples latency. Default 0",
                    "id": "obj-in7",
                    "index": 7,
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
                    ]
                }
            },
            {
                "box": {
                    "comment": "On/Off (Int) 1 on, 0 off. Sets the button. Off: the input passes untouched, no drive, still delayed by the latency. Default 1",
                    "id": "obj-in8",
                    "index": 8,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        540.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "annotation": "Pushes the input into the limiter in dB: louder, and the Ceiling still holds. Off bypasses it. Default 0",
                    "annotation_name": "Drive",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-drive",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        165.0,
                        85.0,
                        44.0,
                        52.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        2.0,
                        105.0,
                        44.0,
                        52.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                0.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Drive",
                            "parameter_mmax": 24.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Drive",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "Drive"
                }
            },
            {
                "box": {
                    "annotation": "The output never goes above this level, in dBFS. With True Peak on, -1 keeps peaks between samples safe too. Default -0.3",
                    "annotation_name": "Ceiling",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-ceil",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        240.0,
                        85.0,
                        44.0,
                        52.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        48.0,
                        7.0,
                        44.0,
                        52.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                -0.3
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Ceiling",
                            "parameter_mmax": 0.0,
                            "parameter_mmin": -30.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Ceiling",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "Ceiling"
                }
            },
            {
                "box": {
                    "annotation": "How fast the level comes back after a peak, in ms. Short = louder but can distort, long = smoother. Default 100",
                    "annotation_name": "Release",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-rel",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        315.0,
                        85.0,
                        44.0,
                        52.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        48.0,
                        105.0,
                        44.0,
                        52.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 3.0,
                            "parameter_initial": [
                                100.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Release",
                            "parameter_mmax": 1000.0,
                            "parameter_mmin": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Release",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "varname": "Release"
                }
            },
            {
                "box": {
                    "annotation": "How early the limiter starts turning down before a peak. 0 ms = no latency, the gain drops on the peak itself and can sound harsh on hard hits. Above 0 = cleaner, and the audio is late by the same amount. Changing it fades the output out and back in over about 20 ms: set it before you play. Default 1.5 ms",
                    "annotation_name": "Lookahead",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-look",
                    "maxclass": "live.menu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        390.0,
                        60.0,
                        100.0,
                        17.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        2.0,
                        59.0,
                        96.0,
                        17.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [
                                "Look 0 ms",
                                "Look 0.5 ms",
                                "Look 1 ms",
                                "Look 1.5 ms",
                                "Look 3 ms",
                                "Look 5 ms"
                            ],
                            "parameter_initial": [
                                3
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Lookahead",
                            "parameter_mmax": 5,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Look",
                            "parameter_type": 2
                        }
                    },
                    "varname": "Lookahead"
                }
            },
            {
                "box": {
                    "annotation": "Also catches peaks that fall between samples, which can still clip a converter or an mp3. Adds 6 samples latency; switching fades out and back in like Lookahead. Default off",
                    "annotation_name": "True Peak",
                    "id": "obj-tp",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        465.0,
                        85.0,
                        48.0,
                        20.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        2.0,
                        78.0,
                        96.0,
                        20.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [
                                "off",
                                "on"
                            ],
                            "parameter_initial": [
                                0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "True Peak",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "TP",
                            "parameter_type": 2
                        }
                    },
                    "text": "True Pk",
                    "texton": "True Pk",
                    "varname": "True Peak"
                }
            },
            {
                "box": {
                    "annotation": "Off: the input passes untouched, without Drive, still delayed by the latency so nothing jumps. Fades over 20 ms. Default on",
                    "annotation_name": "On/Off",
                    "id": "obj-on",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        540.0,
                        85.0,
                        48.0,
                        20.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        5.0,
                        14.0,
                        44.0,
                        38.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [
                                "off",
                                "on"
                            ],
                            "parameter_initial": [
                                1
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "On/Off",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "On/Off",
                            "parameter_type": 2
                        }
                    },
                    "text": "Off",
                    "texton": "On",
                    "varname": "On/Off"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-looksel",
                    "maxclass": "newobj",
                    "numinlets": 7,
                    "numoutlets": 7,
                    "outlettype": [
                        "bang",
                        "bang",
                        "bang",
                        "bang",
                        "bang",
                        "bang",
                        ""
                    ],
                    "patching_rect": [
                        390.0,
                        150.0,
                        100.0,
                        22.0
                    ],
                    "text": "sel 0 1 2 3 4 5"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-lookms0",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        390.0,
                        180.0,
                        34.0,
                        22.0
                    ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-lookms1",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        428.0,
                        180.0,
                        34.0,
                        22.0
                    ],
                    "text": "0.5"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-lookms2",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        466.0,
                        180.0,
                        34.0,
                        22.0
                    ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-lookms3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        504.0,
                        180.0,
                        34.0,
                        22.0
                    ],
                    "text": "1.5"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-lookms4",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        542.0,
                        180.0,
                        34.0,
                        22.0
                    ],
                    "text": "3"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-lookms5",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        580.0,
                        180.0,
                        34.0,
                        22.0
                    ],
                    "text": "5"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-looknote",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        390.0,
                        205.0,
                        230.0,
                        20.0
                    ],
                    "text": "menu item -> lookahead in ms"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-core",
                    "maxclass": "newobj",
                    "numinlets": 8,
                    "numoutlets": 4,
                    "outlettype": [
                        "signal",
                        "signal",
                        "signal",
                        ""
                    ],
                    "patching_rect": [
                        15.0,
                        260.0,
                        570.0,
                        22.0
                    ],
                    "text": "br.limit.1.1"
                }
            },
            {
                "box": {
                    "comment": "Left Out (Signal)",
                    "id": "obj-out1",
                    "index": 1,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        380.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Right Out (Signal)",
                    "id": "obj-out2",
                    "index": 2,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        90.0,
                        380.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Gain Reduction (Signal) in dB, positive: 0 = none, 6 = turned down 6 dB. For meters",
                    "id": "obj-out3",
                    "index": 3,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        165.0,
                        380.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-grlabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        741.0,
                        481.0,
                        30.0,
                        20.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        101.0,
                        7.0,
                        26.0,
                        20.0
                    ],
                    "text": "GR",
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-grnote",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        656.0,
                        435.0,
                        480.0,
                        20.0
                    ],
                    "text": "GR meter: -GR on a -24..0 multislider; the dark bar fills from the bottom, so the green showing above it is the gain reduction, top down"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-signature",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        660.0,
                        15.0,
                        440.0,
                        33.0
                    ],
                    "text": "br.limit.ui.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-t1",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        660.0,
                        60.0,
                        420.0,
                        47.0
                    ],
                    "text": "Each inlet feeds its control, and each control feeds the core, so the screen always shows what you hear. Starting values are the controls' Initial Values: Drive 0, Ceiling -0.3, Release 100, Lookahead 1.5 ms, True Peak off, On."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-t2",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        660.0,
                        135.0,
                        420.0,
                        47.0
                    ],
                    "text": "[br.limit.1.1] is the real object: open it to see the gen~ inside. This file only adds the controls and the GR meter, so you can also patch the core directly and drive any control with a signal, including Lookahead in ms."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-t3",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        660.0,
                        195.0,
                        420.0,
                        47.0
                    ],
                    "text": "Latency = Lookahead, + 6 samples with True Peak. Lookahead 0 with True Peak off = no latency at all. Everything after the limiter is late by that much, which only matters if you mix it with an unlimited copy of the same signal."
                }
            },
            {
                "box": {
                    "id": "obj-grsnap",
                    "maxclass": "newobj",
                    "text": "snapshot~ 33",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        566.0,
                        435.0,
                        80.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "obj-grneg",
                    "maxclass": "newobj",
                    "text": "* -1.",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        566.0,
                        460.0,
                        40.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "obj-grclip",
                    "maxclass": "newobj",
                    "text": "clip -24. 0.",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        566.0,
                        485.0,
                        75.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "obj-grms",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        566.0,
                        515.0,
                        13.0,
                        112.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        108.0,
                        39.0,
                        13.0,
                        112.0
                    ],
                    "size": 1,
                    "setminmax": [
                        -24.0,
                        0.0
                    ],
                    "orientation": 1,
                    "setstyle": 1,
                    "ignoreclick": 1,
                    "slidercolor": [
                        0.079348079365577,
                        0.07934804057877,
                        0.079348050547289,
                        1.0
                    ],
                    "bgcolor": [
                        0.047059,
                        0.972549,
                        0.392157,
                        1.0
                    ],
                    "annotation": "Gain reduction in dB, coming down from the top: 0 = none, full = 24 dB"
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "annotation": "br.limit.ui.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
                    "background": 1,
                    "bgcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "hint": "br.limit.ui.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
                    "id": "obj-panel",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        660.0,
                        290.0,
                        160.0,
                        74.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        -10.0,
                        0.0,
                        145.0,
                        164.0
                    ],
                    "proportion": 0.5,
                    "rounded": 7
                }
            },
            {
                "box": {
                    "maxclass": "outlet",
                    "id": "obj-1",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        210.0,
                        380.0,
                        30.0,
                        30.0
                    ],
                    "comment": "State (Message): drive <dB>, ceiling <dBFS>, release <ms>, lookahead <ms>, truepeak 0/1 and on 0/1, sent the moment a control changes. Numbers only (signals are not reported). Pick them out by name: [route drive ceiling release lookahead truepeak on]"
                }
            },
            {
                "box": {
                    "maxclass": "comment",
                    "id": "obj-2",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        660.0,
                        516.0,
                        420.0,
                        61.0
                    ],
                    "text": "The last outlet (State) reports the controls as drive <dB>, ceiling <dBFS>, release <ms>, lookahead <ms>, truepeak 0/1 and on 0/1 the moment they change. It comes from the core, so moving a control, numbers into the inlets and preset recalls all show up. Pick them out by name with [route drive ceiling release lookahead truepeak on].",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        3
                    ],
                    "source": [
                        "obj-ceil",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-out1",
                        0
                    ],
                    "source": [
                        "obj-core",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-out2",
                        0
                    ],
                    "source": [
                        "obj-core",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-out3",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-core",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        2
                    ],
                    "source": [
                        "obj-drive",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        0
                    ],
                    "source": [
                        "obj-in1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        1
                    ],
                    "source": [
                        "obj-in2",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-drive",
                        0
                    ],
                    "source": [
                        "obj-in3",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-ceil",
                        0
                    ],
                    "source": [
                        "obj-in4",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-rel",
                        0
                    ],
                    "source": [
                        "obj-in5",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-look",
                        0
                    ],
                    "source": [
                        "obj-in6",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-tp",
                        0
                    ],
                    "source": [
                        "obj-in7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-on",
                        0
                    ],
                    "source": [
                        "obj-in8",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-looksel",
                        0
                    ],
                    "source": [
                        "obj-look",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        5
                    ],
                    "source": [
                        "obj-lookms0",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        5
                    ],
                    "source": [
                        "obj-lookms1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        5
                    ],
                    "source": [
                        "obj-lookms2",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        5
                    ],
                    "source": [
                        "obj-lookms3",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        5
                    ],
                    "source": [
                        "obj-lookms4",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        5
                    ],
                    "source": [
                        "obj-lookms5",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-lookms0",
                        0
                    ],
                    "source": [
                        "obj-looksel",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-lookms1",
                        0
                    ],
                    "source": [
                        "obj-looksel",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-lookms2",
                        0
                    ],
                    "source": [
                        "obj-looksel",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-lookms3",
                        0
                    ],
                    "source": [
                        "obj-looksel",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-lookms4",
                        0
                    ],
                    "source": [
                        "obj-looksel",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-lookms5",
                        0
                    ],
                    "source": [
                        "obj-looksel",
                        5
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        7
                    ],
                    "source": [
                        "obj-on",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        4
                    ],
                    "source": [
                        "obj-rel",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        6
                    ],
                    "source": [
                        "obj-tp",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-core",
                        2
                    ],
                    "destination": [
                        "obj-grsnap",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-grsnap",
                        0
                    ],
                    "destination": [
                        "obj-grneg",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-grneg",
                        0
                    ],
                    "destination": [
                        "obj-grclip",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-grclip",
                        0
                    ],
                    "destination": [
                        "obj-grms",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-core",
                        3
                    ],
                    "destination": [
                        "obj-1",
                        0
                    ]
                }
            }
        ]
    }
}