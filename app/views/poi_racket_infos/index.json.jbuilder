json.array!(@poi_racket_infos) do |poi_racket_info|
  json.extract! poi_racket_info, :id, :title_name, :description, :image_url, :shaft, :weight, :length, :price, :stock
  json.url poi_racket_info_url(poi_racket_info, format: :json)
end
