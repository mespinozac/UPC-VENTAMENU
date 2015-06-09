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

class Pedidodetalle < ActiveRecord::Base
  belongs_to :pedido
  belongs_to :menu
end
