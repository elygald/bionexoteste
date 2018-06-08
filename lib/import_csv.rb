class Import_csv
  require "csv"

  def initialize(file)
    @file = file
  end

  def import

    CSV.foreach(@file, headers: true) do |row|
      ubs = Ubs::new(row['cod_cnes'], row['nom_estab'],
                     row['dsc_endereco'], row['dsc_cidade'],
                     row['dsc_telefone'])
      ubs.create_ubs

      geocede = Geocedes::new(row['vlr_latitude'], row['vlr_longitude'], ubs.id)
      geocede.create_geocede

      score = Scores::new(row['dsc_estrut_fisic_ambiencia'], row['dsc_adap_defic_fisic_idosos'],
                          row['dsc_equipamentos'], row['dsc_medicamentos'], ubs.id)
      score.create_score
    end
    "importação realizada com sucesso"
  end

end
