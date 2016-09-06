require 'rails_helper'

describe Listing do
  it { should validate_presence_of :name }
  it { should validate_presence_of :address }
  it { should validate_presence_of :phone }
  it { should belong_to :category }
end
