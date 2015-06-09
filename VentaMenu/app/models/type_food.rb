class TypeFood < ActiveRecord::Base
  belongs_to :typeMenu
  has_many :menuDetails
end
