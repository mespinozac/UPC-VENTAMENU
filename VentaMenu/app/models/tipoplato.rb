# == Schema Information
#
# Table name: tipoplatos
#
#  id         :integer          not null, primary key
#  nombre     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Tipoplato < ActiveRecord::Base
    has_many :menus
end
