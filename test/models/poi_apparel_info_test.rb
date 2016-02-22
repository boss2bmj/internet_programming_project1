# == Schema Information
#
# Table name: poi_apparel_infos
#
#  id          :integer          not null, primary key
#  title_name  :string
#  description :text
#  image_url   :string
#  price       :integer
#  stock       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class PoiApparelInfoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
