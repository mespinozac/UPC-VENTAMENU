# == Schema Information
#
# Table name: ciudads
#
#  id         :integer          not null, primary key
#  nombre     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Ciudad < ActiveRecord::Base
    has_many :local
end
