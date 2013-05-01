# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

r_num = Random.new
price_num = Random.new
(1..10).each do |i|
  u = User.create(first_name: "Jenny#{i}", last_name: "Wilcox#{i}", passion_rating: r_num.rand(1..10))
  (1..1000).each do |j|
    p = u.postage_stamps.create(appraised_price: price_num.rand(0.01..2.50).round(2), description: (0...8).map{(65+rand(26)).chr}.join, issue_date: rand(10.years).ago.to_datetime, original_price: price_num.rand(0.01..0.17))
  end
end