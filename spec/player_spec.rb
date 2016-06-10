require 'player'

describe Player do
  subject(:player) { Player.new("Steve") }
  subject(:player2) { Player.new("Carlos") }

describe "#name" do
  it 'returns players name' do
    expect(player.name).to eq("Steve")
  end
end

describe "#hit_points" do
  it 'returns hit points' do
    expect(player.hit_points).to eq(Player::DEFAULT_HIT_POINTS)
  end
end



describe "#receive_damage" do
  it 'reduces HP by Damage' do
    expect { player.receive_damage(10) }.to change{ player.hit_points }.by(-10)
  end
end

end
