require 'test_helper'

describe Bot do
  subject { create :bot }

  describe 'validations' do
    it 'must be valid' do
      subject.must_be :valid?
      build(:bot).must_be :valid?
    end

    it 'enforces an unique chip_id' do
      build(:bot, chip_id: subject.chip_id).wont_be :valid?
    end

    it 'requires chip_id' do
      build(:bot, chip_id: nil).wont_be :valid?
    end
  end
end
