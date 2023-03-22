class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone, :age, :profile_pic, :injury_diagnosis
  has_many :programs
end
