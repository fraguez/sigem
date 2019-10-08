# == Schema Information
#
# Table name: document_authorizations
#
#  id          :integer          not null, primary key
#  name		   :string
#  code        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class DocumentAuthorization < ApplicationRecord
	validates :name, presence: true
	validates :code, presence: true, uniqueness: true
end
