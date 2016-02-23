# == Schema Information
#
# Table name: poi_product_infos
#
#  id                   :integer          not null, primary key
#  detailed_description :text
#  product_id           :integer
#  poi_info_id          :integer
#  poi_info_type        :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#
# Indexes
#
#  index_poi_product_infos_on_poi_info_id    (poi_info_id)
#  index_poi_product_infos_on_poi_info_type  (poi_info_type)
#  index_poi_product_infos_on_product_id     (product_id)
#

class PoiProductInfo < ActiveRecord::Base
  belongs_to :product
  belongs_to :poi_info, polymorphic: true
end
