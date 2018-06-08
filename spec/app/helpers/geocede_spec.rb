require 'rails_helper'

describe Geocede do

  ubs = Ubs.new(1, 'ubs vila andrade', 'Rua xxx', 'São paulo', '(00)00000-0000')

  geocede = Geocedes.new('-34.908989899', '-45.9847984887', ubs.id)
  it 'Geocedes initialize' do
    expect(geocede.class).to eq(Geocedes)
    expect(geocede.lat).to eq('-34.908989899')
    expect(geocede.long).to eq('-45.9847984887')
  end

  it 'Create Geocedes' do
    expect(geocede.create_geocede).to eq(true)
  end

end
