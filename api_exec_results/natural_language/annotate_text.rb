require 'google/cloud/language'

language_service_client = Google::Cloud::Language.language_service version: :v1
features = {
  extractSyntax: true,
  extractEntities: true,
  extractDocumentSentiment: true
},
document = { content: "Hello, world!", type: :PLAIN_TEXT }
response = language_service_client.annotate_text document: document, features: features

pp response