require './lib/ride'
require './lib/biker'

RSpec.describe Biker do
  it 'exists and has attributes' do
    biker = Biker.new("Kenny", 30)

    expect(biker.name).to eq("Kenny")
    expect(biker.max_distance).to eq(30)
    expect(biker.rides).to eq({})
    expect(biker.acceptable_terrain).to eq([])
  end

  describe '#learn_terrain!' do
    it 'can list acceptable terrain and learn new terrain' do
      biker = Biker.new("Kenny", 30)

      expect(biker.acceptable_terrain).to eq([])

      biker.learn_terrain!(:gravel)
      biker.learn_terrain(:hills)

      expect(biker.acceptable_terrain).to eq([:gravel, :hills])
    end
  end
end
