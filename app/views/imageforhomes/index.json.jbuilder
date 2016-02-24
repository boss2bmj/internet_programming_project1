json.array!(@imageforhomes) do |imageforhome|
  json.extract! imageforhome, :id, :image_name, :description
  json.url imageforhome_url(imageforhome, format: :json)
end
