# == Schema Information
#
# Table name: imageforhomes
#
#  id                 :integer          not null, primary key
#  image_name         :string
#  description        :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Imageforhome < ActiveRecord::Base
  has_attached_file :image, styles: { superlarge: "1200x560>",large: "700x700>", medium: "300x300>", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
