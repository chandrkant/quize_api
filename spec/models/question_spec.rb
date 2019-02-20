require 'rails_helper'

RSpec.describe Question, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it { should belong_to(:quize) }
  it { should have_many(:answers).dependent(:destroy) }
  # Validation test
  # ensure column name is present before saving
  it { should validate_presence_of(:name) }
end
