class Quize < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  has_one :question, :dependent => :destroy
end
