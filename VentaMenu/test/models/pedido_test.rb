# == Schema Information
#
# Table name: pedidos
#
#  id          :integer          not null, primary key
#  fecha       :date
#  horapedido  :string(255)
#  horaentrega :string(255)
#  estado      :string(255)
#  montopedido :float(24)
#  cartacab_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class PedidoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
