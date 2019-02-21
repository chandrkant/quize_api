class AnswerSerializer < ActiveModel::Serializer
  attributes :id,:name
  belongs_to :question
end
