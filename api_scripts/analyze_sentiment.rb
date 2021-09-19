require 'google/cloud/language'

language_service_client = Google::Cloud::Language.language_service version: :v1
document = { content: "Hello, world!", type: :PLAIN_TEXT }
response = language_service_client.analyze_sentiment document: document

sentiment = response.document_sentiment

score = sentiment.score.to_f.round(1) #float型に変換,少数第2位を四捨五入
magnitude = sentiment.magnitude.to_f.round(1)
puts "Score: #{score}"
puts "Magnitude: #{magnitude}"

pp response

# "Hello, world!"がdocumentのとき
# Score: 0.6
# Magnitude: 0.6
# <Google::Cloud::Language::V1::AnalyzeSentimentResponse: 
#   document_sentiment: <Google::Cloud::Language::V1::Sentiment: 
#     magnitude: 0.6000000238418579, score: 0.6000000238418579
#     >, 
#   language: "en", 
#   sentences: [
#     <Google::Cloud::Language::V1::Sentence: 
#       text: <Google::Cloud::Language::V1::TextSpan: content: "Hello, world!", begin_offset: -1>, 
#       sentiment: <Google::Cloud::Language::V1::Sentiment: 
#         magnitude: 0.6000000238418579, 
#         score: 0.6000000238418579
#       >
#     >
#   ]
# >