# == Schema Information
#
# Table name: menus
#
#  id           :integer          not null, primary key
#  nombre       :string(255)
#  descripcion  :text
#  tipoplato_id :integer
#  created_at   :datetime
#  updated_at   :datetime
#

require 'test_helper'

class MenuTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
