# == Schema Information
#
# Table name: foods
#
#  id                   :integer          not null, primary key
#  name                 :string(255)
#  description          :string(255)
#  type_food_id         :integer
#  created_at           :datetime
#  updated_at           :datetime
#  picture_file_name    :string(255)
#  picture_content_type :string(255)
#  picture_file_size    :integer
#  picture_updated_at   :datetime
#

class Food < ActiveRecord::Base
    belongs_to :type_food
    
 #Attachment attribute
  has_attached_file :picture, 
                    styles: {medium: "300x300>", thumb: "100x100>"},
                    default_url: "/images/:styles/missing.png"
 validates :picture, 
 attachment_presence: true, presence: true
 validates_attachment :picture, 
 content_type: { content_type: ["image/jpeg", "image/png", "image/gif"] }

end
