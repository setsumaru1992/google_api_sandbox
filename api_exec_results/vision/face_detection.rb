require "google/cloud/vision"

image_path = "/root/google_api_sandbox/api_exec_results/vision/upload_images/family_of_3_people.png"
image_annotator = Google::Cloud::Vision.image_annotator
response = image_annotator.face_detection(image: image_path)
pp response.responses.first.face_annotations



# face_detectionの返り値の一部（真ん中にプロフィール写真のように3人写っている写真）
# <Google::Cloud::Vision::V1::BatchAnnotateImagesResponse:
#   responses: [
#     <Google::Cloud::Vision::V1::AnnotateImageResponse:
#       face_annotations: [
#         <Google::Cloud::Vision::V1::FaceAnnotation:
#           bounding_poly:
#             <Google::Cloud::Vision::V1::BoundingPoly:
#               vertices: [
#                 <Google::Cloud::Vision::V1::Vertex: x: 250, y: 60>,
#                 <Google::Cloud::Vision::V1::Vertex: x: 306, y: 60>,
#                 <Google::Cloud::Vision::V1::Vertex: x: 306, y: 126>,
#                 <Google::Cloud::Vision::V1::Vertex: x: 250, y: 126>
#               ],
#               normalized_vertices: []
#             >,
#           fd_bounding_poly:
#             <Google::Cloud::Vision::V1::BoundingPoly:
#               vertices: [
#                 <Google::Cloud::Vision::V1::Vertex: x: 259, y: 74>,
#                 <Google::Cloud::Vision::V1::Vertex: x: 303, y: 74>,
#                 <Google::Cloud::Vision::V1::Vertex: x: 303, y: 123>,
#                 <Google::Cloud::Vision::V1::Vertex: x: 259, y: 123>
#               ],
#               normalized_vertices: []
#             >,
#           landmarks: [
#             <Google::Cloud::Vision::V1::FaceAnnotation::Landmark:
#               type: :LEFT_EYE,
#               position:
#               <Google::Cloud::Vision::V1::Position:
#                 x: 274.94879150390625,
#                 y: 90.32243347167969,
#                 z: 0.00024819374084472656
#               >
#             >,
#             <Google::Cloud::Vision::V1::FaceAnnotation::Landmark:
#               type: :RIGHT_EYE,
#               position:
#                 <Google::Cloud::Vision::V1::Position:
#                   x: 289.9930419921875,
#                   y: 95.17726135253906,
#                   z: 2.770988702774048
#                 >
#               >,
#               <Google::Cloud::Vision::V1::FaceAnnotation::Landmark:
#                 type: :LEFT_OF_LEFT_EYEBROW,
#                 position: <Google::Cloud::Vision::V1::Position: x: 271.8844299316406, y: 84.55692291259766, z: 0.8989958763122559>
#               >,
#               <Google::Cloud::Vision::V1::FaceAnnotation::Landmark:
#                 type: :RIGHT_OF_LEFT_EYEBROW,
#                 position: <Google::Cloud::Vision::V1::Position: x: 280.8525695800781, y: 87.60293579101562, z: -1.9644677639007568>
#               >,
#               <Google::Cloud::Vision::V1::FaceAnnotation::Landmark:
#                 type: :LEFT_OF_RIGHT_EYEBROW,
#                 position: <Google::Cloud::Vision::V1::Position: x: 288.20916748046875, y: 90.0218276977539, z: -0.6397600173950195>
#               >,
#               <Google::Cloud::Vision::V1::FaceAnnotation::Landmark:
#                 type: :RIGHT_OF_RIGHT_EYEBROW,
#                 position: <Google::Cloud::Vision::V1::Position: x: 295.5153503417969, y: 92.55375671386719, z: 5.431962966918945>
#               >,
#               <Google::Cloud::Vision::V1::FaceAnnotation::Landmark:
#                 type: :MIDPOINT_BETWEEN_EYES,
#                 position: <Google::Cloud::Vision::V1::Position: x: 283.75653076171875, y: 92.80169677734375, z: -1.8205060958862305>
#               >,
#               <Google::Cloud::Vision::V1::FaceAnnotation::Landmark:
#                 type: :NOSE_TIP,
#                 position: <Google::Cloud::Vision::V1::Position: x: 281.633544921875, y: 101.41525268554688, z: -7.059966087341309>
#               >,
#               <Google::Cloud::Vision::V1::FaceAnnotation::Landmark:
#                 type: :UPPER_LIP,
#                 position: <Google::Cloud::Vision::V1::Position: x: 279.3523254394531, y: 107.41559600830078, z: -3.928926467895508>
#               >,
#               <Google::Cloud::Vision::V1::FaceAnnotation::Landmark:
#                 type: :LOWER_LIP,
#                 position: <Google::Cloud::Vision::V1::Position: x: 277.4974365234375, y: 111.97103881835938, z: -3.1748929023742676>
#               >,
#               <Google::Cloud::Vision::V1::FaceAnnotation::Landmark:
#                 type: :MOUTH_LEFT,
#                 position: <Google::Cloud::Vision::V1::Position: x: 270.7825622558594, y: 106.27436065673828, z: -0.9222376346588135>
#               >, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark:
#                 type: :MOUTH_RIGHT,
#                 position: <Google::Cloud::Vision::V1::Position: x: 285.9682922363281, y: 110.88506317138672, z: 1.6840615272521973>
#               >, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark:
#                 type: :MOUTH_CENTER,
#                 position: <Google::Cloud::Vision::V1::Position: x: 278.53961181640625, y: 109.72679901123047, z: -2.928995370864868>
#               >, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark:
#                 type: :NOSE_BOTTOM_RIGHT,
#                 type: <Google::Cloud::Vision::V1::Position: x: 284.7333984375, y: 103.96419525146484, z: -0.5223146677017212>
#               >, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark:
#                 type: :NOSE_BOTTOM_LEFT,
#                 type: <Google::Cloud::Vision::V1::Position: x: 276.0032958984375, y: 101.49774932861328, z: -2.107151508331299>
#               >, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark:
#                 type: :NOSE_BOTTOM_CENTER,
#                 type: <Google::Cloud::Vision::V1::Position: x: 280.2250671386719, y: 104.12652587890625, z: -3.762083053588867>
#               >, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark:
#                 type: :LEFT_EYE_TOP_BOUNDARY,
#                 type: <Google::Cloud::Vision::V1::Position: x: 275.1732177734375, y: 88.7546157836914, z: -0.8294174671173096>
#               >, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark:
#                 type: :LEFT_EYE_RIGHT_CORNER,
#                 type: <Google::Cloud::Vision::V1::Position: x: 278.2859802246094, y: 91.56796264648438, z: 0.5714273452758789>
#               >, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark:
#                 type: :LEFT_EYE_BOTTOM_BOUNDARY,
#                 type: <Google::Cloud::Vision::V1::Position: x: 274.33807373046875, y: 91.48200225830078, z: -0.310760498046875>
#               >, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark:
#                 type: :LEFT_EYE_LEFT_CORNER,
#                 type: <Google::Cloud::Vision::V1::Position: x: 271.6980285644531, y: 89.08113861083984, z: 0.8733594417572021>
#               >, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark:
#                 type: :RIGHT_EYE_TOP_BOUNDARY,
#                 type: <Google::Cloud::Vision::V1::Position: x: 290.77545166015625, y: 93.90914154052734, z: 1.9815601110458374>
#               >, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark:
#                 type: :RIGHT_EYE_RIGHT_CORNER,
#                 type: <Google::Cloud::Vision::V1::Position: x: 292.64056396484375, y: 95.72915649414062, z: 4.805842399597168>
#               >, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark:
#                 type: :RIGHT_EYE_BOTTOM_BOUNDARY,
#                 type: <Google::Cloud::Vision::V1::Position: x: 289.88055419921875, y: 96.37146759033203, z: 2.5660390853881836>
#               >, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark:
#                 type: :RIGHT_EYE_LEFT_CORNER,
#                 type: <Google::Cloud::Vision::V1::Position: x: 287.17822265625, y: 94.55940246582031, z: 2.1907637119293213>
#               >, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark:
#                 type: :LEFT_EYEBROW_UPPER_MIDPOINT,
#                 type: <Google::Cloud::Vision::V1::Position: x: 276.7269287109375, y: 84.51740264892578, z: -1.4374191761016846>
#               >, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark:
#                 type: :RIGHT_EYEBROW_UPPER_MIDPOINT,
#                 type: <Google::Cloud::Vision::V1::Position: x: 292.627685546875, y: 89.94734191894531, z: 1.484334111213684>
#               >, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark:
#                 type: :LEFT_EAR_TRAGION,
#                 type: <Google::Cloud::Vision::V1::Position: x: 256.776611328125, y: 92.03905487060547, z: 17.013397216796875>
#               >, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark:
#                 type: :RIGHT_EAR_TRAGION,
#                 type: <Google::Cloud::Vision::V1::Position: x: 297.9693908691406, y: 104.02485656738281, z: 23.636505126953125>
#               >, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark:
#                 type: :FOREHEAD_GLABELLA,
#                 type: <Google::Cloud::Vision::V1::Position: x: 284.8509826660156, y: 89.32974243164062, z: -1.8826251029968262>
#               >, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark:
#                 type: :CHIN_GNATHION,
#                 type: <Google::Cloud::Vision::V1::Position: x: 275.4480895996094, y: 120.10311126708984, z: -1.4968297481536865>
#               >, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark:
#                 type: :CHIN_LEFT_GONION,
#                 type: <Google::Cloud::Vision::V1::Position: x: 259.2449645996094, y: 107.8570785522461, z: 10.3744478225708>
#               >, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark:
#                 type: :CHIN_RIGHT_GONION,
#                 type: <Google::Cloud::Vision::V1::Position: x: 290.26763916015625, y: 116.95124816894531, z: 15.419412612915039>
#               >, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark:
#                 type: :LEFT_CHEEK_CENTER,
#                 type: <Google::Cloud::Vision::V1::Position: x: 268.652587890625, y: 98.94458770751953, z: 0.27152061462402344>
#               >, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark:
#                 type: :RIGHT_CHEEK_CENTER,
#                 type: <Google::Cloud::Vision::V1::Position: x: 289.9623107910156, y: 105.64620971679688, z: 4.19939661026001>
#               >
#             ],
#           roll_angle: 16.480676651000977,
#           pan_angle: 9.813693046569824,
#           tilt_angle: 3.063206195831299,
#           detection_confidence: 0.7305483818054199,
#           landmarking_confidence: 0.7037537693977356,
#           joy_likelihood: :VERY_LIKELY,
#           sorrow_likelihood: :VERY_UNLIKELY,
#           anger_likelihood: :VERY_UNLIKELY,
#           surprise_likelihood: :VERY_UNLIKELY,
#           under_exposed_likelihood: :VERY_UNLIKELY,
#           blurred_likelihood: :VERY_UNLIKELY,
#           headwear_likelihood: :VERY_UNLIKELY
#         >,
#         <Google::Cloud::Vision::V1::FaceAnnotation:
#           bounding_poly: <Google::Cloud::Vision::V1::BoundingPoly: vertices: [
#             <Google::Cloud::Vision::V1::Vertex: x: 352, y: 90>,
#             <Google::Cloud::Vision::V1::Vertex: x: 407, y: 90>,
#             <Google::Cloud::Vision::V1::Vertex: x: 407, y: 154>,
#             <Google::Cloud::Vision::V1::Vertex: x: 352, y: 154>],
#             normalized_vertices: []>,
#           fd_bounding_poly: <Google::Cloud::Vision::V1::BoundingPoly: vertices: [
#             <Google::Cloud::Vision::V1::Vertex: x: 356, y: 103>,
#             <Google::Cloud::Vision::V1::Vertex: x: 400, y: 103>,
#             <Google::Cloud::Vision::V1::Vertex: x: 400, y: 151>,
#             <Google::Cloud::Vision::V1::Vertex: x: 356, y: 151>],
#             normalized_vertices: []>,
#           landmarks: [<Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :LEFT_EYE, position: <Google::Cloud::Vision::V1::Position: x: 367.1602478027344, y: 127.07318115234375, z: 0.0014382265508174896>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :RIGHT_EYE, position: <Google::Cloud::Vision::V1::Position: x: 381.143798828125, y: 118.90328216552734, z: -2.7103774547576904>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :LEFT_OF_LEFT_EYEBROW, position: <Google::Cloud::Vision::V1::Position: x: 360.58807373046875, y: 125.9560775756836, z: 2.5848708152770996>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :RIGHT_OF_LEFT_EYEBROW, position: <Google::Cloud::Vision::V1::Position: x: 368.3309326171875, y: 121.1624755859375, z: -3.3640201091766357>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :LEFT_OF_RIGHT_EYEBROW, position: <Google::Cloud::Vision::V1::Position: x: 374.9345703125, y: 117.45977783203125, z: -4.6839704513549805>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :RIGHT_OF_RIGHT_EYEBROW, position: <Google::Cloud::Vision::V1::Position: x: 383.3660583496094, y: 112.60736083984375, z: -1.9344011545181274>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :MIDPOINT_BETWEEN_EYES, position: <Google::Cloud::Vision::V1::Position: x: 374.02532958984375, y: 122.50930786132812, z: -4.532815456390381>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :NOSE_TIP, position: <Google::Cloud::Vision::V1::Position: x: 378.0626220703125, y: 132.60092163085938, z: -9.80190372467041>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :UPPER_LIP, position: <Google::Cloud::Vision::V1::Position: x: 380.8354187011719, y: 135.68812561035156, z: -6.390025615692139>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :LOWER_LIP, position: <Google::Cloud::Vision::V1::Position: x: 384.0930480957031, y: 140.0936279296875, z: -5.657421112060547>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :MOUTH_LEFT, position: <Google::Cloud::Vision::V1::Position: x: 376.01165771484375, y: 140.4954376220703, z: -1.0554271936416626>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :MOUTH_RIGHT, position: <Google::Cloud::Vision::V1::Position: x: 389.909423828125, y: 132.57859802246094, z: -3.445577383041382>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :MOUTH_CENTER, position: <Google::Cloud::Vision::V1::Position: x: 382.28521728515625, y: 137.8289337158203, z: -5.410914421081543>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :NOSE_BOTTOM_RIGHT, position: <Google::Cloud::Vision::V1::Position: x: 382.7419738769531, y: 129.46939086914062, z: -4.652470588684082>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :NOSE_BOTTOM_LEFT, position: <Google::Cloud::Vision::V1::Position: x: 375.2972717285156, y: 133.7091827392578, z: -3.141090154647827>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :NOSE_BOTTOM_CENTER, position: <Google::Cloud::Vision::V1::Position: x: 379.46881103515625, y: 133.22586059570312, z: -6.309881210327148>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :LEFT_EYE_TOP_BOUNDARY, position: <Google::Cloud::Vision::V1::Position: x: 366.1678771972656, y: 125.91133880615234, z: -0.7497580051422119>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :LEFT_EYE_RIGHT_CORNER, position: <Google::Cloud::Vision::V1::Position: x: 370.3636474609375, y: 125.69270324707031, z: -0.5921275019645691>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :LEFT_EYE_BOTTOM_BOUNDARY, position: <Google::Cloud::Vision::V1::Position: x: 367.6242980957031, y: 128.2432861328125, z: -0.22345003485679626>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :LEFT_EYE_LEFT_CORNER, position: <Google::Cloud::Vision::V1::Position: x: 364.5301818847656, y: 128.6388702392578, z: 1.9624725580215454>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :RIGHT_EYE_TOP_BOUNDARY, position: <Google::Cloud::Vision::V1::Position: x: 380.6395263671875, y: 117.64344787597656, z: -3.5633034706115723>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :RIGHT_EYE_RIGHT_CORNER, position: <Google::Cloud::Vision::V1::Position: x: 383.87298583984375, y: 117.23234558105469, z: -1.8480736017227173>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :RIGHT_EYE_BOTTOM_BOUNDARY, position: <Google::Cloud::Vision::V1::Position: x: 381.97369384765625, y: 119.83277893066406, z: -2.9955341815948486>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :RIGHT_EYE_LEFT_CORNER, position: <Google::Cloud::Vision::V1::Position: x: 378.8679504394531, y: 120.48988342285156, z: -2.2082619667053223>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :LEFT_EYEBROW_UPPER_MIDPOINT, position: <Google::Cloud::Vision::V1::Position: x: 363.5694885253906, y: 122.27513885498047, z: -1.2410231828689575>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :RIGHT_EYEBROW_UPPER_MIDPOINT, position: <Google::Cloud::Vision::V1::Position: x: 378.246826171875, y: 113.79170989990234, z: -4.201628684997559>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :LEFT_EAR_TRAGION, position: <Google::Cloud::Vision::V1::Position: x: 364.2088317871094, y: 136.7915496826172, z: 20.36676025390625>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :RIGHT_EAR_TRAGION, position: <Google::Cloud::Vision::V1::Position: x: 398.8252258300781, y: 118.32923126220703, z: 13.884587287902832>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :FOREHEAD_GLABELLA, position: <Google::Cloud::Vision::V1::Position: x: 371.9147644042969, y: 119.22764587402344, z: -4.586805820465088>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :CHIN_GNATHION, position: <Google::Cloud::Vision::V1::Position: x: 388.3772277832031, y: 147.0343017578125, z: -3.959005355834961>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :CHIN_LEFT_GONION, position: <Google::Cloud::Vision::V1::Position: x: 373.1500244140625, y: 146.504150390625, z: 12.670257568359375>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :CHIN_RIGHT_GONION, position: <Google::Cloud::Vision::V1::Position: x: 399.2904968261719, y: 131.6227264404297, z: 7.6853532791137695>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :LEFT_CHEEK_CENTER, position: <Google::Cloud::Vision::V1::Position: x: 369.50299072265625, y: 137.40464782714844, z: 1.443202018737793>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :RIGHT_CHEEK_CENTER, position: <Google::Cloud::Vision::V1::Position: x: 389.1466979980469, y: 125.90441131591797, z: -2.3222806453704834>>],
#           roll_angle: -29.846446990966797,
#           pan_angle: -9.684064865112305,
#           tilt_angle: 2.4273338317871094,
#           detection_confidence: 0.7221433520317078,
#           landmarking_confidence: 0.7327569723129272, joy_likelihood: :VERY_LIKELY, sorrow_likelihood: :VERY_UNLIKELY, anger_likelihood: :VERY_UNLIKELY, surprise_likelihood: :VERY_UNLIKELY, under_exposed_likelihood: :VERY_UNLIKELY, blurred_likelihood: :VERY_UNLIKELY, headwear_likelihood: :VERY_UNLIKELY>,
#         <Google::Cloud::Vision::V1::FaceAnnotation:
#           bounding_poly: <Google::Cloud::Vision::V1::BoundingPoly: vertices: [
#             <Google::Cloud::Vision::V1::Vertex: x: 307, y: 146>,
#             <Google::Cloud::Vision::V1::Vertex: x: 356, y: 146>,
#             <Google::Cloud::Vision::V1::Vertex: x: 356, y: 203>,
#             <Google::Cloud::Vision::V1::Vertex: x: 307, y: 203>], normalized_vertices: []>,
#           fd_bounding_poly: <Google::Cloud::Vision::V1::BoundingPoly: vertices: [
#             <Google::Cloud::Vision::V1::Vertex: x: 313, y: 156>,
#             <Google::Cloud::Vision::V1::Vertex: x: 353, y: 156>,
#             <Google::Cloud::Vision::V1::Vertex: x: 353, y: 199>,
#             <Google::Cloud::Vision::V1::Vertex: x: 313, y: 199>], normalized_vertices: []>,
#           landmarks: [<Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :LEFT_EYE, position: <Google::Cloud::Vision::V1::Position: x: 325.4539489746094, y: 173.88169860839844, z: -0.0002879500389099121>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :RIGHT_EYE, position: <Google::Cloud::Vision::V1::Position: x: 339.9693908691406, y: 175.8215789794922, z: 0.4617481827735901>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :LEFT_OF_LEFT_EYEBROW, position: <Google::Cloud::Vision::V1::Position: x: 320.5545959472656, y: 169.22509765625, z: 1.2322920560836792>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :RIGHT_OF_LEFT_EYEBROW, position: <Google::Cloud::Vision::V1::Position: x: 329.5046691894531, y: 169.88333129882812, z: -2.687004566192627>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :LEFT_OF_RIGHT_EYEBROW, position: <Google::Cloud::Vision::V1::Position: x: 336.0434265136719, y: 170.83111572265625, z: -2.4984793663024902>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :RIGHT_OF_RIGHT_EYEBROW, position: <Google::Cloud::Vision::V1::Position: x: 344.7099304199219, y: 172.02450561523438, z: 1.9800111055374146>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :MIDPOINT_BETWEEN_EYES, position: <Google::Cloud::Vision::V1::Position: x: 333.4505920410156, y: 174.54087829589844, z: -2.8287363052368164>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :NOSE_TIP, position: <Google::Cloud::Vision::V1::Position: x: 332.6688537597656, y: 183.27114868164062, z: -7.1804094314575195>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :UPPER_LIP, position: <Google::Cloud::Vision::V1::Position: x: 331.87384033203125, y: 188.1302947998047, z: -3.7564759254455566>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :LOWER_LIP, position: <Google::Cloud::Vision::V1::Position: x: 331.37310791015625, y: 194.06141662597656, z: -2.7109665870666504>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :MOUTH_LEFT, position: <Google::Cloud::Vision::V1::Position: x: 325.5411071777344, y: 190.06700134277344, z: -0.006361931562423706>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :MOUTH_RIGHT, position: <Google::Cloud::Vision::V1::Position: x: 337.90673828125, y: 190.7374267578125, z: 0.4633640646934509>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :MOUTH_CENTER, position: <Google::Cloud::Vision::V1::Position: x: 331.47821044921875, y: 191.15643310546875, z: -2.672523021697998>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :NOSE_BOTTOM_RIGHT, position: <Google::Cloud::Vision::V1::Position: x: 336.3161926269531, y: 184.29359436035156, z: -1.4738553762435913>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :NOSE_BOTTOM_LEFT, position: <Google::Cloud::Vision::V1::Position: x: 328.2384033203125, y: 183.24993896484375, z: -1.6866936683654785>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :NOSE_BOTTOM_CENTER, position: <Google::Cloud::Vision::V1::Position: x: 332.1512145996094, y: 185.12754821777344, z: -3.820073127746582>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :LEFT_EYE_TOP_BOUNDARY, position: <Google::Cloud::Vision::V1::Position: x: 325.38006591796875, y: 172.54867553710938, z: -0.8679259419441223>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :LEFT_EYE_RIGHT_CORNER, position: <Google::Cloud::Vision::V1::Position: x: 328.57281494140625, y: 174.58578491210938, z: 0.08953863382339478>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :LEFT_EYE_BOTTOM_BOUNDARY, position: <Google::Cloud::Vision::V1::Position: x: 325.19873046875, y: 175.08558654785156, z: -0.16302400827407837>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :LEFT_EYE_LEFT_CORNER, position: <Google::Cloud::Vision::V1::Position: x: 322.57965087890625, y: 173.39906311035156, z: 1.2771234512329102>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :RIGHT_EYE_TOP_BOUNDARY, position: <Google::Cloud::Vision::V1::Position: x: 340.4138488769531, y: 174.59326171875, z: -0.41586822271347046>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :RIGHT_EYE_RIGHT_CORNER, position: <Google::Cloud::Vision::V1::Position: x: 342.57794189453125, y: 175.77664184570312, z: 1.9461252689361572>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :RIGHT_EYE_BOTTOM_BOUNDARY, position: <Google::Cloud::Vision::V1::Position: x: 340.156982421875, y: 176.94920349121094, z: 0.32530564069747925>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :RIGHT_EYE_LEFT_CORNER, position: <Google::Cloud::Vision::V1::Position: x: 337.468994140625, y: 175.73194885253906, z: 0.3637183904647827>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :LEFT_EYEBROW_UPPER_MIDPOINT, position: <Google::Cloud::Vision::V1::Position: x: 324.97540283203125, y: 168.14341735839844, z: -1.6668365001678467>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :RIGHT_EYEBROW_UPPER_MIDPOINT, position: <Google::Cloud::Vision::V1::Position: x: 340.3035888671875, y: 170.05166625976562, z: -1.244990348815918>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :LEFT_EAR_TRAGION, position: <Google::Cloud::Vision::V1::Position: x: 315.39227294921875, y: 177.79763793945312, z: 18.276390075683594>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :RIGHT_EAR_TRAGION, position: <Google::Cloud::Vision::V1::Position: x: 348.6368713378906, y: 179.3889923095703, z: 19.489534378051758>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :FOREHEAD_GLABELLA, position: <Google::Cloud::Vision::V1::Position: x: 333.852294921875, y: 171.10369873046875, z: -3.1308319568634033>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :CHIN_GNATHION, position: <Google::Cloud::Vision::V1::Position: x: 330.9848327636719, y: 201.75332641601562, z: -0.624168336391449>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :CHIN_LEFT_GONION, position: <Google::Cloud::Vision::V1::Position: x: 318.56146240234375, y: 191.58837890625, z: 12.240876197814941>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :CHIN_RIGHT_GONION, position: <Google::Cloud::Vision::V1::Position: x: 344.4760437011719, y: 192.80404663085938, z: 13.114941596984863>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :LEFT_CHEEK_CENTER, position: <Google::Cloud::Vision::V1::Position: x: 321.7892150878906, y: 183.2698974609375, z: 1.3495275974273682>>, <Google::Cloud::Vision::V1::FaceAnnotation::Landmark: type: :RIGHT_CHEEK_CENTER, position: <Google::Cloud::Vision::V1::Position: x: 341.4975280761719, y: 185.37315368652344, z: 2.025646686553955>>],
#           roll_angle: 4.609929084777832, pan_angle: 1.883529543876648, tilt_angle: -1.0131734609603882, detection_confidence: 0.9528078436851501, landmarking_confidence: 0.5816184878349304, joy_likelihood: :VERY_LIKELY, sorrow_likelihood: :VERY_UNLIKELY, anger_likelihood: :VERY_UNLIKELY, surprise_likelihood: :VERY_UNLIKELY, under_exposed_likelihood: :VERY_UNLIKELY, blurred_likelihood: :VERY_UNLIKELY, headwear_likelihood: :VERY_UNLIKELY>
#       ]
#     >
#   ]
# >


# GoogleCloudVisionAPIのサンプルコード実行
# image_annotator = Google::Cloud::Vision.image_annotator
#
# response = image_annotator.text_detection(
#   image: "/root/google_api_sandbox/api_exec_results/vision/upload_images/sample.png",
#   max_results: 1 # optional, defaults to 10
# )
#
# response.responses.each do |res|
#   res.text_annotations.each do |text|
#     puts text.description
#   end
# end
#
# face_detectionでもこの記法が有効なことをGoogleVisionAPIのソースコードのテストから確認
# https://github.com/googleapis/google-cloud-ruby/blob/719c421b316cf9eb21df3b47abed73a6b0444c84/google-cloud-vision-v1/acceptance/google/cloud/vision/v1/helpers_smoke_test.rb#L53
