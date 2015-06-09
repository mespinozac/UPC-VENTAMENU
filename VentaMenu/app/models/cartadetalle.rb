# == Schema Information
#
# Table name: cartadetalles
#
#  id          :integer          not null, primary key
#  estado      :string(255)
#  cartacab_id :integer
#  menu_id     :integer
#  tipomenu_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Cartadetalle < ActiveRecord::Base
  belongs_to :cartacab
  belongs_to :menu
  belongs_to :tipomenu
end
