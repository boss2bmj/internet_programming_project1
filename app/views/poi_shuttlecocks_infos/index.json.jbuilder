json.array!(@poi_shuttlecocks_infos) do |poi_shuttlecocks_info|
  json.extract! poi_shuttlecocks_info, :id, :title_name, :description, :image_url, :price, :stock
  json.url poi_shuttlecocks_info_url(poi_shuttlecocks_info, format: :json)
end
