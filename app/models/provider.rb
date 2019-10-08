# == Schema Information
#
# Table name: providers
#
#  id                :integer          not null, primary key
#  legalcertificate  :string
#  name		         :string
#  businessname		 :string
#  provider_type_id  :integer
#  city_id           :integer
#  state_id          :integer
#  district_id       :integer
#  othersing		 :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Provider < ApplicationRecord
  belongs_to :provider_type
  belongs_to :city
  belongs_to :state
  belongs_to :district
  belongs_to :neighborhood

  validates :legalcertificate, presence: true, uniqueness: true
  validates :name, presence: true
  validates :businessname, presence: true
end
