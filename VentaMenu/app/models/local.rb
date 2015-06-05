class Local < ActiveRecord::Base
  belongs_to :ciudad
  has_many :cartacab
end
