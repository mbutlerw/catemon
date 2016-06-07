require 'player'

describe Player do
  subject(:andy) {described_class.new("Andy")}

  describe '#name' do
    it 'returns player name' do
      expect(andy.name).to eq ("Andy")
    end
  end
end
