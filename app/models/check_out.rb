# == Schema Information
#
# Table name: check_outs
#
#  id          :integer          not null, primary key
#  employee_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class CheckOut < ApplicationRecord
  belongs_to :employee
end
