# == Schema Information
#
# Table name: currency_code
#
#  id          :integer          not null, primary key
#  name		   :string
#  code        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class CurrencyCode < ApplicationRecord
	validates :country, presence: true
	validates :name, presence: true
end
