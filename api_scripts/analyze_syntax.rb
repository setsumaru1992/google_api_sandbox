require 'google/cloud/language'

language_service_client = Google::Cloud::Language.language_service version: :v1
document = { content: "Hello, world!", type: :PLAIN_TEXT }
response = language_service_client.analyze_syntax document: document

pp response