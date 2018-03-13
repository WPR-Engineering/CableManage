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

ActiveRecord::Schema.define(version: 20180313211525) do

# Could not dump table "devices" because of following StandardError
#   Unknown type 'has_many' for column 'port'

  create_table "ports", force: :cascade do |t|
    t.string "port_type"
    t.string "signal_type"
    t.text "port_description"
    t.boolean "port_input"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "port"
    t.integer "device_id"
  end

  create_table "punch_blocks", force: :cascade do |t|
    t.integer "block_number"
    t.string "block_type"
    t.string "block"
    t.text "description"
    t.string "block_location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

# Could not dump table "runcodes" because of following StandardError
#   Unknown type 'has_one' for column 'wire'

  create_table "terminals", force: :cascade do |t|
    t.integer "terminal_number"
    t.string "terminal_type"
    t.string "signal_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "punch_block_id"
    t.index ["punch_block_id"], name: "index_terminals_on_punch_block_id"
  end

  create_table "wires", force: :cascade do |t|
    t.integer "wire_number"
    t.string "wire_type"
    t.string "signal_type"
    t.text "wire_description"
    t.boolean "multi_pair"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
