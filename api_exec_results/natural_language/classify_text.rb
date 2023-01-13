require 'google/cloud/language'

language_service_client = Google::Cloud::Language.language_service version: :v1
# content = "Hello, world!"
# content = "私のお墓の前で泣かないでください。"
content = "Thank you for filling out the spreadsheet. Future communication will be via Mike again! Just contact me if you are in a hurry."
document = { content: content, type: :PLAIN_TEXT }
response = language_service_client.classify_text document: document

pp response

# 成功例
# input: Thank you for filling out the spreadsheet. Future communication will be via Mike again! Just contact me if you are in a hurry.
# <Google::Cloud::Language::V1::ClassifyTextResponse: 
#   categories: [
#     <Google::Cloud::Language::V1::ClassificationCategory: 
#       name: "/Computers & Electronics/Software/Business & Productivity Software", 
#       confidence: 0.7900000214576721
#     >, 
#     <Google::Cloud::Language::V1::ClassificationCategory: 
#       name: "/Business & Industrial", 
#       confidence: 0.5299999713897705
#     >
#   ]
# >


# 失敗例

# ワードが20語以下はだめ
# input: Hello, world!
# → /usr/local/bundle/gems/google-cloud-language-v1-0.4.3/lib/google/cloud/language/v1/language_service/client.rb:496:in `rescue in classify_text': 
# 3:Invalid text content: too few tokens (words) to process.. debug_error_string:{"created":"@1632382308.311562000","description":"Error received from peer ipv4:172.217.31.138:443","file":"src/core/lib/surface/call.cc","file_line":1069,"grpc_message":"Invalid text content: too few tokens (words) to process.","grpc_status":3} (Google::Cloud::InvalidArgumentError)
# ↑重要: classifyText メソッドには、少なくとも 20 個のトークン（単語）を含むテキスト ブロック（ドキュメント）を指定する必要があります。

# 日本語はだめ
# input: 私のお墓の前で泣かないでください。
# → /usr/local/bundle/gems/google-cloud-language-v1-0.4.3/lib/google/cloud/language/v1/language_service/client.rb:496:in `rescue in classify_text': 
# 3:The language ja is not supported for classify_text analysis.. debug_error_string:{"created":"@1632382942.093611400","description":"Error received from peer ipv4:172.217.26.42:443","file":"src/core/lib/surface/call.cc","file_line":1069,"grpc_message":"The language ja is not supported for classify_text analysis.","grpc_status":3} (Google::Cloud::InvalidArgumentError)
