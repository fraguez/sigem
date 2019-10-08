# == Schema Information
#
# Table name: cities
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class City < ApplicationRecord
	include ActiveModel::Validations
	has_many :states, dependent: :destroy

	validates :name, presence: true

	validates_with ValidateUnaccent, model: self
end
