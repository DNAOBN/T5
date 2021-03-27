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

ActiveRecord::Schema.define(version: 2021_03_26_011912) do

  create_table "discentes", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "discentes_disciplinas", id: false, force: :cascade do |t|
    t.integer "discente_id", null: false
    t.integer "disciplina_id", null: false
  end

  create_table "disciplinas", force: :cascade do |t|
    t.string "nome"
    t.integer "carga_horaria"
    t.integer "docente_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["docente_id"], name: "index_disciplinas_on_docente_id"
  end

  create_table "docentes", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "identidades", force: :cascade do |t|
    t.string "grr"
    t.string "cpf"
    t.integer "discente_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["discente_id"], name: "index_identidades_on_discente_id"
  end

  add_foreign_key "disciplinas", "docentes"
  add_foreign_key "identidades", "discentes"
end
