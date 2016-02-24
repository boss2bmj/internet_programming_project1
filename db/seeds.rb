# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


poi = Product.create(title: "Racket")

poi_racket_info = PoiRacketInfo.create(title_name: "racket 1")
poi_product_info = PoiProductInfo.create(product_id: poi.id, poi_info: poi_racket_info)



poi_grips_info = PoiGripsInfo.create(title_name: "grip 1")

# poi_product_info = PoiProductInfo.create(product_id: poi.id, poi_info_type: "PoiGripsInfo", poi_info_id: poi_grips_info.id)
