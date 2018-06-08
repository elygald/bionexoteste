require 'import_csv'

describe Import_csv do
  import =Import_csv.new('spec/lib/assets/ubs_test.csv')
  it 'Import_csv initialize' do
    expect(import.class).to eq(Import_csv)
  end

  it 'Import csv' do
    expect(import.import).to eq('importação realizada com sucesso')
  end
end
