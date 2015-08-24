# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150824175818) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "one_dim_rules", force: :cascade do |t|
    t.string  "name"
    t.integer "t000",        default: 0
    t.integer "t010",        default: 0
    t.integer "t001",        default: 0
    t.integer "t011",        default: 0
    t.integer "t100",        default: 0
    t.integer "t110",        default: 0
    t.integer "t101",        default: 0
    t.integer "t111",        default: 0
    t.integer "seed_number", default: 0
    t.string  "seed_state",  default: "fixed"
    t.boolean "wrap_around", default: true
  end

end
