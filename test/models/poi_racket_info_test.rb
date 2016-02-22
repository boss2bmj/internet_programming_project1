# == Schema Information
#
# Table name: poi_racket_infos
#
#  id          :integer          not null, primary key
#  title_name  :string
#  description :text
#  image_url   :string
#  shaft       :string
#  weight      :string
#  length      :string
#  price       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class PoiRacketInfoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
