# == Schema Information
#
# Table name: document_references
#
#  id          :integer          not null, primary key
#  name		   :string
#  code        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class DocumentReference < ApplicationRecord
	validates :name, presence: true
	validates :code, presence: true, uniqueness: true
end
