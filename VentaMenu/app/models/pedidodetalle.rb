class Pedidodetalle < ActiveRecord::Base
  belongs_to :pedido
  belongs_to :menu
end
