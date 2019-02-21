class Question < ApplicationRecord
  belongs_to :quize
  validates :name, presence: true
  has_many :answers, :dependent => :destroy
  accepts_nested_attributes_for :answers, allow_destroy: true
  before_validation :answer_list, :message => "at list two option provide"
  validate :ensure_has_proper_answer
  private

  def answer_list
  	self.answers.size<2 ? false : true	
  end

  def ensure_has_proper_answer
  	# self.answers.size<2 ? false : true
  	if self.answers.size<2
  	  errors.add(:base, 'at list two option provide')
  	elsif self.answers.size>4
  	  errors.add(:base, 'Max 4 option provide')
  	end
  end
end
