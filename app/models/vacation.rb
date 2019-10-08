# == Schema Information
#
# Table name: vacations
#
#  id                  :integer          not null, primary key
#  detail		       :string
#  employee_id         :integer
#  startdate           :date
#  enddate             :date
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Vacation < ApplicationRecord
  belongs_to :employee

  validates :detail, presence: true
  validates :employee_id, presence: true
  validates :startdate, presence: true
  validates :enddate, presence: true
end
