class ProgramSerializer < ActiveModel::Serializer
  attributes :id, :user_rating, :user_id
  has_many :exercise_programs
  belongs_to :user
  has_many :exercises, through: :exercise_programs
end
