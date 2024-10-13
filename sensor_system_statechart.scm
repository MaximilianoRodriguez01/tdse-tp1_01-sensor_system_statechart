{
  "graph": {
    "cells": [
      {
        "position": {
          "x": 0,
          "y": 0
        },
        "size": {
          "height": 10,
          "width": 10
        },
        "angle": 0,
        "type": "Statechart",
        "id": "78749915-0da0-40a2-862f-9e8d94c7c68e",
        "linkable": false,
        "z": 1,
        "attrs": {
          "name": {
            "text": "sensor_system_statechart Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface: \n    // evento my first statechart\n    in event myEvent\n    \n    // eventos sensor\n    in event EV_BTN_01_PRESSED\n    in event EV_BTN_01_NOT_PRESSED\n    \n    // eventos sistema\n    in event EV_SYST_DETECTED_CAR\n    in event EV_SYST_NO_CAR_DETECTED\n    \n    in event EV_SYST_BUTTON_PRESSED\n    in event EV_SYST_BUTTON_NOT_PRESSED\n    \n    in event EV_SYST_TICKET_TAKEN\n    in event EV_SYST_TICKET_NOT_TAKEN\n    \n    in event EV_SYST_BARRIER_UP\n    in event EV_SYST_BARRIER_NOT_UP\n    \n    in event EV_SYST_CAR_PASSED\n    in event EV_SYST_CAR_NOT_PASSED\n    \n    in event EV_SYST_BARRIER_DOWN\n    in event EV_SYST_BARRIER_NOT_DOWN\n    \n    // eventos actuador\n    in event EV_LED_01_DECREASE_TIME\n    \n    in event EV_LED_01_TURN_ON\n    in event EV_LED_01_TURN_OFF\n    \n    in event EV_LED_01_BLINKING_ON\n    in event EV_LED_01_BLINKING_OFF\n    \n    in event EV_LED_01_PULSE_ON\n    in event EV_LED_01_PULSE_OFF\n    \n    in event EV_LED_01_PULSE_DCYCLE_ON\n    in event EV_LED_01_PULSE_DCYCLE_OFF\n    \n    in event EV_LED_01_TWO_PULSES_ON\n    in event EV_LED_01_TWO_PULSES_OFF\n    \n    \ninternal:\n    var tick:integer\n    const DEL_BTN_01_MAX:integer = 50\n    \n    var prevent_double_raise:integer\n    "
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": 222.5,
          "y": 130
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb",
        "z": 2,
        "embeds": [
          "f70f632c-e54d-4002-9ec5-7baec620de10"
        ],
        "attrs": {}
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": 222.5,
          "y": 145
        },
        "id": "f70f632c-e54d-4002-9ec5-7baec620de10",
        "z": 3,
        "parent": "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb",
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 200,
          "y": 200
        },
        "size": {
          "height": 60,
          "width": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
        "z": 4,
        "attrs": {
          "name": {
            "text": "StateA"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 400,
          "y": 300
        },
        "size": {
          "height": 60,
          "width": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "db372094-acc6-467b-b44d-495606208445",
        "z": 5,
        "attrs": {
          "name": {
            "text": "StateB"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6"
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          }
        ],
        "id": "9b5ce41b-0116-46a8-a603-ea4119c6e5d7",
        "z": 6,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6"
        },
        "target": {
          "id": "db372094-acc6-467b-b44d-495606208445"
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "after 1 s"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          }
        ],
        "id": "f4fdd1fd-fc69-42a9-a51b-34aeb2fd7fe4",
        "z": 7,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "db372094-acc6-467b-b44d-495606208445"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6"
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "myEvent"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          }
        ],
        "id": "7197094a-c890-4098-9170-1701f27ac3cb",
        "z": 8,
        "attrs": {}
      },
      {
        "type": "Region",
        "position": {
          "x": 605,
          "y": 25
        },
        "size": {
          "height": 1142.09375,
          "width": 1079
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "8dc46e1b-3aea-46ca-b984-605bf8ebf3b1",
        "z": 122,
        "marker": [
          "Region must have a 'default' entry."
        ],
        "embeds": [
          "6ecf3911-3c90-4e1e-a221-cf5afa291479",
          "5220ab56-ddc9-4f86-899d-f27a86d1a19a",
          "5b0db4c6-62fa-428f-a0f1-5449b93ee466",
          "3dcfbdc8-dd4f-408e-b1b0-9ea465a21297",
          "2e6d601a-3b9a-4de3-b12e-ec48b90e0966",
          "154e0a4e-f273-4dbf-9c2f-e097c7399f91",
          "fc4896fb-14d1-4132-9f52-e3d8cde5eac6",
          "3126b148-3bc9-4a77-9160-f312941b3dc0",
          "49d4aa07-3e01-488a-944c-32bdfd3b696b",
          "9c24709e-0629-496f-9e50-097025edec0a",
          "146dbcde-f855-4fe1-9fc5-795e77730e92",
          "dca5c13f-88c3-4cf0-b4ca-5f3c84c6cc1e"
        ],
        "attrs": {
          "priority": {
            "text": 1
          },
          "name": {
            "text": "sensor"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 1040.140625,
          "y": 1004
        },
        "size": {
          "height": 60,
          "width": 144.03125
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "3126b148-3bc9-4a77-9160-f312941b3dc0",
        "z": 123,
        "marker": [
          "This state's completion transition results in an infinite cycle."
        ],
        "parent": "8dc46e1b-3aea-46ca-b984-605bf8ebf3b1",
        "embeds": [
          "d7adb6b2-111c-48d7-a50d-4faaaa25dcf8"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_01_INCREASING"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 1530.171875,
          "y": 322.5
        },
        "size": {
          "height": 60,
          "width": 100.828125
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "49d4aa07-3e01-488a-944c-32bdfd3b696b",
        "z": 124,
        "marker": [
          "This state's completion transition results in an infinite cycle."
        ],
        "parent": "8dc46e1b-3aea-46ca-b984-605bf8ebf3b1",
        "embeds": [
          "282de0f6-ac67-4d62-8897-5f58348755c1"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_01_DOWN"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 657,
          "y": 549.5
        },
        "size": {
          "height": 60,
          "width": 86.42500305175781
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "9c24709e-0629-496f-9e50-097025edec0a",
        "z": 125,
        "marker": [
          "This state's completion transition results in an infinite cycle."
        ],
        "parent": "8dc46e1b-3aea-46ca-b984-605bf8ebf3b1",
        "embeds": [
          "fc104bc2-1ea4-412e-895a-5843ed2c4e8c"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_01_UP"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 1083.2890625,
          "y": 98
        },
        "size": {
          "height": 120.59375,
          "width": 122.42500305175781
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "146dbcde-f855-4fe1-9fc5-795e77730e92",
        "z": 126,
        "marker": [
          "Node is not reachable."
        ],
        "parent": "8dc46e1b-3aea-46ca-b984-605bf8ebf3b1",
        "embeds": [
          "82da15ce-1e4b-4b93-96cc-5cdabf7662de"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_01_FALLING"
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": 621,
          "y": 567.5
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "dca5c13f-88c3-4cf0-b4ca-5f3c84c6cc1e",
        "z": 127,
        "parent": "8dc46e1b-3aea-46ca-b984-605bf8ebf3b1",
        "embeds": [
          "8155ec82-7f85-4c0d-844f-e82b8c99d370"
        ],
        "attrs": {}
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": 621,
          "y": 582.5
        },
        "id": "8155ec82-7f85-4c0d-844f-e82b8c99d370",
        "z": 139,
        "parent": "dca5c13f-88c3-4cf0-b4ca-5f3c84c6cc1e",
        "attrs": {
          "label": {
            "refX": 15,
            "textAnchor": "end",
            "refY": 15,
            "textVerticalAnchor": "bottom"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "146dbcde-f855-4fe1-9fc5-795e77730e92"
        },
        "target": {
          "id": "146dbcde-f855-4fe1-9fc5-795e77730e92",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 90.98126220703125,
              "dy": 5,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_01_PRESSED\n[tick > 0]\n/ tick--"
              }
            },
            "position": {
              "distance": 0.12810647058215494,
              "offset": -23.43896484375,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          }
        ],
        "id": "82da15ce-1e4b-4b93-96cc-5cdabf7662de",
        "z": 140,
        "marker": [
          "Could not find declaration of tick"
        ],
        "vertices": [
          {
            "x": 1084,
            "y": 40.046875
          }
        ],
        "parent": "146dbcde-f855-4fe1-9fc5-795e77730e92",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "dca5c13f-88c3-4cf0-b4ca-5f3c84c6cc1e"
        },
        "target": {
          "id": "9c24709e-0629-496f-9e50-097025edec0a",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 6.0109405517578125,
              "dy": 30,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          }
        ],
        "id": "6ecf3911-3c90-4e1e-a221-cf5afa291479",
        "z": 140,
        "marker": [
          "Entry target must be child of the region.\nSource and target of a transition must not be located in orthogonal regions!"
        ],
        "vertices": [],
        "parent": "8dc46e1b-3aea-46ca-b984-605bf8ebf3b1",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "146dbcde-f855-4fe1-9fc5-795e77730e92"
        },
        "target": {
          "id": "9c24709e-0629-496f-9e50-097025edec0a",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 53.01092529296875,
              "dy": 36,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_01_NOT_PRESSED\n/ tick = 0"
              }
            },
            "position": {
              "distance": 0.43809081608549827,
              "offset": 24.55731201171875,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          }
        ],
        "id": "5b0db4c6-62fa-428f-a0f1-5449b93ee466",
        "z": 140,
        "vertices": [
          {
            "x": 1120,
            "y": 468
          }
        ],
        "marker": [
          "Could not find declaration of tick"
        ],
        "parent": "8dc46e1b-3aea-46ca-b984-605bf8ebf3b1",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "9c24709e-0629-496f-9e50-097025edec0a"
        },
        "target": {
          "id": "146dbcde-f855-4fe1-9fc5-795e77730e92",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 3.01092529296875,
              "dy": 29,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_01_PRESSED\n/ tick = DEL_BTN_01_MAX"
              }
            },
            "position": {
              "distance": 0.691256835106195,
              "offset": 45.003120681260974,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          }
        ],
        "id": "5220ab56-ddc9-4f86-899d-f27a86d1a19a",
        "z": 140,
        "vertices": [
          {
            "x": 722,
            "y": 232
          }
        ],
        "marker": [
          "Could not find declaration of DEL_BTN_01_MAX\nCould not find declaration of tick"
        ],
        "parent": "8dc46e1b-3aea-46ca-b984-605bf8ebf3b1",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "9c24709e-0629-496f-9e50-097025edec0a"
        },
        "target": {
          "id": "9c24709e-0629-496f-9e50-097025edec0a",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 66.98124694824219,
              "dy": 35,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_01_NOT_PRESSED"
              }
            },
            "position": {
              "distance": 0.6496881013970627,
              "offset": 73.3826904296875,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          }
        ],
        "id": "fc104bc2-1ea4-412e-895a-5843ed2c4e8c",
        "z": 140,
        "marker": [
          "Could not find declaration of EV_BTN_01_NOT_PRESSED\nTrigger 'EV_BTN_01_NOT_PRESSED' is no event."
        ],
        "vertices": [
          {
            "x": 781.96875,
            "y": 650.5
          }
        ],
        "parent": "9c24709e-0629-496f-9e50-097025edec0a",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "146dbcde-f855-4fe1-9fc5-795e77730e92"
        },
        "target": {
          "id": "49d4aa07-3e01-488a-944c-32bdfd3b696b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 49.8421630859375,
              "dy": 9,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_01_PRESSED\n[tick <= 0] / raise EV_SYST_BARRIER_DOWN;\nraise EV_SYST_CAR_PASSED;\nraise EV_SYST_BARRIER_UP;\nraise EV_SYST_TICKET_TAKEN;\nraise EV_SYST_BUTTON_PRESSED;\nraise EV_SYST_DETECTED_CAR"
              }
            },
            "position": {
              "distance": 0.5020499260436657,
              "offset": -68,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          }
        ],
        "id": "3dcfbdc8-dd4f-408e-b1b0-9ea465a21297",
        "z": 140,
        "marker": [
          "Could not find declaration of tick"
        ],
        "vertices": [
          {
            "x": 1406,
            "y": 125.046875
          }
        ],
        "parent": "8dc46e1b-3aea-46ca-b984-605bf8ebf3b1",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "49d4aa07-3e01-488a-944c-32bdfd3b696b"
        },
        "target": {
          "id": "49d4aa07-3e01-488a-944c-32bdfd3b696b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 94.80938720703125,
              "dy": 49,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_01_PRESSED"
              }
            },
            "position": {
              "distance": 0.6302253931548908,
              "offset": -19.574783325195312,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          }
        ],
        "id": "282de0f6-ac67-4d62-8897-5f58348755c1",
        "z": 140,
        "marker": [
          "Could not find declaration of EV_BTN_01_PRESSED\nTrigger 'EV_BTN_01_PRESSED' is no event."
        ],
        "vertices": [
          {
            "x": 1688.96875,
            "y": 351.5
          }
        ],
        "parent": "49d4aa07-3e01-488a-944c-32bdfd3b696b",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "49d4aa07-3e01-488a-944c-32bdfd3b696b"
        },
        "target": {
          "id": "3126b148-3bc9-4a77-9160-f312941b3dc0",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 141.015625,
              "dy": 37,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_01_NOT_PRESSED\n/ tick = DEL_BTN_01_MAX"
              }
            },
            "position": {
              "distance": 0.6518070671907874,
              "offset": -25,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          }
        ],
        "id": "fc4896fb-14d1-4132-9f52-e3d8cde5eac6",
        "z": 140,
        "vertices": [
          {
            "x": 1595,
            "y": 922
          }
        ],
        "marker": [
          "Could not find declaration of DEL_BTN_01_MAX\nCould not find declaration of tick"
        ],
        "parent": "8dc46e1b-3aea-46ca-b984-605bf8ebf3b1",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "3126b148-3bc9-4a77-9160-f312941b3dc0"
        },
        "target": {
          "id": "9c24709e-0629-496f-9e50-097025edec0a",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 40.01094055175781,
              "dy": 60,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_01_NOT_PRESSED\n[tick <= 0] /\nraise EV_SYST_BARRIER_NOT_DOWN;\nraise EV_SYST_CAR_NOT_PASSED;\nraise EV_SYST_TICKET_NOT_TAKEN;\nraise EV_SYST_BUTTON_NOT_PRESSED;\nraise EV_SYST_NO_CAR_DETECTED"
              }
            },
            "position": {
              "distance": 0.22986503027600388,
              "offset": 55.16973551356649,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          }
        ],
        "id": "2e6d601a-3b9a-4de3-b12e-ec48b90e0966",
        "z": 140,
        "vertices": [
          {
            "x": 665,
            "y": 1027
          }
        ],
        "marker": [
          "Could not find declaration of tick"
        ],
        "parent": "8dc46e1b-3aea-46ca-b984-605bf8ebf3b1",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "3126b148-3bc9-4a77-9160-f312941b3dc0"
        },
        "target": {
          "id": "49d4aa07-3e01-488a-944c-32bdfd3b696b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 3.8421630859375,
              "dy": 33,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_01_PRESSED\n/ tick = 0\n"
              }
            },
            "position": {
              "distance": 0.6825630626577118,
              "offset": 31,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          }
        ],
        "id": "154e0a4e-f273-4dbf-9c2f-e097c7399f91",
        "z": 140,
        "vertices": [
          {
            "x": 1273,
            "y": 656
          }
        ],
        "marker": [
          "Could not find declaration of tick"
        ],
        "parent": "8dc46e1b-3aea-46ca-b984-605bf8ebf3b1",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "3126b148-3bc9-4a77-9160-f312941b3dc0"
        },
        "target": {
          "id": "3126b148-3bc9-4a77-9160-f312941b3dc0",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 101.98126220703125,
              "dy": 49,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_01_NOT_PRESSED\n[tick > 0]\n/ tick--"
              }
            },
            "position": {
              "distance": 0.3163668932086741,
              "offset": 54.45968325601663,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          }
        ],
        "id": "d7adb6b2-111c-48d7-a50d-4faaaa25dcf8",
        "z": 140,
        "vertices": [
          {
            "x": 1112.1606250000004,
            "y": 1114
          }
        ],
        "marker": [
          "Could not find declaration of tick"
        ],
        "parent": "3126b148-3bc9-4a77-9160-f312941b3dc0",
        "attrs": {}
      },
      {
        "type": "Region",
        "position": {
          "x": 1888,
          "y": 25
        },
        "size": {
          "height": 1170,
          "width": 2558
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "6faa4e95-ff50-4eca-89bf-4971800c3675",
        "z": 273,
        "marker": [
          "Region must have a 'default' entry."
        ],
        "embeds": [
          "a98cef51-21e2-49ca-87a2-b0e9079856bc",
          "a7df6be9-3995-4ee9-8f57-b5c77c58d9d6",
          "4d543f42-438b-4e6e-a807-864db1f66d6f",
          "c38c212d-b0c7-4a36-9fe6-36a104d90cea",
          "05dda2a0-81e3-4816-832d-c0167387c0d6",
          "f060596b-a308-4820-a64b-e35d136a9451",
          "44f16930-3a6f-4b27-b471-1bcefa5ef7ff",
          "75ac8d8c-b954-4c2b-ba3c-445627244044",
          "4f4f394f-1625-4330-a203-a27664d46bdb",
          "a3b32dc1-3303-4566-95b8-6ad66bc86e5b",
          "30dede04-7f85-4d7f-9f7c-261841f16a22",
          "b6c7373b-ec87-4e55-9c3b-2625d6e0731d",
          "27f77c23-a24f-4d8f-83e3-e4b8cd7a9bf0",
          "be56fab6-0055-4788-9872-6a5488ebb279"
        ],
        "attrs": {
          "priority": {
            "text": 2
          },
          "name": {
            "text": "system"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 3541,
          "y": 857.390625
        },
        "size": {
          "height": 60,
          "width": 158.4375
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "75ac8d8c-b954-4c2b-ba3c-445627244044",
        "z": 274,
        "marker": [
          "This state's completion transition results in an infinite cycle."
        ],
        "parent": "6faa4e95-ff50-4eca-89bf-4971800c3675",
        "embeds": [
          "01e3811a-027d-4ec9-aeb3-f5cee07bcc21"
        ],
        "attrs": {
          "name": {
            "text": "ST_SYST_BARRIER_HALTED"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 3537.40234375,
          "y": 619.5
        },
        "size": {
          "height": 60,
          "width": 165.6374969482422
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "4f4f394f-1625-4330-a203-a27664d46bdb",
        "z": 275,
        "marker": [
          "This state's completion transition results in an infinite cycle."
        ],
        "parent": "6faa4e95-ff50-4eca-89bf-4971800c3675",
        "embeds": [
          "74269422-3b54-45f8-855f-9cd7f590f7dd"
        ],
        "attrs": {
          "name": {
            "text": "ST_SYST_OPENING_BARRIER"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 3578,
          "y": 147
        },
        "size": {
          "height": 60,
          "width": 158.4375
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "a3b32dc1-3303-4566-95b8-6ad66bc86e5b",
        "z": 276,
        "marker": [
          "This state's completion transition results in an infinite cycle."
        ],
        "parent": "6faa4e95-ff50-4eca-89bf-4971800c3675",
        "embeds": [
          "62de1f14-164c-4922-83cf-534afc5b1874"
        ],
        "attrs": {
          "name": {
            "text": "ST_SYST_ISSUING_TICKET"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 2405.8046875,
          "y": 457.5
        },
        "size": {
          "height": 60,
          "width": 108.0250015258789
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "30dede04-7f85-4d7f-9f7c-261841f16a22",
        "z": 277,
        "marker": [
          "Node is not reachable."
        ],
        "parent": "6faa4e95-ff50-4eca-89bf-4971800c3675",
        "embeds": [
          "f02a8622-e522-4961-a814-fb9e7179c2bb"
        ],
        "attrs": {
          "name": {
            "text": "ST_SYST_WAITING"
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": 2206,
          "y": 480
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "b6c7373b-ec87-4e55-9c3b-2625d6e0731d",
        "z": 278,
        "marker": [
          "Initial entry must have an outgoing transition."
        ],
        "parent": "6faa4e95-ff50-4eca-89bf-4971800c3675",
        "embeds": [
          "9c1bb7cb-1c13-4db5-a770-c78a9b0f464d"
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 2422,
          "y": 147
        },
        "size": {
          "height": 60,
          "width": 129.625
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "27f77c23-a24f-4d8f-83e3-e4b8cd7a9bf0",
        "z": 279,
        "marker": [
          "This state's completion transition results in an infinite cycle."
        ],
        "parent": "6faa4e95-ff50-4eca-89bf-4971800c3675",
        "embeds": [
          "f76829b5-9c7b-48d8-9581-f071b82a8c66"
        ],
        "attrs": {
          "name": {
            "text": "ST_SYST_REQUESTING"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 2348.1921920776367,
          "y": 832.1953125
        },
        "size": {
          "height": 110.390625,
          "width": 165.6374969482422
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "be56fab6-0055-4788-9872-6a5488ebb279",
        "z": 280,
        "marker": [
          "This state's completion transition results in an infinite cycle."
        ],
        "parent": "6faa4e95-ff50-4eca-89bf-4971800c3675",
        "embeds": [
          "80c121d6-f8c2-44dd-bff5-f8ed08a4527a"
        ],
        "attrs": {
          "name": {
            "text": "ST_SYST_CLOSING_BARRIER"
          }
        }
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": 2206,
          "y": 495
        },
        "id": "9c1bb7cb-1c13-4db5-a770-c78a9b0f464d",
        "z": 292,
        "parent": "b6c7373b-ec87-4e55-9c3b-2625d6e0731d",
        "attrs": {
          "label": {
            "fill": "#C5C8C6",
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "b6c7373b-ec87-4e55-9c3b-2625d6e0731d"
        },
        "target": {
          "id": "30dede04-7f85-4d7f-9f7c-261841f16a22",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 9.0006103515625,
              "dy": 28.779022216796875,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          }
        ],
        "id": "f060596b-a308-4820-a64b-e35d136a9451",
        "z": 293,
        "parent": "6faa4e95-ff50-4eca-89bf-4971800c3675",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "be56fab6-0055-4788-9872-6a5488ebb279"
        },
        "target": {
          "id": "30dede04-7f85-4d7f-9f7c-261841f16a22",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 85.0006103515625,
              "dy": 49.779022216796875,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYST_BARRIER_DOWN / raise EV_LED_01_TWO_PULSES_OFF; prevent_double_raise = 1"
              }
            },
            "position": {
              "distance": 0.45547272979474507,
              "offset": 201.35162109375005,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          }
        ],
        "id": "a7df6be9-3995-4ee9-8f57-b5c77c58d9d6",
        "z": 293,
        "marker": [
          "Could not find declaration of prevent_double_raise"
        ],
        "vertices": [],
        "parent": "6faa4e95-ff50-4eca-89bf-4971800c3675",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "30dede04-7f85-4d7f-9f7c-261841f16a22"
        },
        "target": {
          "id": "30dede04-7f85-4d7f-9f7c-261841f16a22",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 38.1953125,
              "dy": 51.5,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYST_NO_CAR_DETECTED / prevent_double_raise = 0"
              }
            },
            "position": {
              "distance": 0.6608789299770048,
              "offset": -47.27724009392296,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          }
        ],
        "id": "f02a8622-e522-4961-a814-fb9e7179c2bb",
        "z": 293,
        "vertices": [
          {
            "x": 2391.8046875,
            "y": 556
          },
          {
            "x": 2391.8046875,
            "y": 509
          }
        ],
        "marker": [
          "Could not find declaration of prevent_double_raise"
        ],
        "parent": "30dede04-7f85-4d7f-9f7c-261841f16a22",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "30dede04-7f85-4d7f-9f7c-261841f16a22"
        },
        "target": {
          "id": "27f77c23-a24f-4d8f-83e3-e4b8cd7a9bf0",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 16,
              "dy": 45.01885986328125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYST_DETECTED_CAR [prevent_double_raise == 0] / raise EV_LED_01_TURN_ON"
              }
            },
            "position": {
              "distance": 0.4735387623191118,
              "offset": 176.996826171875,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          }
        ],
        "id": "c38c212d-b0c7-4a36-9fe6-36a104d90cea",
        "z": 293,
        "marker": [
          "Could not find declaration of prevent_double_raise"
        ],
        "parent": "6faa4e95-ff50-4eca-89bf-4971800c3675",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "27f77c23-a24f-4d8f-83e3-e4b8cd7a9bf0"
        },
        "target": {
          "id": "a3b32dc1-3303-4566-95b8-6ad66bc86e5b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 12,
              "dy": 37.09344482421875,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYST_BUTTON_PRESSED / raise EV_LED_01_TURN_OFF ; raise EV_LED_01_BLINKING_ON"
              }
            },
            "position": {
              "distance": 0.515371574402885,
              "offset": 40.95538330078125,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          }
        ],
        "id": "05dda2a0-81e3-4816-832d-c0167387c0d6",
        "z": 293,
        "marker": [
          "Could not find declaration of EV_LED_01_BLINKING_ON\nCould not find declaration of EV_LED_01_TURN_OFF\n'' is not an event."
        ],
        "vertices": [],
        "parent": "6faa4e95-ff50-4eca-89bf-4971800c3675",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "a3b32dc1-3303-4566-95b8-6ad66bc86e5b"
        },
        "target": {
          "id": "a3b32dc1-3303-4566-95b8-6ad66bc86e5b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 17,
              "dy": 10.09344482421875,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYST_TICKET_NOT_TAKEN "
              }
            },
            "position": {
              "distance": 0.3538620877860094,
              "offset": 13.358154296875,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          }
        ],
        "id": "62de1f14-164c-4922-83cf-534afc5b1874",
        "z": 293,
        "marker": [
          "Could not find declaration of EV_SYST_TICKET_NOT_TAKEN\nTrigger 'EV_SYST_TICKET_NOT_TAKEN' is no event."
        ],
        "parent": "a3b32dc1-3303-4566-95b8-6ad66bc86e5b",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "a3b32dc1-3303-4566-95b8-6ad66bc86e5b"
        },
        "target": {
          "id": "4f4f394f-1625-4330-a203-a27664d46bdb",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 80.61170959472656,
              "dy": 8.5,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYST_TICKET_TAKEN / raise EV_LED_01_BLINKING_OFF; raise EV_LED_01_PULSE_ON"
              }
            },
            "position": {
              "distance": 0.46557661576704545,
              "offset": -288.0529882812498,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          }
        ],
        "id": "4d543f42-438b-4e6e-a807-864db1f66d6f",
        "z": 293,
        "marker": [
          "Could not find declaration of EV_LED_01_BLINKING_OFF\nCould not find declaration of EV_LED_01_PULSE_ON\n'' is not an event."
        ],
        "vertices": [],
        "parent": "6faa4e95-ff50-4eca-89bf-4971800c3675",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "4f4f394f-1625-4330-a203-a27664d46bdb"
        },
        "target": {
          "id": "4f4f394f-1625-4330-a203-a27664d46bdb",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 130.1875,
              "dy": 44.371826171875,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYST_BARRIER_NOT_UP"
              }
            },
            "position": {
              "distance": 0.47685543498774435,
              "offset": -110.79280499908789,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          }
        ],
        "id": "74269422-3b54-45f8-855f-9cd7f590f7dd",
        "z": 293,
        "marker": [
          "Could not find declaration of EV_SYST_BARRIER_NOT_UP\nTrigger 'EV_SYST_BARRIER_NOT_UP' is no event."
        ],
        "vertices": [
          {
            "x": 3732.589813232422,
            "y": 643
          }
        ],
        "parent": "4f4f394f-1625-4330-a203-a27664d46bdb",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "4f4f394f-1625-4330-a203-a27664d46bdb"
        },
        "target": {
          "id": "75ac8d8c-b954-4c2b-ba3c-445627244044",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 95,
              "dy": 19.871826171875,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYST_BARRIER_UP / raise EV_LED_01_PULSE_OFF ; raise EV_LED_01_PULSE_DCYCLE_ON"
              }
            },
            "position": {
              "distance": 0.4218270749304342,
              "offset": -316,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          }
        ],
        "id": "44f16930-3a6f-4b27-b471-1bcefa5ef7ff",
        "z": 293,
        "marker": [
          "Could not find declaration of EV_LED_01_PULSE_OFF\nCould not find declaration of EV_LED_01_PULSE_DCYCLE_ON\n'' is not an event."
        ],
        "parent": "6faa4e95-ff50-4eca-89bf-4971800c3675",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "75ac8d8c-b954-4c2b-ba3c-445627244044"
        },
        "target": {
          "id": "75ac8d8c-b954-4c2b-ba3c-445627244044",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 151,
              "dy": 39.871826171875,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYST_CAR_NOT_PASSED "
              }
            },
            "position": {
              "distance": 0.5041767900038518,
              "offset": -92.0548095703125,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          }
        ],
        "id": "01e3811a-027d-4ec9-aeb3-f5cee07bcc21",
        "z": 293,
        "marker": [
          "Could not find declaration of EV_SYST_CAR_NOT_PASSED\nTrigger 'EV_SYST_CAR_NOT_PASSED' is no event."
        ],
        "vertices": [
          {
            "x": 3747,
            "y": 876.390625
          }
        ],
        "parent": "75ac8d8c-b954-4c2b-ba3c-445627244044",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "75ac8d8c-b954-4c2b-ba3c-445627244044"
        },
        "target": {
          "id": "be56fab6-0055-4788-9872-6a5488ebb279",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 139,
              "dy": 50.270263671875,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYST_CAR_PASSED / raise EV_LED_01_PULSE_DCYCLE_OFF ; raise EV_LED_01_TWO_PULSES_ON"
              }
            },
            "position": {
              "distance": 0.43409527968836703,
              "offset": -25.873872070312473,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          }
        ],
        "id": "a98cef51-21e2-49ca-87a2-b0e9079856bc",
        "z": 293,
        "marker": [
          "Could not find declaration of EV_LED_01_TWO_PULSES_ON\nCould not find declaration of EV_LED_01_PULSE_DCYCLE_OFF\n'' is not an event."
        ],
        "vertices": [],
        "parent": "6faa4e95-ff50-4eca-89bf-4971800c3675",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "27f77c23-a24f-4d8f-83e3-e4b8cd7a9bf0"
        },
        "target": {
          "id": "27f77c23-a24f-4d8f-83e3-e4b8cd7a9bf0",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 37,
              "dy": 14.01885986328125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYST_BUTTON_NOT_PRESSED"
              }
            },
            "position": {
              "distance": 0.6436253368044047,
              "offset": 40.196435867344285,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          }
        ],
        "id": "f76829b5-9c7b-48d8-9581-f071b82a8c66",
        "z": 293,
        "marker": [
          "Could not find declaration of EV_SYST_BUTTON_NOT_PRESSED\nCould not find declaration of EV_BTN_01_NOT_PRESSED\nTrigger 'EV_SYST_BUTTON_NOT_PRESSED' is no event.\n'' is not an event."
        ],
        "vertices": [
          {
            "x": 2490.81,
            "y": 116
          },
          {
            "x": 2387,
            "y": 116
          },
          {
            "x": 2387,
            "y": 139.01999999999998
          }
        ],
        "parent": "27f77c23-a24f-4d8f-83e3-e4b8cd7a9bf0",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "be56fab6-0055-4788-9872-6a5488ebb279"
        },
        "target": {
          "id": "be56fab6-0055-4788-9872-6a5488ebb279",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 38,
              "dy": 71.270263671875,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYST_BARRIER_NOT_DOWN "
              }
            },
            "position": {
              "distance": 0.47980071594507423,
              "offset": 92,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          }
        ],
        "id": "80c121d6-f8c2-44dd-bff5-f8ed08a4527a",
        "z": 294,
        "marker": [
          "Could not find declaration of EV_SYST_BARRIER_NOT_DOWN\nTrigger 'EV_SYST_BARRIER_NOT_DOWN' is no event."
        ],
        "vertices": [
          {
            "x": 2297,
            "y": 863
          }
        ],
        "parent": "be56fab6-0055-4788-9872-6a5488ebb279",
        "attrs": {}
      }
    ]
  },
  "genModel": {
    "generator": {
      "schemaKey": "yakindu::c",
      "LicenseHeader": {
        "licenseText": ""
      },
      "FunctionInlining": {
        "inlineReactions": false,
        "inlineEntryActions": false,
        "inlineExitActions": false,
        "inlineEnterSequences": false,
        "inlineExitSequences": false,
        "inlineChoices": false,
        "inlineEnterRegion": false,
        "inlineExitRegion": false,
        "inlineEntries": false
      },
      "OutEventAPI": {
        "observables": false,
        "getters": false
      },
      "IdentifierSettings": {
        "moduleName": "MyFirstStatechart",
        "statemachinePrefix": "myFirstStatechart",
        "separator": "_",
        "headerFilenameExtension": "h",
        "sourceFilenameExtension": "c"
      },
      "Tracing": {
        "enterState": false,
        "exitState": false,
        "generic": false
      },
      "Includes": {
        "useRelativePaths": false
      },
      "GeneratorOptions": {
        "userAllocatedQueue": false,
        "metaSource": false
      },
      "GeneralFeatures": {
        "timerService": false
      }
    }
  }
}