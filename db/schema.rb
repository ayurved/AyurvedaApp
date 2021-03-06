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

ActiveRecord::Schema.define(version: 20140327010227) do

  create_table "ailments", force: true do |t|
    t.string   "Name"
    t.string   "Remedy"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dosha_actions", force: true do |t|
    t.string   "Dosha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "flavors", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "food_groups", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ingredient_dosha_actions", force: true do |t|
    t.integer  "ingredient_id"
    t.integer  "dosha_action_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ingredient_post_flavors", force: true do |t|
    t.string   "Name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ingredient_id"
    t.integer  "flavor_id"
  end

  create_table "ingredient_pre_flavors", force: true do |t|
    t.string   "Name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ingredient_id"
    t.integer  "flavor_id"
  end

  create_table "ingredient_properties", force: true do |t|
    t.integer "ingredient_id"
    t.integer "property_id"
  end

  create_table "ingredients", force: true do |t|
    t.string   "Name"
    t.string   "Dosha_Action"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "post_flavor_id"
    t.integer  "pre_flavor_id"
    t.integer  "ingredient_property"
    t.integer  "temperature_id"
    t.integer  "food_group_id"
    t.string   "Movement"
  end

  create_table "properties", force: true do |t|
    t.string   "Name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ingredient_property"
  end

  create_table "remedies", force: true do |t|
    t.string   "ailment"
    t.string   "cure"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "temperatures", force: true do |t|
    t.string   "Type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
