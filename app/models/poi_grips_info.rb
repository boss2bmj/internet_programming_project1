# == Schema Information
#
# Table name: poi_grips_infos
#
#  id          :integer          not null, primary key
#  title_name  :string
#  description :text
#  image_url   :string
#  color       :string
#  price       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class PoiGripsInfo < ActiveRecord::Base
  has_one:poi_product_info, as: :poi_info
end
