# == Schema Information
#
# Table name: type_foods
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class TypeFood < ActiveRecord::Base
  has_many :foods
end
