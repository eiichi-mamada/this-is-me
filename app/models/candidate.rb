class Candidate < ApplicationRecord
  belongs_to :question, dependent: :destroy
end
