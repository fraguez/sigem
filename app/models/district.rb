# == Schema Information
#
# Table name: districts
#
#  id          :integer          not null, primary key
#  name		   :string
#  state_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class District < ApplicationRecord
  has_many :neighborhoods, dependent: :destroy

  belongs_to :state
  belongs_to :city

  validates :name, presence: true
end
