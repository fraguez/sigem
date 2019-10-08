# == Schema Information
#
# Table name: states
#
#  id          :integer          not null, primary key
#  name		   :string
#  city_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class State < ApplicationRecord
  has_many :districts, dependent: :destroy
  
  belongs_to :city

  validates :name, presence: true

  def name_state_city
  	"#{name},#{city.name}"
  end
end
