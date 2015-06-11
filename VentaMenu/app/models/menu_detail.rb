# == Schema Information
#
# Table name: menu_details
#
#  id           :integer          not null, primary key
#  status       :string(255)
#  menu_id      :integer
#  food_id      :integer
#  type_menu_id :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class MenuDetail < ActiveRecord::Base
  belongs_to :menu
  belongs_to :food
  belongs_to :type_menu
end
