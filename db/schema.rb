# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_06_27_090909) do
  create_table "purchaseorders", force: :cascade do |t|
    t.integer "amount"
    t.integer "category_id"
    t.text "description"
    t.integer "gl_vendor"
    t.date "payment_due_date"
    t.integer "payment_terms"
    t.date "purchaseOrder_date"
    t.string "purchaseOrder_number"
    t.integer "status_id"
    t.integer "tax_id"
    t.text "tax_values"
    t.text "tds"
    t.integer "total_amount"
    t.integer "vendor_id"
    t.string "status_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
