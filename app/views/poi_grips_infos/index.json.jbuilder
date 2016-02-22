json.array!(@poi_grips_infos) do |poi_grips_info|
  json.extract! poi_grips_info, :id, :title_name, :description, :image_url, :color, :price, :stock
  json.url poi_grips_info_url(poi_grips_info, format: :json)
end
