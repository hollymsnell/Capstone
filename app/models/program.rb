class Program < ApplicationRecord
  has_many :exercise_programs
  belongs_to :user
  has_many :exercises, through: :exercise_programs
end
