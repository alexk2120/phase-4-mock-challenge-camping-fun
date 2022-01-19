class Signup < ApplicationRecord
  belongs_to :camper
  belongs_to :activity
 
  validates :time, presence: true, numericality: {in: 8...18}
end
