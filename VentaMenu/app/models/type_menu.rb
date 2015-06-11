# == Schema Information
#
# Table name: type_menus
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class TypeMenu < ActiveRecord::Base
    has_many :menu_details
end
