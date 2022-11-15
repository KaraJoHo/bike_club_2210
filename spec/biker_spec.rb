require './lib/ride'
require './lib/biker'

RSpec.describe Biker do
  it 'exists and has attributes' do
    biker = Biker.new("Kenny", 30)

    expect(biker.name).to eq("Kenny")
    expect(biker.max_distance).to eq(30)
    expect(biker.rides).to eq({})
  end
end
