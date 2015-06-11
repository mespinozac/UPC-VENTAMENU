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

require 'test_helper'

class MenuDetailTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
