class QuestionSerializer < ActiveModel::Serializer
  attributes :id,:name,:answers
  belongs_to :quize
  has_many :answers
end
