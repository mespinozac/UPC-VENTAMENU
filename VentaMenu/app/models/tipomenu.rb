# == Schema Information
#
# Table name: tipomenus
#
#  id         :integer          not null, primary key
#  nombre     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Tipomenu < ActiveRecord::Base
    has_many :cartadetalle
end
