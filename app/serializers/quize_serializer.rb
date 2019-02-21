class QuizeSerializer < ActiveModel::Serializer
  attributes :id,:name
  belongs_to :user
  has_one :question
  # def question
  # 	object.question
  # end
end
