class Question < ApplicationRecord
  has_many :candidates, dependent: :destroy
  accepts_nested_attributes_for :candidates, allow_destroy: true

  has_one :answer
end
