require 'google/cloud/language'

language_service_client = Google::Cloud::Language.language_service version: :v1
document = { content: "Hello, world!", type: :PLAIN_TEXT }
response = language_service_client.analyze_entities document: document

pp response

# 結果: world→common
# <Google::Cloud::Language::V1::AnalyzeEntitiesResponse: 
#   entities: [
#     <Google::Cloud::Language::V1::Entity: 
#       name: "world", 
#       type: :LOCATION, 
#       metadata: {}, 
#       salience: 1.0, 
#       mentions: [
#         <Google::Cloud::Language::V1::EntityMention: 
#           text: <Google::Cloud::Language::V1::TextSpan: 
#             content: "world", 
#             begin_offset: -1
#           >, 
#           type: :COMMON
#         >
#       ]
#     >
#   ], 
#   language: "en"
# >