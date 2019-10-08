# == Schema Information
#
# Table name: providermanagers
#
#  id                  :integer          not null, primary key
#  provider_id         :integer          
#  identificationcard  :integer
#  name		           :string
#  lastname		       :string
#  birthday            :date
#  sex_id              :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Providermanager < ApplicationRecord
  has_many :providermanagerdetails, inverse_of: :providermanager, dependent: :destroy
  belongs_to :sex
  belongs_to :provider

  accepts_nested_attributes_for :providermanagerdetails,
    reject_if: :providermanagerdetail_rejectable?,
    allow_destroy: true

  validates :provider_id, presence: true
  validates :identificationcard, presence: true, uniqueness: true
  validates :name, presence: true
  validates :lastname, presence: true
  validates :birthday, presence: true
  validates :sex_id, presence: true

  def providermanagerdetail_rejectable?(att)
      att[:officenumber].blank? || att[:extension].blank? || att[:cellnumber].blank? || att[:faxnumber].blank? || att[:officialemail].blank? || att[:secundaryemail].blank?
  end
end
