require 'google/cloud/language'

language_service_client = Google::Cloud::Language.language_service version: :v1
document = { content: "Hello, world!", type: :PLAIN_TEXT }
response = language_service_client.analyze_syntax document: document

pp response

# <Google::Cloud::Language::V1::AnalyzeSyntaxResponse: 
#   sentences: [
#     <Google::Cloud::Language::V1::Sentence: 
#       text: <Google::Cloud::Language::V1::TextSpan: 
#         content: "Hello, world!", 
#         begin_offset: -1
#       >
#     >
#   ], 
#   tokens: [
#     <Google::Cloud::Language::V1::Token: 
#       text: <Google::Cloud::Language::V1::TextSpan: 
#         content: "Hello", 
#         begin_offset: -1
#       >, 
#       part_of_speech: <Google::Cloud::Language::V1::PartOfSpeech: 
#         tag: :X, 
#         aspect: :ASPECT_UNKNOWN, 
#         case: :CASE_UNKNOWN, 
#         form: :FORM_UNKNOWN, 
#         gender: :GENDER_UNKNOWN, 
#         mood: :MOOD_UNKNOWN, 
#         number: :NUMBER_UNKNOWN, 
#         person: :PERSON_UNKNOWN, 
#         proper: :PROPER_UNKNOWN, 
#         reciprocity: :RECIPROCITY_UNKNOWN, 
#         tense: :TENSE_UNKNOWN, 
#         voice: :VOICE_UNKNOWN
#       >, 
#       dependency_edge: <Google::Cloud::Language::V1::DependencyEdge: 
#         head_token_index: 2, 
#         label: :DISCOURSE
#       >, 
#       lemma: "Hello"
#     >, 
#     <Google::Cloud::Language::V1::Token: 
#       text: <Google::Cloud::Language::V1::TextSpan: 
#         content: ",", 
#         begin_offset: -1
#       >, 
#       part_of_speech: <Google::Cloud::Language::V1::PartOfSpeech: 
#         tag: :PUNCT, 
#         aspect: :ASPECT_UNKNOWN, 
#         case: :CASE_UNKNOWN, 
#         form: :FORM_UNKNOWN, 
#         gender: :GENDER_UNKNOWN, 
#         mood: :MOOD_UNKNOWN, 
#         number: :NUMBER_UNKNOWN, 
#         person: :PERSON_UNKNOWN, 
#         proper: :PROPER_UNKNOWN, 
#         reciprocity: :RECIPROCITY_UNKNOWN, 
#         tense: :TENSE_UNKNOWN, 
#         voice: :VOICE_UNKNOWN
#       >, 
#       dependency_edge: <Google::Cloud::Language::V1::DependencyEdge: 
#         head_token_index: 2, 
#         label: :P
#       >, 
#       lemma: ","
#     >, 
#     <Google::Cloud::Language::V1::Token: 
#       text: <Google::Cloud::Language::V1::TextSpan: 
#         content: "world", 
#         begin_offset: -1
#       >, 
#       part_of_speech: <Google::Cloud::Language::V1::PartOfSpeech: 
#         tag: :NOUN, 
#         aspect: :ASPECT_UNKNOWN, 
#         case: :CASE_UNKNOWN, 
#         form: :FORM_UNKNOWN, 
#         gender: :GENDER_UNKNOWN, 
#         mood: :MOOD_UNKNOWN, 
#         number: :SINGULAR, 
#         person: :PERSON_UNKNOWN, 
#         proper: :PROPER_UNKNOWN, 
#         reciprocity: :RECIPROCITY_UNKNOWN, 
#         tense: :TENSE_UNKNOWN, 
#         voice: :VOICE_UNKNOWN
#       >, 
#       dependency_edge: <Google::Cloud::Language::V1::DependencyEdge: 
#         head_token_index: 2, 
#         label: :ROOT
#       >, 
#       lemma: "world"
#     >, 
#     <Google::Cloud::Language::V1::Token: 
#       text: <Google::Cloud::Language::V1::TextSpan: 
#         content: "!", 
#         begin_offset: -1
#       >, 
#       part_of_speech: <Google::Cloud::Language::V1::PartOfSpeech: 
#         tag: :PUNCT, 
#         aspect: :ASPECT_UNKNOWN, 
#         case: :CASE_UNKNOWN, 
#         form: :FORM_UNKNOWN, 
#         gender: :GENDER_UNKNOWN, 
#         mood: :MOOD_UNKNOWN, 
#         number: :NUMBER_UNKNOWN, 
#         person: :PERSON_UNKNOWN, 
#         proper: :PROPER_UNKNOWN, 
#         reciprocity: :RECIPROCITY_UNKNOWN, 
#         tense: :TENSE_UNKNOWN, 
#         voice: :VOICE_UNKNOWN
#       >, 
#       dependency_edge: <Google::Cloud::Language::V1::DependencyEdge: 
#         head_token_index: 2, 
#         label: :P
#       >, 
#       lemma: "!"
#     >
#   ], 
#   language: "en"
>