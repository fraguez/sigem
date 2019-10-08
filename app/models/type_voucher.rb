# == Schema Information
#
# Table name: type_vouchers
#
#  id          :integer          not null, primary key
#  name		   :string
#  label       :string
#  acronym     :string
#  xmlSchema   :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class TypeVoucher < ApplicationRecord
	validates :name, presence: true
	validates :label, presence: true
	validates :acronym, presence: true
	validates :xmlSchema, presence: true
end
