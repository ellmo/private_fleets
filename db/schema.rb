# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110215232301) do

  create_table "module_sets", :force => true do |t|
    t.integer  "ship_id"
    t.integer  "module_id"
    t.integer  "module_slot_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "module_slots", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "module_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "modules", :force => true do |t|
    t.integer  "module_type_id"
    t.string   "name"
    t.integer  "power_usage"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ship_classes", :force => true do |t|
    t.integer  "ship_type_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ship_models", :force => true do |t|
    t.integer  "ship_class_id"
    t.string   "name"
    t.integer  "price"
    t.integer  "power_output"
    t.integer  "crew"
    t.integer  "mobility"
    t.float    "sublight_speed"
    t.float    "light_speed"
    t.integer  "durability"
    t.integer  "armor"
    t.integer  "reflective"
    t.integer  "reactive"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ship_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ships", :force => true do |t|
    t.integer  "ship_model_id"
    t.integer  "fleet_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "weapon_sets", :force => true do |t|
    t.integer  "ship_id"
    t.integer  "weapon_id"
    t.integer  "slot_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "weapon_slots", :force => true do |t|
    t.integer  "ship_model_id"
    t.integer  "weapon_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "weapon_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "weapons", :force => true do |t|
    t.integer  "weapon_type_id"
    t.integer  "effects_set_id"
    t.string   "name"
    t.float    "reload_speed"
    t.integer  "no_of_attacks"
    t.float    "accuracy"
    t.float    "falloff"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
