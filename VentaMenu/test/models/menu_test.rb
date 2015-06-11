# == Schema Information
#
# Table name: menus
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  dateMenu   :date
#  status     :string(255)
#  price      :float(24)
#  local_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class MenuTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
