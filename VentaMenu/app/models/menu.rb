# == Schema Information
#
# Table name: menus
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  dateMenu   :date
#  status     :string(255)
#  price      :float(24)
#  local_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Menu < ActiveRecord::Base
  belongs_to :local
end

