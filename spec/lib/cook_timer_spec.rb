# frozen_string_literal: true

require_relative '../../lib/cook_timer'

RSpec.describe CookTimer do
  describe '#solvable?' do
    context 'when has solution' do
      let(:subject) do
        CookTimer.new(time_to_cook: 3,
                      hour_glass_one: 5,
                      hour_glass_two: 7)
      end

      it 'expect true' do
        expect(subject.solvable?).to be_truthy
      end
    end

    context 'when has no solution' do
      let(:subject) do
        CookTimer.new(time_to_cook: 3,
                      hour_glass_one: 5,
                      hour_glass_two: 5)
      end

      it 'expect false' do
        expect(subject.solvable?).to be_falsey
      end
    end
  end
end
