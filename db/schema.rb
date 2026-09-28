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

ActiveRecord::Schema[8.1].define(version: 2026_09_15_015508) do
  create_table "appointments", force: :cascade do |t|
    t.integer "Patient_id", null: false
    t.integer "Physician_id", null: false
    t.string "appointment_Number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Patient_id"], name: "index_appointments_on_Patient_id"
    t.index ["Physician_id"], name: "index_appointments_on_Physician_id"
  end

  create_table "assemblies", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "assemblies_products", id: false, force: :cascade do |t|
    t.integer "assembly_id", null: false
    t.integer "product_id", null: false
    t.index ["assembly_id", "product_id"], name: "index_assemblies_products_on_assembly_id_and_product_id", unique: true
    t.index ["product_id", "assembly_id"], name: "index_assemblies_products_on_product_id_and_assembly_id"
  end

  create_table "authors", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "blogs", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.integer "student_id", null: false
    t.string "title"
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_blogs_on_student_id"
  end

  create_table "book_orders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.integer "author_id"
    t.string "author_name"
    t.datetime "created_at", null: false
    t.string "genre"
    t.string "no_of_pages"
    t.string "title"
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_books_on_author_id"
  end

  create_table "favourite_animes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.string "rating"
    t.datetime "updated_at", null: false
  end

  create_table "parts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "passports", force: :cascade do |t|
    t.string "country"
    t.datetime "created_at", null: false
    t.string "passport_number"
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_passports_on_user_id", unique: true
  end

  create_table "patients", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "physicians", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.string "quantity"
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "email"
    t.string "name"
    t.datetime "updated_at", null: false
  end

  add_foreign_key "appointments", "Patients"
  add_foreign_key "appointments", "Physicians"
  add_foreign_key "blogs", "students"
  add_foreign_key "books", "authors"
  add_foreign_key "passports", "users"
end
