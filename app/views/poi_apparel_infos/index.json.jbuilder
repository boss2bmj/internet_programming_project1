json.array!(@poi_apparel_infos) do |poi_apparel_info|
  json.extract! poi_apparel_info, :id, :title_name, :description, :image_url, :price, :stock
  json.url poi_apparel_info_url(poi_apparel_info, format: :json)
end
