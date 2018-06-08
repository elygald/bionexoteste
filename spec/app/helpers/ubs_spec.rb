require 'rails_helper'

describe Ubs do
  ubs = Ubs.new(1, 'ubs vila andrade', 'Rua xxx', 'São paulo', '(00)00000-0000')
  it 'Ubs initialize' do
    expect(ubs.class).to eq(Ubs)
  end

  it 'Create Ubs' do
    expect(ubs.create_ubs).to eq(true)
  end
end
