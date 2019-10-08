# == Schema Information
#
# Table name: states
#
#  id          :integer          not null, primary key
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Sex < ApplicationRecord
	include ActiveModel::Validations

	validates :description, presence: true

	validates_with ValidateUnaccent, model: self
end
