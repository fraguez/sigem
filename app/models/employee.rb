# == Schema Information
#
# Table name: employees
#
#  id                  :integer          not null, primary key
#  identificationcard  :integer
#  name		           :string
#  lastname		       :string
#  birthday            :date
#  sex_id              :integer
#  admissiondate       :date
#  departuredate       :date
#  salary              :decimal
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Employee < ApplicationRecord
  belongs_to :sex

  validates :identificationcard, presence: true, uniqueness: true
  validates :name, presence: true
  validates :lastname, presence: true
  validates :birthday, presence: true
  validates :sex_id, presence: true
  validates :admissiondate, presence: true
  validates :salary, presence: true
end
