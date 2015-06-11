# == Schema Information
#
# Table name: locals
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  address    :string(255)
#  telephone  :string(255)
#  celphone   :string(255)
#  mail       :string(255)
#  city_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Local < ActiveRecord::Base
  belongs_to :city
end
