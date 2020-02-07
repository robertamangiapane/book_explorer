require 'uuid_checker'

describe UuidChecker do
  it 'return false if uuid is not form by 4 digits' do
    content = CSV.open('app/assets/images/Test_CSV_invalid2.csv').read

    expect(UuidChecker.is_uuid_valid(content)).to eq false
  end

  it 'return false if uuid is not form by digits' do
    content = CSV.open('app/assets/images/Test_CSV_invalid.csv').read

    expect(UuidChecker.is_uuid_valid(content)).to eq false
  end
end
