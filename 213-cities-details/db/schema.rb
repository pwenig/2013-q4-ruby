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

ActiveRecord::Schema.define(version: 20130726031459) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "world_cities", force: true do |t|
    t.string  "name"
    t.string  "country"
    t.string  "country_flag_filename"
    t.integer "time_zone_offset"
    t.integer "population_in_millions"
    t.string  "official_url"
    t.string  "nickname"
    t.string  "river"
  end

end
