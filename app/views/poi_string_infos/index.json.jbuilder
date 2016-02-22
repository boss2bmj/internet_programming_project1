json.array!(@poi_string_infos) do |poi_string_info|
  json.extract! poi_string_info, :id, :title_name, :description, :image_url, :guage, :length, :color, :price
  json.url poi_string_info_url(poi_string_info, format: :json)
end
