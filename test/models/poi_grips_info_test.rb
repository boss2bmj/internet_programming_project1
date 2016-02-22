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

require 'test_helper'

class PoiGripsInfoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
