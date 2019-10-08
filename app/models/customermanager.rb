# == Schema Information
#
# Table name: customermanagers
#
#  id                  :integer          not null, primary key
#  customer_id         :integer          
#  identificationcard  :integer
#  name		             :string
#  lastname		         :string
#  birthday            :date
#  sex_id              :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Customermanager < ApplicationRecord
  has_many :customermanagerdetails, inverse_of: :customermanager, dependent: :destroy
  belongs_to :customer
  belongs_to :sex

  accepts_nested_attributes_for :customermanagerdetails,
    reject_if: :customermanagerdetail_rejectable?,
    allow_destroy: true

  validates :customer_id, presence: true
  validates :identificationcard, presence: true, uniqueness: true
  validates :name, presence: true
  validates :lastname, presence: true
  validates :birthday, presence: true
  validates :sex_id, presence: true

  def customermanagerdetail_rejectable?(att)
      att[:officenumber].blank? || att[:extension].blank? || att[:cellnumber].blank? || att[:faxnumber].blank? || att[:officialemail].blank? || att[:secundaryemail].blank?
    end
end
