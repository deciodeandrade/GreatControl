class Company < ApplicationRecord
  belongs_to :address
  has_one_attached :logo

  accepts_nested_attributes_for :address
end
