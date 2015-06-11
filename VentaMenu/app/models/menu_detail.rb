class MenuDetail < ActiveRecord::Base
  belongs_to :menu
  belongs_to :food
  belongs_to :type_menu
end
