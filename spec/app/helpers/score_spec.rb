require 'rails_helper'

describe Score do

  ubs = Ubs.new(1, 'ubs vila andrade', 'Rua xxx', 'São paulo', '(00)00000-0000')

  score = Scores.new('Desempenho acima da média', 'Desempenho mediano ou  um pouco abaixo da média',
                    'Desempenho acima da média', 'Desempenho muito acima da média', ubs.id)
  it 'Scores initialize' do
    expect(score.class).to eq(Scores)
  end

  it 'Create Scores' do
    expect(score.create_score).to eq(true)
    expect(score.size).to eq('Desempenho acima da média')
    expect(score.adaptation_for_seniors).to eq('Desempenho mediano ou  um pouco abaixo da média')
    expect(score.medical_equipment).to eq('Desempenho acima da média')
    expect(score.medicine).to eq('Desempenho muito acima da média')
    expect(score.ubses_id).to eq(ubs.id)
  end

  it 'Scores verify score enum' do
    expect(score.verify_score_enum('Desempenho acima da média')).to eq(1)
    expect(score.verify_score_enum('Desempenho muito acima da média')).to eq(2)
    expect(score.verify_score_enum('Desempenho mediano ou  um pouco abaixo da média')).to eq(3)
  end
end
