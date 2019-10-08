# == Schema Information
#
# Table name: neighborhoods
#
#  id          :integer          not null, primary key
#  name		   :string
#  district_id    :integer
#  state_id    :integer
#  city_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Neighborhood < ApplicationRecord
  belongs_to :district
  belongs_to :state
  belongs_to :city

  validates :name, presence: true
end