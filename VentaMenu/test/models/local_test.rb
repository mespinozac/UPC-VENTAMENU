# == Schema Information
#
# Table name: locals
#
#  id         :integer          not null, primary key
#  nombre     :string(255)
#  direccion  :text
#  telefono   :string(255)
#  celular    :string(255)
#  ciudad_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class LocalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
