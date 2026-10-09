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
        "rect": [
            85.0,
            104.0,
            1520.0,
            757.0
        ],
        "description": "_br.limit.example.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
        "showontab": 1,
        "boxes": [
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-source",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
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
                        "rect": [
                            100.0,
                            100.0,
                            1000.0,
                            620.0
                        ],
                        "boxes": [
                            {
                                "box": {
                                    "comment": "Source (Int) 0 Off, 1 drum loop, 2 Anton, 3 plucks, 4 drum L / Anton R, 5 mic (adc~ 1)",
                                    "id": "s-in",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
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
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-t",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [
                                        "int",
                                        "int",
                                        "int",
                                        "int",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        15.0,
                                        50.0,
                                        100.0,
                                        22.0
                                    ],
                                    "text": "t i i i i i"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-lb",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        640.0,
                                        15.0,
                                        72.0,
                                        22.0
                                    ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-lbt",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "bang",
                                        "bang",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        640.0,
                                        45.0,
                                        65.0,
                                        22.0
                                    ],
                                    "text": "t b b b"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-note1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        15.0,
                                        80.0,
                                        260.0,
                                        20.0
                                    ],
                                    "text": "drumLoop.aif and anton.aif ship with Max"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-m1",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        15.0,
                                        110.0,
                                        212.0,
                                        22.0
                                    ],
                                    "text": "open drumLoop.aif, loop 1, 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-p1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        15.0,
                                        140.0,
                                        79.0,
                                        22.0
                                    ],
                                    "text": "sfplay~ 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-m2",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        240.0,
                                        110.0,
                                        191.0,
                                        22.0
                                    ],
                                    "text": "open anton.aif, loop 1, 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-p2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        240.0,
                                        140.0,
                                        79.0,
                                        22.0
                                    ],
                                    "text": "sfplay~ 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-note2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        640.0,
                                        80.0,
                                        420.0,
                                        20.0
                                    ],
                                    "text": "plucks: one every 1.2 s, random pitch, so each echo is easy to hear"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-on",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        640.0,
                                        110.0,
                                        40.0,
                                        22.0
                                    ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-metro",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        640.0,
                                        140.0,
                                        79.0,
                                        22.0
                                    ],
                                    "text": "metro 1200"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-pt",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "bang",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        640.0,
                                        170.0,
                                        51.0,
                                        22.0
                                    ],
                                    "text": "t b b"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-r1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        640.0,
                                        200.0,
                                        86.0,
                                        22.0
                                    ],
                                    "text": "random 100"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-sc",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        640.0,
                                        230.0,
                                        130.0,
                                        22.0
                                    ],
                                    "text": "scale 0 99 0.4 1."
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-env",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        640.0,
                                        260.0,
                                        93.0,
                                        22.0
                                    ],
                                    "text": "$1 1 0. 220"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-envl",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        640.0,
                                        290.0,
                                        51.0,
                                        22.0
                                    ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-r2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        800.0,
                                        200.0,
                                        79.0,
                                        22.0
                                    ],
                                    "text": "random 12"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-plus",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        800.0,
                                        230.0,
                                        44.0,
                                        22.0
                                    ],
                                    "text": "+ 48"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-mtof",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        800.0,
                                        260.0,
                                        44.0,
                                        22.0
                                    ],
                                    "text": "mtof"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-saw",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        800.0,
                                        290.0,
                                        44.0,
                                        22.0
                                    ],
                                    "text": "saw~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-pl",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        640.0,
                                        320.0,
                                        40.0,
                                        22.0
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-adc",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        900.0,
                                        140.0,
                                        58.0,
                                        22.0
                                    ],
                                    "text": "adc~ 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-eq1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        15.0,
                                        370.0,
                                        44.0,
                                        22.0
                                    ],
                                    "text": "== 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-f1",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        15.0,
                                        400.0,
                                        51.0,
                                        22.0
                                    ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-l1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        15.0,
                                        430.0,
                                        51.0,
                                        22.0
                                    ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-eq2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        200.0,
                                        370.0,
                                        44.0,
                                        22.0
                                    ],
                                    "text": "== 2"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-f2",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        200.0,
                                        400.0,
                                        51.0,
                                        22.0
                                    ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-l2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        200.0,
                                        430.0,
                                        51.0,
                                        22.0
                                    ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-eq3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        385.0,
                                        370.0,
                                        44.0,
                                        22.0
                                    ],
                                    "text": "== 3"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-f3",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        385.0,
                                        400.0,
                                        51.0,
                                        22.0
                                    ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-l3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        385.0,
                                        430.0,
                                        51.0,
                                        22.0
                                    ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-eq4",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        570.0,
                                        370.0,
                                        44.0,
                                        22.0
                                    ],
                                    "text": "== 4"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-f4",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        570.0,
                                        400.0,
                                        51.0,
                                        22.0
                                    ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-l4",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        570.0,
                                        430.0,
                                        51.0,
                                        22.0
                                    ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-eq5",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        815.0,
                                        370.0,
                                        44.0,
                                        22.0
                                    ],
                                    "text": "== 5"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-f5",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        815.0,
                                        400.0,
                                        51.0,
                                        22.0
                                    ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-l5",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        815.0,
                                        430.0,
                                        51.0,
                                        22.0
                                    ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-g1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        15.0,
                                        460.0,
                                        40.0,
                                        22.0
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-g2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        200.0,
                                        460.0,
                                        40.0,
                                        22.0
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-g3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        385.0,
                                        460.0,
                                        40.0,
                                        22.0
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-g5",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        815.0,
                                        460.0,
                                        40.0,
                                        22.0
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-g4l",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        570.0,
                                        460.0,
                                        40.0,
                                        22.0
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-g4r",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        640.0,
                                        460.0,
                                        40.0,
                                        22.0
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-outL",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        15.0,
                                        510.0,
                                        58.0,
                                        22.0
                                    ],
                                    "text": "*~ 0.7"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-outR",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        200.0,
                                        510.0,
                                        58.0,
                                        22.0
                                    ],
                                    "text": "*~ 0.7"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-note3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        280.0,
                                        510.0,
                                        560.0,
                                        20.0
                                    ],
                                    "text": "each source has its own 20 ms fade: switching never clicks (selector~ would). 0 = Off: every fade closes"
                                }
                            },
                            {
                                "box": {
                                    "comment": "Left Source (Signal)",
                                    "id": "s-o1",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        15.0,
                                        550.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Right Source (Signal)",
                                    "id": "s-o2",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        200.0,
                                        550.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [
                                        "s-g5",
                                        0
                                    ],
                                    "source": [
                                        "s-adc",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-envl",
                                        0
                                    ],
                                    "source": [
                                        "s-env",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-pl",
                                        0
                                    ],
                                    "source": [
                                        "s-envl",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-f1",
                                        0
                                    ],
                                    "source": [
                                        "s-eq1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-f2",
                                        0
                                    ],
                                    "source": [
                                        "s-eq2",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-f3",
                                        0
                                    ],
                                    "source": [
                                        "s-eq3",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-f4",
                                        0
                                    ],
                                    "source": [
                                        "s-eq4",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-f5",
                                        0
                                    ],
                                    "source": [
                                        "s-eq5",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-l1",
                                        0
                                    ],
                                    "source": [
                                        "s-f1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-l2",
                                        0
                                    ],
                                    "source": [
                                        "s-f2",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-l3",
                                        0
                                    ],
                                    "source": [
                                        "s-f3",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-l4",
                                        0
                                    ],
                                    "source": [
                                        "s-f4",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-l5",
                                        0
                                    ],
                                    "source": [
                                        "s-f5",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-outL",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "s-g1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-outR",
                                        0
                                    ],
                                    "order": 0,
                                    "source": [
                                        "s-g1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-outL",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "s-g2",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-outR",
                                        0
                                    ],
                                    "order": 0,
                                    "source": [
                                        "s-g2",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-outL",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "s-g3",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-outR",
                                        0
                                    ],
                                    "order": 0,
                                    "source": [
                                        "s-g3",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-outL",
                                        0
                                    ],
                                    "source": [
                                        "s-g4l",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-outR",
                                        0
                                    ],
                                    "source": [
                                        "s-g4r",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-outL",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "s-g5",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-outR",
                                        0
                                    ],
                                    "order": 0,
                                    "source": [
                                        "s-g5",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-t",
                                        0
                                    ],
                                    "source": [
                                        "s-in",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-g1",
                                        1
                                    ],
                                    "source": [
                                        "s-l1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-g2",
                                        1
                                    ],
                                    "source": [
                                        "s-l2",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-g3",
                                        1
                                    ],
                                    "source": [
                                        "s-l3",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-g4l",
                                        1
                                    ],
                                    "order": 1,
                                    "source": [
                                        "s-l4",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-g4r",
                                        1
                                    ],
                                    "order": 0,
                                    "source": [
                                        "s-l4",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-g5",
                                        1
                                    ],
                                    "source": [
                                        "s-l5",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-lbt",
                                        0
                                    ],
                                    "source": [
                                        "s-lb",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-m1",
                                        0
                                    ],
                                    "source": [
                                        "s-lbt",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-m2",
                                        0
                                    ],
                                    "source": [
                                        "s-lbt",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-on",
                                        0
                                    ],
                                    "source": [
                                        "s-lbt",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-p1",
                                        0
                                    ],
                                    "source": [
                                        "s-m1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-p2",
                                        0
                                    ],
                                    "source": [
                                        "s-m2",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-pt",
                                        0
                                    ],
                                    "source": [
                                        "s-metro",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-saw",
                                        0
                                    ],
                                    "source": [
                                        "s-mtof",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-metro",
                                        0
                                    ],
                                    "source": [
                                        "s-on",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-o1",
                                        0
                                    ],
                                    "source": [
                                        "s-outL",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-o2",
                                        0
                                    ],
                                    "source": [
                                        "s-outR",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-g1",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "s-p1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-g4l",
                                        0
                                    ],
                                    "order": 0,
                                    "source": [
                                        "s-p1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-g2",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "s-p2",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-g4r",
                                        0
                                    ],
                                    "order": 0,
                                    "source": [
                                        "s-p2",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-g3",
                                        0
                                    ],
                                    "source": [
                                        "s-pl",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-mtof",
                                        0
                                    ],
                                    "source": [
                                        "s-plus",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-r1",
                                        0
                                    ],
                                    "source": [
                                        "s-pt",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-r2",
                                        0
                                    ],
                                    "source": [
                                        "s-pt",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-sc",
                                        0
                                    ],
                                    "source": [
                                        "s-r1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-plus",
                                        0
                                    ],
                                    "source": [
                                        "s-r2",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-pl",
                                        1
                                    ],
                                    "source": [
                                        "s-saw",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-env",
                                        0
                                    ],
                                    "source": [
                                        "s-sc",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-eq1",
                                        0
                                    ],
                                    "source": [
                                        "s-t",
                                        4
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-eq2",
                                        0
                                    ],
                                    "source": [
                                        "s-t",
                                        3
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-eq3",
                                        0
                                    ],
                                    "source": [
                                        "s-t",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-eq4",
                                        0
                                    ],
                                    "source": [
                                        "s-t",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-eq5",
                                        0
                                    ],
                                    "source": [
                                        "s-t",
                                        0
                                    ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [
                        729.0,
                        104.0,
                        120.0,
                        22.0
                    ],
                    "text": "p source"
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
                        630.0,
                        15.0,
                        463.0,
                        33.0
                    ],
                    "text": "_br.limit.example.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        15.0,
                        300.0,
                        20.0
                    ],
                    "text": "br.limit"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n1",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        45.0,
                        500.0,
                        47.0
                    ],
                    "text": "A stereo safety brickwall limiter: the output never goes above the Ceiling, however hard Drive pushes it. The louder side sets the gain for both sides, so the stereo image never moves."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n2",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        118.0,
                        692.0,
                        60.0
                    ],
                    "text": "Four files, same DSP inside:\nbr.limit.1.2 = stereo core, no UI (in: L, R, Drive, Ceiling, Release, Lookahead ms, True Peak, On/Off; out: L, R, gain reduction dB).\nbr.limit.ui.1.2 = the same with controls and a GR meter. br.limit.mono.1.2 and br.limit.mono.ui.1.2 = mono."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n3",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        220.0,
                        564.0,
                        33.0
                    ],
                    "text": "A: the UI. Raise A's slider, push Drive up, and compare Lookahead 0 ms with 1.5 ms on drums. Try True Pk, short and long Release, and On/Off."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n4",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        281.0,
                        560.0,
                        33.0
                    ],
                    "text": "B: the mono core alone, left channel only, with Drive +18 dB, Ceiling -6 dB and Lookahead 0 ms: no latency, so it can sit in a live monitoring path. Listen to how hard hits flatten."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        342.0,
                        560.0,
                        20.0
                    ],
                    "text": "Numbers into the UI's inlets move its controls. Hover any inlet or outlet for its range and default."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        560.0,
                        740.0,
                        20.0
                    ],
                    "text": "Pick a source in the menu (it starts Off). Outputs start muted at -70 dB: turn on audio, then raise A or B slowly."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        590.0,
                        300.0,
                        20.0
                    ],
                    "text": "By Brian Riordan. github.com/guaguanco127"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-alabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        832.0,
                        149.0,
                        145.0,
                        20.0
                    ],
                    "text": "A: br.limit.ui.1.2"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-a",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "br.limit.ui.1.2.maxpat",
                    "numinlets": 8,
                    "numoutlets": 4,
                    "offset": [
                        0.0,
                        0.0
                    ],
                    "outlettype": [
                        "signal",
                        "signal",
                        "signal",
                        ""
                    ],
                    "patching_rect": [
                        729.0,
                        174.0,
                        133.0,
                        162.0
                    ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-blabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        979.0,
                        144.0,
                        260.0,
                        20.0
                    ],
                    "text": "B: mono core, no latency, pushed hard"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-b",
                    "maxclass": "newobj",
                    "numinlets": 7,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
                    "patching_rect": [
                        979.0,
                        349.0,
                        300.0,
                        22.0
                    ],
                    "text": "br.limit.mono.1.2"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-bnote",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1284.0,
                        349.0,
                        40.0,
                        20.0
                    ],
                    "text": "core"
                }
            },
            {
                "box": {
                    "id": "obj-gaina",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [
                        "signal",
                        "signal",
                        "",
                        "float",
                        "list"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        729.0,
                        399.0,
                        48.0,
                        136.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                -70.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "A out",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "A",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "A out"
                }
            },
            {
                "box": {
                    "id": "obj-gainb",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [
                        "signal",
                        "signal",
                        "",
                        "float",
                        "list"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        979.0,
                        399.0,
                        48.0,
                        136.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                -70.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "B out",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "B",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "B out"
                }
            },
            {
                "box": {
                    "id": "obj-dactog",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        799.0,
                        399.0,
                        24.0,
                        24.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-dacnote",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        829.0,
                        399.0,
                        75.0,
                        20.0
                    ],
                    "text": "audio on/off"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-dac",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        729.0,
                        559.0,
                        72.0,
                        22.0
                    ],
                    "text": "dac~ 1 2"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-menu",
                    "items": [
                        "Off",
                        ",",
                        "drum loop",
                        ",",
                        "Anton",
                        ",",
                        "plucks (synth)",
                        ",",
                        "drum L / Anton R",
                        ",",
                        "mic (adc~ 1)"
                    ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "int",
                        "",
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        729.0,
                        74.0,
                        150.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-menunote",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        884.0,
                        74.0,
                        200.0,
                        20.0
                    ],
                    "text": "source: Off until you pick one"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-drv",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1019.0,
                        199.0,
                        80.0,
                        22.0
                    ],
                    "text": "loadmess 18"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-drvn",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1104.0,
                        199.0,
                        100.0,
                        20.0
                    ],
                    "text": "Drive +18 dB"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-ceil",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1059.0,
                        239.0,
                        80.0,
                        22.0
                    ],
                    "text": "loadmess -6"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-ceiln",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1144.0,
                        239.0,
                        110.0,
                        20.0
                    ],
                    "text": "Ceiling -6 dBFS"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-look",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1139.0,
                        279.0,
                        75.0,
                        22.0
                    ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-lookn",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1219.0,
                        279.0,
                        180.0,
                        20.0
                    ],
                    "text": "Lookahead 0 ms = no latency"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-grsnap",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        1229.0,
                        399.0,
                        90.0,
                        22.0
                    ],
                    "text": "snapshot~ 100"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "format": 6,
                    "id": "obj-grnum",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        1229.0,
                        424.0,
                        60.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-grn",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1294.0,
                        424.0,
                        130.0,
                        20.0
                    ],
                    "text": "B gain reduction dB"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-1",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        370.0,
                        560.0,
                        60.0
                    ],
                    "text": "State outlet: each UI has a last outlet that sends drive <dB>, ceiling <dBFS>, release <ms>, lookahead <ms>, truepeak 0/1 and on 0/1 the moment a control changes. The cores have none: whatever drives a core already knows the values. Open [p State outlet] (also a tab at the top) to see it read by name with [route drive ceiling release lookahead truepeak on]."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
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
                        "rect": [
                            0.0,
                            26.0,
                            1520.0,
                            731.0
                        ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "comment": "State from A (UI)",
                                    "id": "obj-1",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        30.0,
                                        95.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-2",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        15.0,
                                        600.0,
                                        60.0
                                    ],
                                    "text": "Each br.limit UI sends its state out of its LAST outlet as named messages: drive <dB>, ceiling <dBFS>, release <ms>, lookahead <ms>, truepeak 0/1 and on 0/1, the moment a control changes. Read them by NAME with [route drive ceiling release lookahead truepeak on], never by position: names stay put when a tool gains controls."
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        70.0,
                                        100.0,
                                        58.0,
                                        20.0
                                    ],
                                    "text": "A (UI)"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 7,
                                    "numoutlets": 7,
                                    "outlettype": [
                                        "",
                                        "",
                                        "",
                                        "",
                                        "",
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        30.0,
                                        135.0,
                                        359.0,
                                        22.0
                                    ],
                                    "text": "route drive ceiling release lookahead truepeak on"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-5",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        30.0,
                                        170.0,
                                        50.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-6",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        195.0,
                                        51.0,
                                        20.0
                                    ],
                                    "text": "drive"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-7",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        100.0,
                                        170.0,
                                        50.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-8",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        100.0,
                                        195.0,
                                        65.0,
                                        20.0
                                    ],
                                    "text": "ceiling"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-9",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        181.0,
                                        170.0,
                                        50.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-10",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        181.0,
                                        195.0,
                                        65.0,
                                        20.0
                                    ],
                                    "text": "release"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-11",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        262.0,
                                        170.0,
                                        50.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-12",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        262.0,
                                        195.0,
                                        79.0,
                                        20.0
                                    ],
                                    "text": "lookahead"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        359.0,
                                        170.0,
                                        50.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-14",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        359.0,
                                        195.0,
                                        72.0,
                                        20.0
                                    ],
                                    "text": "truepeak"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        448.0,
                                        170.0,
                                        50.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-16",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        448.0,
                                        195.0,
                                        40.0,
                                        20.0
                                    ],
                                    "text": "on"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-4",
                                        0
                                    ],
                                    "source": [
                                        "obj-1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-11",
                                        0
                                    ],
                                    "source": [
                                        "obj-4",
                                        3
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-13",
                                        0
                                    ],
                                    "source": [
                                        "obj-4",
                                        4
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-15",
                                        0
                                    ],
                                    "source": [
                                        "obj-4",
                                        5
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-5",
                                        0
                                    ],
                                    "source": [
                                        "obj-4",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-7",
                                        0
                                    ],
                                    "source": [
                                        "obj-4",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-9",
                                        0
                                    ],
                                    "source": [
                                        "obj-4",
                                        2
                                    ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [
                        820.0,
                        354.0,
                        128.0,
                        22.0
                    ],
                    "text": "p \"State outlet\""
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-coretab",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patching_rect": [
                        963.0,
                        354.0,
                        121.0,
                        22.0
                    ],
                    "text": "p \"stereo core\"",
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
                        "rect": [
                            0.0,
                            26.0,
                            1100.0,
                            640.0
                        ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "c-head",
                                    "maxclass": "comment",
                                    "text": "Stereo core: br.limit.1.2",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        15,
                                        15,
                                        420,
                                        27.0
                                    ],
                                    "fontsize": 18.0,
                                    "fontname": "Arial"
                                }
                            },
                            {
                                "box": {
                                    "id": "c-t0",
                                    "maxclass": "comment",
                                    "text": "The stereo core is the same limiter as the UI with no controls. In: Left, Right, Drive, Ceiling, Release, Lookahead, True Peak, On/Off. Out: Left, Right, Gain Reduction. The control inlets take numbers or signals.",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        15,
                                        55.0,
                                        380.0,
                                        60.0
                                    ],
                                    "fontsize": 12.0,
                                    "linecount": 4,
                                    "fontname": "Arial"
                                }
                            },
                            {
                                "box": {
                                    "id": "c-t1",
                                    "maxclass": "comment",
                                    "text": "Pick a source (it starts Off). Drive +12 dB into a -6 dBFS ceiling: push Drive further and the output still holds. Lookahead stays at its default 1.5 ms, so the output is 1.5 ms late. Hover any inlet for its range and default.",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        15,
                                        129.0,
                                        380.0,
                                        60.0
                                    ],
                                    "fontsize": 12.0,
                                    "linecount": 4,
                                    "fontname": "Arial"
                                }
                            },
                            {
                                "box": {
                                    "id": "c-tmuted",
                                    "maxclass": "comment",
                                    "text": "Outputs start muted at -70 dB: turn on audio, then raise the slider slowly.",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        15,
                                        203.0,
                                        380.0,
                                        33.0
                                    ],
                                    "fontsize": 12.0,
                                    "linecount": 2,
                                    "fontname": "Arial"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-menu",
                                    "items": [
                                        "Off",
                                        ",",
                                        "drum loop",
                                        ",",
                                        "Anton",
                                        ",",
                                        "plucks (synth)",
                                        ",",
                                        "drum L / Anton R",
                                        ",",
                                        "mic (adc~ 1)"
                                    ],
                                    "maxclass": "umenu",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "int",
                                        "",
                                        ""
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        460.0,
                                        15.0,
                                        150.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-menunote",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        615.0,
                                        15.0,
                                        200.0,
                                        20.0
                                    ],
                                    "text": "source: Off until you pick one"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-source",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "signal"
                                    ],
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
                                        "rect": [
                                            100.0,
                                            100.0,
                                            1000.0,
                                            620.0
                                        ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "comment": "Source (Int) 0 Off, 1 drum loop, 2 Anton, 3 plucks, 4 drum L / Anton R, 5 mic (adc~ 1)",
                                                    "id": "s-in",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "int"
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
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-t",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 5,
                                                    "outlettype": [
                                                        "int",
                                                        "int",
                                                        "int",
                                                        "int",
                                                        "int"
                                                    ],
                                                    "patching_rect": [
                                                        15.0,
                                                        50.0,
                                                        100.0,
                                                        22.0
                                                    ],
                                                    "text": "t i i i i i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-lb",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "bang"
                                                    ],
                                                    "patching_rect": [
                                                        640.0,
                                                        15.0,
                                                        72.0,
                                                        22.0
                                                    ],
                                                    "text": "loadbang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-lbt",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [
                                                        "bang",
                                                        "bang",
                                                        "bang"
                                                    ],
                                                    "patching_rect": [
                                                        640.0,
                                                        45.0,
                                                        65.0,
                                                        22.0
                                                    ],
                                                    "text": "t b b b"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-note1",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [
                                                        15.0,
                                                        80.0,
                                                        260.0,
                                                        20.0
                                                    ],
                                                    "text": "drumLoop.aif and anton.aif ship with Max"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-m1",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        15.0,
                                                        110.0,
                                                        212.0,
                                                        22.0
                                                    ],
                                                    "text": "open drumLoop.aif, loop 1, 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-p1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "signal",
                                                        "bang"
                                                    ],
                                                    "patching_rect": [
                                                        15.0,
                                                        140.0,
                                                        79.0,
                                                        22.0
                                                    ],
                                                    "text": "sfplay~ 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-m2",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        240.0,
                                                        110.0,
                                                        191.0,
                                                        22.0
                                                    ],
                                                    "text": "open anton.aif, loop 1, 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-p2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "signal",
                                                        "bang"
                                                    ],
                                                    "patching_rect": [
                                                        240.0,
                                                        140.0,
                                                        79.0,
                                                        22.0
                                                    ],
                                                    "text": "sfplay~ 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-note2",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [
                                                        640.0,
                                                        80.0,
                                                        420.0,
                                                        20.0
                                                    ],
                                                    "text": "plucks: one every 1.2 s, random pitch, so each echo is easy to hear"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-on",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        640.0,
                                                        110.0,
                                                        40.0,
                                                        22.0
                                                    ],
                                                    "text": "1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-metro",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "bang"
                                                    ],
                                                    "patching_rect": [
                                                        640.0,
                                                        140.0,
                                                        79.0,
                                                        22.0
                                                    ],
                                                    "text": "metro 1200"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-pt",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "bang",
                                                        "bang"
                                                    ],
                                                    "patching_rect": [
                                                        640.0,
                                                        170.0,
                                                        51.0,
                                                        22.0
                                                    ],
                                                    "text": "t b b"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-r1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        640.0,
                                                        200.0,
                                                        86.0,
                                                        22.0
                                                    ],
                                                    "text": "random 100"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-sc",
                                                    "maxclass": "newobj",
                                                    "numinlets": 6,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        640.0,
                                                        230.0,
                                                        130.0,
                                                        22.0
                                                    ],
                                                    "text": "scale 0 99 0.4 1."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-env",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        640.0,
                                                        260.0,
                                                        93.0,
                                                        22.0
                                                    ],
                                                    "text": "$1 1 0. 220"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-envl",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "signal",
                                                        "bang"
                                                    ],
                                                    "patching_rect": [
                                                        640.0,
                                                        290.0,
                                                        51.0,
                                                        22.0
                                                    ],
                                                    "text": "line~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-r2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        800.0,
                                                        200.0,
                                                        79.0,
                                                        22.0
                                                    ],
                                                    "text": "random 12"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-plus",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "int"
                                                    ],
                                                    "patching_rect": [
                                                        800.0,
                                                        230.0,
                                                        44.0,
                                                        22.0
                                                    ],
                                                    "text": "+ 48"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-mtof",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        800.0,
                                                        260.0,
                                                        44.0,
                                                        22.0
                                                    ],
                                                    "text": "mtof"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-saw",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "signal"
                                                    ],
                                                    "patching_rect": [
                                                        800.0,
                                                        290.0,
                                                        44.0,
                                                        22.0
                                                    ],
                                                    "text": "saw~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-pl",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "signal"
                                                    ],
                                                    "patching_rect": [
                                                        640.0,
                                                        320.0,
                                                        40.0,
                                                        22.0
                                                    ],
                                                    "text": "*~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-adc",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "signal"
                                                    ],
                                                    "patching_rect": [
                                                        900.0,
                                                        140.0,
                                                        58.0,
                                                        22.0
                                                    ],
                                                    "text": "adc~ 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-eq1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "int"
                                                    ],
                                                    "patching_rect": [
                                                        15.0,
                                                        370.0,
                                                        44.0,
                                                        22.0
                                                    ],
                                                    "text": "== 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-f1",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        15.0,
                                                        400.0,
                                                        51.0,
                                                        22.0
                                                    ],
                                                    "text": "$1 20"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-l1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "signal",
                                                        "bang"
                                                    ],
                                                    "patching_rect": [
                                                        15.0,
                                                        430.0,
                                                        51.0,
                                                        22.0
                                                    ],
                                                    "text": "line~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-eq2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "int"
                                                    ],
                                                    "patching_rect": [
                                                        200.0,
                                                        370.0,
                                                        44.0,
                                                        22.0
                                                    ],
                                                    "text": "== 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-f2",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        200.0,
                                                        400.0,
                                                        51.0,
                                                        22.0
                                                    ],
                                                    "text": "$1 20"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-l2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "signal",
                                                        "bang"
                                                    ],
                                                    "patching_rect": [
                                                        200.0,
                                                        430.0,
                                                        51.0,
                                                        22.0
                                                    ],
                                                    "text": "line~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-eq3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "int"
                                                    ],
                                                    "patching_rect": [
                                                        385.0,
                                                        370.0,
                                                        44.0,
                                                        22.0
                                                    ],
                                                    "text": "== 3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-f3",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        385.0,
                                                        400.0,
                                                        51.0,
                                                        22.0
                                                    ],
                                                    "text": "$1 20"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-l3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "signal",
                                                        "bang"
                                                    ],
                                                    "patching_rect": [
                                                        385.0,
                                                        430.0,
                                                        51.0,
                                                        22.0
                                                    ],
                                                    "text": "line~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-eq4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "int"
                                                    ],
                                                    "patching_rect": [
                                                        570.0,
                                                        370.0,
                                                        44.0,
                                                        22.0
                                                    ],
                                                    "text": "== 4"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-f4",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        570.0,
                                                        400.0,
                                                        51.0,
                                                        22.0
                                                    ],
                                                    "text": "$1 20"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-l4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "signal",
                                                        "bang"
                                                    ],
                                                    "patching_rect": [
                                                        570.0,
                                                        430.0,
                                                        51.0,
                                                        22.0
                                                    ],
                                                    "text": "line~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-eq5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "int"
                                                    ],
                                                    "patching_rect": [
                                                        815.0,
                                                        370.0,
                                                        44.0,
                                                        22.0
                                                    ],
                                                    "text": "== 5"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-f5",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        815.0,
                                                        400.0,
                                                        51.0,
                                                        22.0
                                                    ],
                                                    "text": "$1 20"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-l5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "signal",
                                                        "bang"
                                                    ],
                                                    "patching_rect": [
                                                        815.0,
                                                        430.0,
                                                        51.0,
                                                        22.0
                                                    ],
                                                    "text": "line~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-g1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "signal"
                                                    ],
                                                    "patching_rect": [
                                                        15.0,
                                                        460.0,
                                                        40.0,
                                                        22.0
                                                    ],
                                                    "text": "*~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-g2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "signal"
                                                    ],
                                                    "patching_rect": [
                                                        200.0,
                                                        460.0,
                                                        40.0,
                                                        22.0
                                                    ],
                                                    "text": "*~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-g3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "signal"
                                                    ],
                                                    "patching_rect": [
                                                        385.0,
                                                        460.0,
                                                        40.0,
                                                        22.0
                                                    ],
                                                    "text": "*~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-g5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "signal"
                                                    ],
                                                    "patching_rect": [
                                                        815.0,
                                                        460.0,
                                                        40.0,
                                                        22.0
                                                    ],
                                                    "text": "*~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-g4l",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "signal"
                                                    ],
                                                    "patching_rect": [
                                                        570.0,
                                                        460.0,
                                                        40.0,
                                                        22.0
                                                    ],
                                                    "text": "*~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-g4r",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "signal"
                                                    ],
                                                    "patching_rect": [
                                                        640.0,
                                                        460.0,
                                                        40.0,
                                                        22.0
                                                    ],
                                                    "text": "*~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-outL",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "signal"
                                                    ],
                                                    "patching_rect": [
                                                        15.0,
                                                        510.0,
                                                        58.0,
                                                        22.0
                                                    ],
                                                    "text": "*~ 0.7"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-outR",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "signal"
                                                    ],
                                                    "patching_rect": [
                                                        200.0,
                                                        510.0,
                                                        58.0,
                                                        22.0
                                                    ],
                                                    "text": "*~ 0.7"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "s-note3",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [
                                                        280.0,
                                                        510.0,
                                                        560.0,
                                                        20.0
                                                    ],
                                                    "text": "each source has its own 20 ms fade: switching never clicks (selector~ would). 0 = Off: every fade closes"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "Left Source (Signal)",
                                                    "id": "s-o1",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [
                                                        15.0,
                                                        550.0,
                                                        30.0,
                                                        30.0
                                                    ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "Right Source (Signal)",
                                                    "id": "s-o2",
                                                    "index": 2,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [
                                                        200.0,
                                                        550.0,
                                                        30.0,
                                                        30.0
                                                    ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-g5",
                                                        0
                                                    ],
                                                    "source": [
                                                        "s-adc",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-envl",
                                                        0
                                                    ],
                                                    "source": [
                                                        "s-env",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-pl",
                                                        0
                                                    ],
                                                    "source": [
                                                        "s-envl",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-f1",
                                                        0
                                                    ],
                                                    "source": [
                                                        "s-eq1",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-f2",
                                                        0
                                                    ],
                                                    "source": [
                                                        "s-eq2",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-f3",
                                                        0
                                                    ],
                                                    "source": [
                                                        "s-eq3",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-f4",
                                                        0
                                                    ],
                                                    "source": [
                                                        "s-eq4",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-f5",
                                                        0
                                                    ],
                                                    "source": [
                                                        "s-eq5",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-l1",
                                                        0
                                                    ],
                                                    "source": [
                                                        "s-f1",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-l2",
                                                        0
                                                    ],
                                                    "source": [
                                                        "s-f2",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-l3",
                                                        0
                                                    ],
                                                    "source": [
                                                        "s-f3",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-l4",
                                                        0
                                                    ],
                                                    "source": [
                                                        "s-f4",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-l5",
                                                        0
                                                    ],
                                                    "source": [
                                                        "s-f5",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-outL",
                                                        0
                                                    ],
                                                    "order": 1,
                                                    "source": [
                                                        "s-g1",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-outR",
                                                        0
                                                    ],
                                                    "order": 0,
                                                    "source": [
                                                        "s-g1",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-outL",
                                                        0
                                                    ],
                                                    "order": 1,
                                                    "source": [
                                                        "s-g2",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-outR",
                                                        0
                                                    ],
                                                    "order": 0,
                                                    "source": [
                                                        "s-g2",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-outL",
                                                        0
                                                    ],
                                                    "order": 1,
                                                    "source": [
                                                        "s-g3",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-outR",
                                                        0
                                                    ],
                                                    "order": 0,
                                                    "source": [
                                                        "s-g3",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-outL",
                                                        0
                                                    ],
                                                    "source": [
                                                        "s-g4l",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-outR",
                                                        0
                                                    ],
                                                    "source": [
                                                        "s-g4r",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-outL",
                                                        0
                                                    ],
                                                    "order": 1,
                                                    "source": [
                                                        "s-g5",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-outR",
                                                        0
                                                    ],
                                                    "order": 0,
                                                    "source": [
                                                        "s-g5",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-t",
                                                        0
                                                    ],
                                                    "source": [
                                                        "s-in",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-g1",
                                                        1
                                                    ],
                                                    "source": [
                                                        "s-l1",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-g2",
                                                        1
                                                    ],
                                                    "source": [
                                                        "s-l2",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-g3",
                                                        1
                                                    ],
                                                    "source": [
                                                        "s-l3",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-g4l",
                                                        1
                                                    ],
                                                    "order": 1,
                                                    "source": [
                                                        "s-l4",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-g4r",
                                                        1
                                                    ],
                                                    "order": 0,
                                                    "source": [
                                                        "s-l4",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-g5",
                                                        1
                                                    ],
                                                    "source": [
                                                        "s-l5",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-lbt",
                                                        0
                                                    ],
                                                    "source": [
                                                        "s-lb",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-m1",
                                                        0
                                                    ],
                                                    "source": [
                                                        "s-lbt",
                                                        2
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-m2",
                                                        0
                                                    ],
                                                    "source": [
                                                        "s-lbt",
                                                        1
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-on",
                                                        0
                                                    ],
                                                    "source": [
                                                        "s-lbt",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-p1",
                                                        0
                                                    ],
                                                    "source": [
                                                        "s-m1",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-p2",
                                                        0
                                                    ],
                                                    "source": [
                                                        "s-m2",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-pt",
                                                        0
                                                    ],
                                                    "source": [
                                                        "s-metro",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-saw",
                                                        0
                                                    ],
                                                    "source": [
                                                        "s-mtof",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-metro",
                                                        0
                                                    ],
                                                    "source": [
                                                        "s-on",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-o1",
                                                        0
                                                    ],
                                                    "source": [
                                                        "s-outL",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-o2",
                                                        0
                                                    ],
                                                    "source": [
                                                        "s-outR",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-g1",
                                                        0
                                                    ],
                                                    "order": 1,
                                                    "source": [
                                                        "s-p1",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-g4l",
                                                        0
                                                    ],
                                                    "order": 0,
                                                    "source": [
                                                        "s-p1",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-g2",
                                                        0
                                                    ],
                                                    "order": 1,
                                                    "source": [
                                                        "s-p2",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-g4r",
                                                        0
                                                    ],
                                                    "order": 0,
                                                    "source": [
                                                        "s-p2",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-g3",
                                                        0
                                                    ],
                                                    "source": [
                                                        "s-pl",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-mtof",
                                                        0
                                                    ],
                                                    "source": [
                                                        "s-plus",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-r1",
                                                        0
                                                    ],
                                                    "source": [
                                                        "s-pt",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-r2",
                                                        0
                                                    ],
                                                    "source": [
                                                        "s-pt",
                                                        1
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-sc",
                                                        0
                                                    ],
                                                    "source": [
                                                        "s-r1",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-plus",
                                                        0
                                                    ],
                                                    "source": [
                                                        "s-r2",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-pl",
                                                        1
                                                    ],
                                                    "source": [
                                                        "s-saw",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-env",
                                                        0
                                                    ],
                                                    "source": [
                                                        "s-sc",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-eq1",
                                                        0
                                                    ],
                                                    "source": [
                                                        "s-t",
                                                        4
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-eq2",
                                                        0
                                                    ],
                                                    "source": [
                                                        "s-t",
                                                        3
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-eq3",
                                                        0
                                                    ],
                                                    "source": [
                                                        "s-t",
                                                        2
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-eq4",
                                                        0
                                                    ],
                                                    "source": [
                                                        "s-t",
                                                        1
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "s-eq5",
                                                        0
                                                    ],
                                                    "source": [
                                                        "s-t",
                                                        0
                                                    ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [
                                        460.0,
                                        45.0,
                                        120.0,
                                        22.0
                                    ],
                                    "text": "p source"
                                }
                            },
                            {
                                "box": {
                                    "id": "c-core",
                                    "maxclass": "newobj",
                                    "text": "br.limit.1.2",
                                    "numinlets": 8,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "signal",
                                        "signal",
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        460,
                                        230,
                                        260,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "c-drvlm",
                                    "maxclass": "newobj",
                                    "text": "loadmess 12",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        460,
                                        120,
                                        93.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "c-drv",
                                    "maxclass": "flonum",
                                    "format": 6,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        460,
                                        150,
                                        50.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "c-drvn",
                                    "maxclass": "comment",
                                    "text": "Drive dB",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        460,
                                        175,
                                        100,
                                        19.5
                                    ],
                                    "fontsize": 12.0,
                                    "fontname": "Arial"
                                }
                            },
                            {
                                "box": {
                                    "id": "c-ceillm",
                                    "maxclass": "newobj",
                                    "text": "loadmess -6",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        570,
                                        120,
                                        93.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "c-ceil",
                                    "maxclass": "flonum",
                                    "format": 6,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        570,
                                        150,
                                        50.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "c-ceiln",
                                    "maxclass": "comment",
                                    "text": "Ceiling dBFS",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        570,
                                        175,
                                        100,
                                        19.5
                                    ],
                                    "fontsize": 12.0,
                                    "fontname": "Arial"
                                }
                            },
                            {
                                "box": {
                                    "id": "c-rellm",
                                    "maxclass": "newobj",
                                    "text": "loadmess 100",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        680,
                                        120,
                                        100.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "c-rel",
                                    "maxclass": "flonum",
                                    "format": 6,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        680,
                                        150,
                                        50.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "c-reln",
                                    "maxclass": "comment",
                                    "text": "Release ms",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        680,
                                        175,
                                        100,
                                        19.5
                                    ],
                                    "fontsize": 12.0,
                                    "fontname": "Arial"
                                }
                            },
                            {
                                "box": {
                                    "id": "c-tp",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        800,
                                        150,
                                        24.0,
                                        24.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "c-tpn",
                                    "maxclass": "comment",
                                    "text": "True Peak",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        830,
                                        150,
                                        80,
                                        19.5
                                    ],
                                    "fontsize": 12.0,
                                    "fontname": "Arial"
                                }
                            },
                            {
                                "box": {
                                    "id": "c-onlm",
                                    "maxclass": "newobj",
                                    "text": "loadmess 1",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        920,
                                        120,
                                        86.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "c-on",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        920,
                                        150,
                                        24.0,
                                        24.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "c-onn",
                                    "maxclass": "comment",
                                    "text": "On/Off",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        950,
                                        150,
                                        60,
                                        19.5
                                    ],
                                    "fontsize": 12.0,
                                    "fontname": "Arial"
                                }
                            },
                            {
                                "box": {
                                    "id": "c-grsnap",
                                    "maxclass": "newobj",
                                    "text": "snapshot~ 100",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        640,
                                        270,
                                        90,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "c-grnum",
                                    "maxclass": "flonum",
                                    "format": 6,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        640,
                                        300,
                                        50.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "c-grn",
                                    "maxclass": "comment",
                                    "text": "gain reduction dB",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        695,
                                        300,
                                        130,
                                        19.5
                                    ],
                                    "fontsize": 12.0,
                                    "fontname": "Arial"
                                }
                            },
                            {
                                "box": {
                                    "id": "c-gain",
                                    "lastchannelcount": 0,
                                    "maxclass": "live.gain~",
                                    "numinlets": 2,
                                    "numoutlets": 5,
                                    "outlettype": [
                                        "signal",
                                        "signal",
                                        "",
                                        "float",
                                        "list"
                                    ],
                                    "parameter_enable": 1,
                                    "patching_rect": [
                                        460,
                                        380,
                                        48.0,
                                        136.0
                                    ],
                                    "varname": "Out core",
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [
                                                -70.0
                                            ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "Out core",
                                            "parameter_mmax": 6.0,
                                            "parameter_mmin": -70.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Out",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 4
                                        }
                                    },
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "c-gainn",
                                    "maxclass": "comment",
                                    "text": "starts muted: raise slowly",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        515,
                                        380,
                                        170,
                                        33.0
                                    ],
                                    "fontsize": 12.0,
                                    "linecount": 2,
                                    "fontname": "Arial"
                                }
                            },
                            {
                                "box": {
                                    "id": "c-dactog",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        515,
                                        410,
                                        24.0,
                                        24.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "c-dacn",
                                    "maxclass": "comment",
                                    "text": "audio on/off",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        545,
                                        410,
                                        100,
                                        19.5
                                    ],
                                    "fontsize": 12.0,
                                    "fontname": "Arial"
                                }
                            },
                            {
                                "box": {
                                    "id": "c-dac",
                                    "maxclass": "newobj",
                                    "text": "dac~ 1 2",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "patching_rect": [
                                        460,
                                        530,
                                        72.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-source",
                                        0
                                    ],
                                    "source": [
                                        "obj-menu",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "c-core",
                                        0
                                    ],
                                    "source": [
                                        "obj-source",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "c-core",
                                        1
                                    ],
                                    "source": [
                                        "obj-source",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "c-drv",
                                        0
                                    ],
                                    "source": [
                                        "c-drvlm",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "c-core",
                                        2
                                    ],
                                    "source": [
                                        "c-drv",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "c-ceil",
                                        0
                                    ],
                                    "source": [
                                        "c-ceillm",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "c-core",
                                        3
                                    ],
                                    "source": [
                                        "c-ceil",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "c-rel",
                                        0
                                    ],
                                    "source": [
                                        "c-rellm",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "c-core",
                                        4
                                    ],
                                    "source": [
                                        "c-rel",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "c-core",
                                        6
                                    ],
                                    "source": [
                                        "c-tp",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "c-on",
                                        0
                                    ],
                                    "source": [
                                        "c-onlm",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "c-core",
                                        7
                                    ],
                                    "source": [
                                        "c-on",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "c-grsnap",
                                        0
                                    ],
                                    "source": [
                                        "c-core",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "c-grnum",
                                        0
                                    ],
                                    "source": [
                                        "c-grsnap",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "c-dac",
                                        0
                                    ],
                                    "source": [
                                        "c-gain",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "c-dac",
                                        1
                                    ],
                                    "source": [
                                        "c-gain",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "c-dac",
                                        0
                                    ],
                                    "source": [
                                        "c-dactog",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "c-gain",
                                        0
                                    ],
                                    "source": [
                                        "c-core",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "c-gain",
                                        1
                                    ],
                                    "source": [
                                        "c-core",
                                        1
                                    ]
                                }
                            }
                        ]
                    }
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-2",
                        0
                    ],
                    "source": [
                        "obj-a",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-gaina",
                        1
                    ],
                    "source": [
                        "obj-a",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-gaina",
                        0
                    ],
                    "source": [
                        "obj-a",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-gainb",
                        1
                    ],
                    "order": 0,
                    "source": [
                        "obj-b",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-gainb",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-b",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-grsnap",
                        0
                    ],
                    "source": [
                        "obj-b",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-b",
                        2
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
                        "obj-dac",
                        0
                    ],
                    "source": [
                        "obj-dactog",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-b",
                        1
                    ],
                    "source": [
                        "obj-drv",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-dac",
                        1
                    ],
                    "source": [
                        "obj-gaina",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-dac",
                        0
                    ],
                    "source": [
                        "obj-gaina",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-dac",
                        1
                    ],
                    "source": [
                        "obj-gainb",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-dac",
                        0
                    ],
                    "source": [
                        "obj-gainb",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-grnum",
                        0
                    ],
                    "source": [
                        "obj-grsnap",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-b",
                        4
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
                        "obj-source",
                        0
                    ],
                    "source": [
                        "obj-menu",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-a",
                        1
                    ],
                    "source": [
                        "obj-source",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-a",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-source",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-b",
                        0
                    ],
                    "midpoints": [
                        738.5,
                        131.4940948486328,
                        988.5,
                        131.4940948486328
                    ],
                    "order": 0,
                    "source": [
                        "obj-source",
                        0
                    ]
                }
            }
        ],
        "parameters": {
            "obj-a::obj-ceil": [
                "Ceiling",
                "Ceiling",
                0
            ],
            "obj-a::obj-drive": [
                "Drive",
                "Drive",
                0
            ],
            "obj-a::obj-look": [
                "Lookahead",
                "Look",
                0
            ],
            "obj-a::obj-on": [
                "On/Off",
                "On/Off",
                0
            ],
            "obj-a::obj-rel": [
                "Release",
                "Release",
                0
            ],
            "obj-a::obj-tp": [
                "True Peak",
                "TP",
                0
            ],
            "obj-gaina": [
                "A out",
                "A",
                0
            ],
            "obj-gainb": [
                "B out",
                "B",
                0
            ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-"
                    ],
                    "buttons": [
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-"
                    ]
                }
            },
            "inherited_shortname": 1,
            "obj-coretab::c-gain": [
                "Out core",
                "Out",
                0
            ]
        },
        "autosave": 0
    }
}