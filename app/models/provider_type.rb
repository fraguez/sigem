# == Schema Information
#
# Table name: provider_types
#
#  id          :integer          not null, primary key
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ProviderType < ApplicationRecord
	validates :description, presence: true
end
