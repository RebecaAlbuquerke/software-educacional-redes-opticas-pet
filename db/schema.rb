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

ActiveRecord::Schema.define(version: 2021_02_25_174936) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buses", force: :cascade do |t|
    t.float "maximum_transmission_power"
    t.float "baud_rate"
    t.float "receiver_sensitivity"
    t.float "effective_receiver_band"
    t.boolean "codification"
    t.boolean "link_distance"
    t.float "number_of_stations"
    t.float "insertion_loss"
    t.float "loss_of_DP_coupling"
    t.float "loss_of_excess_DP"
    t.float "link_length"
    t.float "fiber_attenuation_coefficient"
    t.float "loss_of_transmission_of_the_T_coupler"
    t.float "loss_of_coupling_T_coupler"
    t.float "excess_loss_of_T_coupler"
    t.float "dispersion_balance"
    t.float "electric_Tx_bandwidth"
    t.float "spectral_width"
    t.float "chromatic_dispersion"
    t.float "optical_bandwidth"
    t.float "coupling_coefficient"
    t.float "electric_Rx_bandwidth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "power_balance"
    t.float "effective_band"
    t.float "input_power"
    t.float "relative_sensitivity"
  end

  create_table "rings", force: :cascade do |t|
    t.float "maximum_transmission_power"
    t.float "baud_rate"
    t.float "receiver_sensitivity"
    t.float "effective_receiver_band"
    t.boolean "codification"
    t.boolean "link_distance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_students_on_email", unique: true
    t.index ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true
  end

end
