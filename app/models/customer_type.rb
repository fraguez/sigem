# == Schema Information
#
# Table name: customer_types
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CustomerType < ApplicationRecord
	include ActiveModel::Validations

	validates :name, presence: true

	validates_with ValidateUnaccent, model: self
end
