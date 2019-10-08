# == Schema Information
#
# Table name: customermanagerdetails
#
#  id                  :integer          not null, primary key
#  officenumber        :string
#  extension           :string
#  cellnumber		   :string
#  faxnumber		   :string
#  officialemail       :string
#  secundaryemail      :string
#  customermanager_id  :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Customermanagerdetail < ApplicationRecord
  belongs_to :customermanager

  validates :officenumber, :extension, :cellnumber, :faxnumber, :officialemail, :secundaryemail, presence: true
end
