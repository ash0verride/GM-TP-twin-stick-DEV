{
  "resourceType": "GMSequence",
  "resourceVersion": "1.4",
  "name": "seq_spawn_enemy",
  "autoRecord": true,
  "backdropHeight": 768,
  "backdropImageOpacity": 0.5,
  "backdropImagePath": "",
  "backdropWidth": 1366,
  "backdropXOffset": 0.0,
  "backdropYOffset": 0.0,
  "events": {
    "resourceType": "KeyframeStore<MessageEventKeyframe>",
    "resourceVersion": "1.0",
    "Keyframes": [],
  },
  "eventStubScript": null,
  "eventToFunction": {},
  "length": 60.0,
  "lockOrigin": false,
  "moments": {
    "resourceType": "KeyframeStore<MomentsEventKeyframe>",
    "resourceVersion": "1.0",
    "Keyframes": [],
  },
  "parent": {
    "name": "Sequences",
    "path": "folders/Sequences.yy",
  },
  "playback": 0,
  "playbackSpeed": 60.0,
  "playbackSpeedType": 0,
  "showBackdrop": true,
  "showBackdropImage": false,
  "spriteId": null,
  "timeUnits": 1,
  "tracks": [
    {"resourceType":"GMInstanceTrack","resourceVersion":"1.0","name":"obj_enemy","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<AssetInstanceKeyframe>","resourceVersion":"1.0","Keyframes":[
          {"resourceType":"Keyframe<AssetInstanceKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"AssetInstanceKeyframe","resourceVersion":"1.0","Id":{"name":"obj_enemy","path":"objects/obj_enemy/obj_enemy.yy",},},},"Disabled":false,"id":"cc30951e-5560-4207-b391-f13b8af14df1","IsCreationKey":false,"Key":0.0,"Length":60.0,"Stretch":false,},
        ],},"modifiers":[],"trackColour":4284434674,"tracks":[
        {"resourceType":"GMColourTrack","resourceVersion":"1.0","name":"blend_multiply","builtinName":10,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<ColourKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<ColourKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"ColourKeyframe","resourceVersion":"1.0","AnimCurveId":null,"Colour":16777215,"EmbeddedAnimCurve":null,},},"Disabled":false,"id":"133eaad0-570a-4755-837d-9142f53258b3","IsCreationKey":false,"Key":0.0,"Length":1.0,"Stretch":false,},
              {"resourceType":"Keyframe<ColourKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"ColourKeyframe","resourceVersion":"1.0","AnimCurveId":null,"Colour":4294967295,"EmbeddedAnimCurve":null,},},"Disabled":false,"id":"a89aed10-2150-4581-ab21-bad3190c8834","IsCreationKey":false,"Key":59.9998,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4284434674,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"origin","builtinName":16,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"844c81de-4bcb-4457-b824-817491773123","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4284434674,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"e89f10f5-a2c4-43ba-b2a2-01a3ae2aaadb","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4284434674,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"14bcbcb4-daec-4088-83fc-ba5d024d5e37","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4284434674,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"scale","builtinName":15,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":{"resourceType":"GMAnimCurve","resourceVersion":"1.2","name":"Scale","channels":[
                        {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"x","colour":4290799884,"points":[
                            {"th0":-0.24999918,"th1":0.0,"tv0":0.0,"tv1":-6.558839E-08,"x":0.0,"y":0.09738326,},
                            {"th0":-0.079999775,"th1":0.06999977,"tv0":-0.00034342532,"tv1":0.00013239383,"x":0.48732346,"y":1.2466,},
                            {"th0":-0.055628747,"th1":0.049999837,"tv0":0.0,"tv1":0.0,"x":0.6843228,"y":0.93700004,},
                            {"th0":-0.049999848,"th1":0.03220208,"tv0":0.0,"tv1":0.0,"x":0.8643223,"y":1.018,},
                            {"th0":-0.09999967,"th1":0.030078888,"tv0":0.0,"tv1":0.0,"x":0.96991783,"y":0.9922334,},
                            {"th0":-0.03007889,"th1":0.24999918,"tv0":0.0,"tv1":0.0,"x":1.0,"y":1.0001585,},
                          ],"visible":true,},
                        {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"y","colour":4281083598,"points":[
                            {"th0":-0.24999918,"th1":0.0,"tv0":0.0,"tv1":-6.558839E-08,"x":0.0,"y":0.09738326,},
                            {"th0":-0.079999775,"th1":0.06999977,"tv0":-0.00034342532,"tv1":0.00013239383,"x":0.50085896,"y":1.2466,},
                            {"th0":-0.099999666,"th1":0.049999837,"tv0":0.0,"tv1":0.0,"x":0.6978584,"y":0.93700004,},
                            {"th0":-0.049999848,"th1":0.03220208,"tv0":0.0,"tv1":0.0,"x":0.8778578,"y":1.018,},
                            {"th0":-0.09999967,"th1":0.0,"tv0":0.0,"tv1":0.0,"x":0.9999967,"y":0.9922335,},
                            {"th0":0.0,"th1":0.24999918,"tv0":0.0,"tv1":0.0,"x":1.0,"y":1.0001585,},
                          ],"visible":true,},
                      ],"function":2,},"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":{"resourceType":"GMAnimCurve","resourceVersion":"1.2","name":"Scale","channels":[
                        {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"x","colour":4290799884,"points":[
                            {"th0":-0.24999918,"th1":0.0,"tv0":0.0,"tv1":-6.558839E-08,"x":0.0,"y":0.09738326,},
                            {"th0":-0.079999775,"th1":0.06999977,"tv0":-0.00034342532,"tv1":0.00013239383,"x":0.48732346,"y":1.2466,},
                            {"th0":-0.055628747,"th1":0.049999837,"tv0":0.0,"tv1":0.0,"x":0.6843228,"y":0.93700004,},
                            {"th0":-0.049999848,"th1":0.03220208,"tv0":0.0,"tv1":0.0,"x":0.8643223,"y":1.018,},
                            {"th0":-0.09999967,"th1":0.030078888,"tv0":0.0,"tv1":0.0,"x":0.96991783,"y":0.9922334,},
                            {"th0":-0.03007889,"th1":0.24999918,"tv0":0.0,"tv1":0.0,"x":1.0,"y":1.0001585,},
                          ],"visible":true,},
                        {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"y","colour":4281083598,"points":[
                            {"th0":-0.24999918,"th1":0.0,"tv0":0.0,"tv1":-6.558839E-08,"x":0.0,"y":0.09738326,},
                            {"th0":-0.079999775,"th1":0.06999977,"tv0":-0.00034342532,"tv1":0.00013239383,"x":0.50085896,"y":1.2466,},
                            {"th0":-0.099999666,"th1":0.049999837,"tv0":0.0,"tv1":0.0,"x":0.6978584,"y":0.93700004,},
                            {"th0":-0.049999848,"th1":0.03220208,"tv0":0.0,"tv1":0.0,"x":0.8778578,"y":1.018,},
                            {"th0":-0.09999967,"th1":0.0,"tv0":0.0,"tv1":0.0,"x":0.9999967,"y":0.9922335,},
                            {"th0":0.0,"th1":0.24999918,"tv0":0.0,"tv1":0.0,"x":1.0,"y":1.0001585,},
                          ],"visible":true,},
                      ],"function":2,},"RealValue":0.0,},},"Disabled":false,"id":"bcc8916b-1d1f-4ca6-b8de-942f47a6a040","IsCreationKey":false,"Key":0.0,"Length":60.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4284434674,"tracks":[],"traits":0,},
      ],"traits":0,},
  ],
  "visibleRange": {
    "x": 0.0,
    "y": 59.9999,
  },
  "volume": 1.0,
  "xorigin": 0,
  "yorigin": 0,
}