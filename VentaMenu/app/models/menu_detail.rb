class MenuDetail < ActiveRecord::Base
  belongs_to :menu
  belongs_to :food
  belongs_to :typeFood
end
