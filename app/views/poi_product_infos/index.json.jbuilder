json.array!(@poi_product_infos) do |poi_product_info|
  json.extract! poi_product_info, :id, :detailed_description, :product_id, :poi_info_id, :poi_info_type
  json.url poi_product_info_url(poi_product_info, format: :json)
end
