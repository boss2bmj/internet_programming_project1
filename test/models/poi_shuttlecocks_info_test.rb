# == Schema Information
#
# Table name: poi_shuttlecocks_infos
#
#  id                 :integer          not null, primary key
#  title_name         :string
#  description        :text
#  image_url          :string
#  price              :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

require 'test_helper'

class PoiShuttlecocksInfoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
