# == Schema Information
#
# Table name: pedidodetalles
#
#  id         :integer          not null, primary key
#  estado     :string(255)
#  pedido_id  :integer
#  menu_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class PedidodetalleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
