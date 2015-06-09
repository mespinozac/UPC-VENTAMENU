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

class Menu < ActiveRecord::Base
  belongs_to :tipoplato
end
