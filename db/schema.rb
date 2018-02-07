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

ActiveRecord::Schema.define(version: 20180207215821) do

  create_table "devices", force: :cascade do |t|
    t.string "device_type"
    t.text "device_description"
    t.text "device_location"
    t.integer "port_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["port_id"], name: "index_devices_on_port_id"
  end

  create_table "ports", force: :cascade do |t|
    t.boolean "direction"
    t.text "port_type"
    t.integer "port_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "punch_blocks", force: :cascade do |t|
    t.string "block_number"
    t.string "block_type"
    t.string "block_location"
    t.text "block_description"
    t.integer "terminal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["terminal_id"], name: "index_punch_blocks_on_terminal_id"
  end

  create_table "runcodes", force: :cascade do |t|
    t.integer "code"
    t.text "description"
    t.integer "wire_id"
    t.integer "terminal_id"
    t.integer "device_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["device_id"], name: "index_runcodes_on_device_id"
    t.index ["terminal_id"], name: "index_runcodes_on_terminal_id"
    t.index ["wire_id"], name: "index_runcodes_on_wire_id"
  end

  create_table "terminals", force: :cascade do |t|
    t.integer "terminal_number"
    t.text "terminal_type"
    t.integer "PunchBlock_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["PunchBlock_id"], name: "index_terminals_on_PunchBlock_id"
  end

  create_table "wires", force: :cascade do |t|
    t.integer "number"
    t.string "wire_type"
    t.boolean "multi_core"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
