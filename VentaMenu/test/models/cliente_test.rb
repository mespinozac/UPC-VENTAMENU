# == Schema Information
#
# Table name: clientes
#
#  id             :integer          not null, primary key
#  nombre         :string(255)
#  apellidos      :string(255)
#  celular        :string(255)
#  correo         :string(255)
#  empresa        :string(255)
#  direccionenvio :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#

require 'test_helper'

class ClienteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
