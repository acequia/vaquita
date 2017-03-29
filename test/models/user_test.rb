require 'test_helper'

describe User do
  subject { create :user }

  it 'is valid' do
    subject.must_be :valid?
    build(:user).must_be :valid?
  end

  it 'enforces an unique email' do
    build(:user, email: subject.email).wont_be :valid?
  end
end
