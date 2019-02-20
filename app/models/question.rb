class Question < ApplicationRecord
  belongs_to :quize
  validates :name, presence: true
  has_many :answers, :dependent => :destroy
end
