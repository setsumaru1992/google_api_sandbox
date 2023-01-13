require "google/cloud/vision"







# サンプルコード実行
image_annotator = Google::Cloud::Vision.image_annotator

response = image_annotator.text_detection(
  image: "/root/google_api_sandbox/api_exec_results/vision/upload_images/sample.png",
  max_results: 1 # optional, defaults to 10
)

response.responses.each do |res|
  res.text_annotations.each do |text|
    puts text.description
  end
end