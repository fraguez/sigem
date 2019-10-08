# == Schema Information
#
# Table name: providermanagerdetails
#
#  id                  :integer          not null, primary key
#  officenumber        :string
#  extension           :string
#  cellnumber		   :string
#  faxnumber		   :string
#  officialemail       :string
#  secundaryemail      :string
#  providermanager_id  :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Providermanagerdetail < ApplicationRecord
  belongs_to :providermanager

  validates :officenumber, :extension, :cellnumber, :faxnumber, :officialemail, :secundaryemail, presence: true
end
