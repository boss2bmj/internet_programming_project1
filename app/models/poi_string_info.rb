# == Schema Information
#
# Table name: poi_string_infos
#
#  id          :integer          not null, primary key
#  title_name  :string
#  description :text
#  image_url   :string
#  guage       :string
#  length      :string
#  color       :string
#  price       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class PoiStringInfo < ActiveRecord::Base
  has_one:poi_product_info, as: :poi_info
end
