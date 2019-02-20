require 'rails_helper'

RSpec.describe Answer, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
   it { should belong_to(:question) }
  # Validation test
  # ensure column name is present before saving
  it { should validate_presence_of(:name) }
end
