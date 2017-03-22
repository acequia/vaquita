require 'test_helper'

describe User do
  subject { create :user }

  it 'is valid' do
    subject.must_be :valid?
    build(:user).must_be :valid?
  end
end
