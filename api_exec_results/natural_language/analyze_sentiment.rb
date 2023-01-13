require 'google/cloud/language'

language_service_client = Google::Cloud::Language.language_service version: :v1

# content = "Hello, world!"
content = "きれい。嬉しい。キッチン。白い。青空。呪い。日本人。泣く。笑う。笑い。涙。"
document = { content: content, type: :PLAIN_TEXT }

response = language_service_client.analyze_sentiment document: document

sentiment = response.document_sentiment
score = sentiment.score.to_f.round(1)
magnitude = sentiment.magnitude.to_f.round(1)
puts "Score: #{score}"
puts "Magnitude: #{magnitude}"
puts ""

sentences = response.sentences
if sentences.size > 1
  sentences.each do |sentence|
    text = sentence.text.content

    sentiment = sentence.sentiment    
    score = sentiment.score.to_f.round(1)
    magnitude = sentiment.magnitude.to_f.round(1)

    puts "text: #{text}"
    puts "Score: #{score}"
    puts "Magnitude: #{magnitude}"
    puts ""
  end
else 
  pp response
end




# input: "Hello, world!"
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

# input: 女性
# Score: 0.0
# Magnitude: 0.0
# <Google::Cloud::Language::V1::AnalyzeSentimentResponse: document_sentiment: <Google::Cloud::Language::V1::Sentiment: magnitude: 0.0, score: 0.0>, language: "zh", sentences: [<Google::Cloud::Language::V1::Sentence: text: <Google::Cloud::Language::V1::TextSpan: content: "女性", begin_offset: -1>, sentiment: <Google::Cloud::Language::V1::Sentiment: magnitude: 0.0, score: 0.0>>]>

# input: 悲しい
# Score: -0.8
# Magnitude: 0.8
# <Google::Cloud::Language::V1::AnalyzeSentimentResponse: document_sentiment: <Google::Cloud::Language::V1::Sentiment: magnitude: 0.800000011920929, score: -0.800000011920929>, language: "ja", sentences: [<Google::Cloud::Language::V1::Sentence: text: <Google::Cloud::Language::V1::TextSpan: content: "悲しい", begin_offset: -1>, sentiment: <Google::Cloud::Language::V1::Sentiment: magnitude: 0.800000011920929, score: -0.800000011920929>>]>

# input: きれい 嬉しい キッチン 白い 青空 呪い 日本人
# Score: 0.9
# Magnitude: 0.9
# <Google::Cloud::Language::V1::AnalyzeSentimentResponse: document_sentiment: <Google::Cloud::Language::V1::Sentiment: magnitude: 0.8999999761581421, score: 0.8999999761581421>, language: "ja", sentences: [<Google::Cloud::Language::V1::Sentence: text: <Google::Cloud::Language::V1::TextSpan: content: "きれい 嬉しい キッチン 白い 青空 呪 い 日本人", begin_offset: -1>, sentiment: <Google::Cloud::Language::V1::Sentiment: magnitude: 0.8999999761581421, score: 0.8999999761581421>>]>
# 単語単位に分かれて感情が出るみたいではないみたい。そりゃ、sentensesだもんね。

# input: いいか悪いかなんて全然わからないけど、まず理解できてないんだよね。最初から説明してもらってもいいかな
# Score: -0.3
# Magnitude: 0.8
# <Google::Cloud::Language::V1::AnalyzeSentimentResponse: document_sentiment: <Google::Cloud::Language::V1::Sentiment: magnitude: 0.800000011920929, score: -0.30000001192092896>, language: "ja", sentences: [<Google::Cloud::Language::V1::Sentence: text: <Google::Cloud::Language::V1::TextSpan: content: "いいか悪いかなんて全然わからないけ ど、まず理解できてないんだよね。", begin_offset: -1>, sentiment: <Google::Cloud::Language::V1::Sentiment: magnitude: 0.699999988079071, score: -0.699999988079071>>, <Google::Cloud::Language::V1::Sentence: text: <Google::Cloud::Language::V1::TextSpan: content: "最初から説明してもらってもいいかな", begin_offset: -1>, sentiment: <Google::Cloud::Language::V1::Sentiment: magnitude: 0.0, score: 0.0>>]>


# input: きれい。嬉しい。キッチン。白い。青空。呪い。日本人。泣く。笑う。笑い。涙。
# 全体
# Score: 0.4
# Magnitude: 4.3

# text: きれい。
# Score: 0.9
# Magnitude: 0.9

# text: 嬉しい。
# Score: 0.9
# Magnitude: 0.9

# text: キッチン。
# Score: 0.2
# Magnitude: 0.2

# text: 白い。
# Score: 0.1
# Magnitude: 0.1

# text: 青空。
# Score: 0.2
# Magnitude: 0.2

# text: 呪い。
# Score: 0.3
# Magnitude: 0.3

# text: 日本人。
# Score: 0.0
# Magnitude: 0.0

# text: 泣く。
# Score: 0.2
# Magnitude: 0.2

# text: 笑う。
# Score: 0.3
# Magnitude: 0.3

# text: 笑い。
# Score: 0.7
# Magnitude: 0.7

# text: 涙。
# Score: 0.0
# Magnitude: 0.0