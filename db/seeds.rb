require 'csv'

CSV.foreach('mems.csv', headers: true) do |row|
  Member.create!(row.to_hash)
end

