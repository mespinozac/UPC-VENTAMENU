# == Schema Information
#
# Table name: cartacabs
#
#  id          :integer          not null, primary key
#  descripcion :text
#  fecha       :date
#  estado      :string(255)
#  precio      :float(24)
#  local_id    :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Cartacab < ActiveRecord::Base
    belongs_to :local
    has_many :cartadetalle
end
