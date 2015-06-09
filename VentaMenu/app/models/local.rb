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

class Local < ActiveRecord::Base
  belongs_to :ciudad
  has_many :cartacab
end
