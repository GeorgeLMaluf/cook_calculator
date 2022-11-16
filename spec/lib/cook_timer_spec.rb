# frozen_string_literal: true

require_relative '../../lib/cook_timer'

RSpec.describe CookTimer do
  describe '#solvable?' do
    context 'when has solution' do
      let(:subject) do
        CookTimer.new(3, 5, 7)
      end

      it 'expect true' do
        expect(subject.solvable?).to be_truthy
      end
    end

    context 'when has no solution' do
      let(:subject) do
        CookTimer.new(3, 5, 5)
      end

      it 'expect false' do
        expect(subject.solvable?).to be_falsey
      end
    end
  end

  describe '#cook_time' do
    context 'when cooking time takes 1 minute' do
      let(:time) { 1 }
      it 'with hourglass of 3 and 5 minutes, it will take at least 6 minutes' do
        expect(CookTimer.new(time, 3, 5).cook_time).to eq 6
      end
    end

    context 'when cooking time takes 3 minutes' do
      let(:time) { 3 }
      it 'with hourglass of 5 and 7 minutes, it will take at least 10 minutes' do
        expect(CookTimer.new(time, 5, 7).cook_time).to eq 10
      end
    end

    context 'when cooking time takes 5 minutes' do
      let(:time) { 5 }
      it 'with hourglass of 7 and 9 minutes, it will take at least 14 minutes' do
        expect(CookTimer.new(time, 7, 9).cook_time).to eq 14
      end
    end

    context 'when cooking time takes 15 minutes' do
      let(:time) { 15 }
      it 'with hourglass of 25 and 30 minutes, it will take at least 75 minutes' do
        expect(CookTimer.new(time, 25, 30).cook_time).to eq 75
      end
    end
  end
end
