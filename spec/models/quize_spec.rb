require 'rails_helper'

RSpec.describe Quize, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  # Association test
  # ensure Todo model has a 1:m relationship with the Item model
  it { should have_one(:question).dependent(:destroy) }
  # Validation tests
  # ensure columns title and created_by are present before saving
  it { should validate_presence_of(:name) }
end
