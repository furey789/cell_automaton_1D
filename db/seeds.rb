# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


One_dim_rule.create( id: 1, name: "initial", t000: 0, t010: 0, t001: 0, t011: 0, t100: 0, t110: 0, t101: 0, t111: 0, seed_number: 1, seed_state: "Centered")
One_dim_rule.create( id: 999, name: "most_recent", t000: 0, t010: 0, t001: 1, t011: 0, t100: 0, t110: 0, t101: 0, t111: 0, seed_number: 1, seed_state: "Centered")
