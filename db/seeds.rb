require 'csv'

CSV.foreach('members.csv', headers: true, encoding: 'windows-1251:utf-8') do |row|
  Member.create!(row.to_hash)
end

