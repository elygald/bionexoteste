class Scores
  attr_reader :size, :adaptation_for_seniors, :ubses_id, :medical_equipment, :medicine

  def initialize(size, adaptation_for_seniors, medical_equipment, medicine, ubses_id)
    @size = size
    @adaptation_for_seniors = adaptation_for_seniors
    @medical_equipment = medical_equipment
    @medicine = medicine
    @ubses_id = ubses_id
  end

  def create_score
      score = Score.find_by(ubses_id: @ubses_id)
      if score == nil
        score = Score.new
      end
      score.ubses_id = @ubses_id
      score.size =  verify_score_enum(@size)
      score.adaptation_for_seniors =  verify_score_enum(@adaptation_for_seniors)
      score.medical_equipment = verify_score_enum(@medical_equipment)
      score.medicine =  verify_score_enum(@medicine)
      score.save
  end

  def verify_score_enum(enum)
    case enum
    when 'Desempenho acima da média'
        1
    when 'Desempenho muito acima da média'
        2
    when 'Desempenho mediano ou  um pouco abaixo da média'
        3
    end
  end


end
