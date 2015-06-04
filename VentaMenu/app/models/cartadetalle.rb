class Cartadetalle < ActiveRecord::Base
  belongs_to :cartacab
  belongs_to :menu
end
