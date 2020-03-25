class Answer_collection < ApplicationRecord
  has_many :answers
  accepts_nested_attributes_for :answers

end