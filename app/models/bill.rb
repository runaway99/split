class Bill < ApplicationRecord
	validates :name, presence: true
	validates :price, presence:true

	has_many :recipients, inverse_of: :bill

	accepts_nested_attributes_for :recipients, reject_if: :all_blank
end
