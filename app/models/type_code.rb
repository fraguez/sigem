# == Schema Information
#
# Table name: type_codes
#
#  id          :integer          not null, primary key
#  name		   :string
#  code        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class TypeCode < ApplicationRecord
	validates :name, presence: true
	validates :code, presence: true, uniqueness: true
end
