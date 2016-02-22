rails g scaffold product title:string description:text image_url:string price:integer category:string subcategory:string stock:integer

rails g scaffold PoiProductInfo detailed_description:text product:references poi_info_id:integer:index poi_info_type:string:index




rails g scaffold PoiApparelInfo title_name:string description:text image_url:string price:integer stock:integer
rails g scaffold PoiRacketInfo title_name:string description:text image_url:string shaft:string weight:string length:string price:integer
rails g scaffold PoiStringInfo title_name:string description:text image_url:string guage:string length:string color:string price:integer
rails g scaffold PoiGripsInfo title_name:string description:text image_url:string color:string price:integer
rails g scaffold PoiShuttlecocksInfo title_name:string description:text image_url:string price:integer


rails g paperclip poi_apparel_infos image
rails g paperclip poi_grips_infos image
rails g paperclip poi_racket_infos image
rails g paperclip poi_shuttlecocks_infos image
rails g paperclip poi_string_infos image
