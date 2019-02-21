class Quize < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  has_one :question, :dependent => :destroy
  accepts_nested_attributes_for :question, allow_destroy: true
end
