# == Schema Information
#
# Table name: customers
#
#  id                :integer          not null, primary key
#  legalcertificate  :string
#  name		         :string
#  businessname		 :string
#  customer_type_id  :integer
#  city_id           :integer
#  state_id          :integer
#  district_id       :integer
#  neighborhood_id   :integer
#  othersing		 :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Customer < ApplicationRecord
	belongs_to :customer_type
  	belongs_to :city
  	belongs_to :state
  	belongs_to :district
  	belongs_to :neighborhood

  	validates :legalcertificate, presence: true, uniqueness: true
  	validates :name, presence: true
  	validates :businessname, presence: true
end
