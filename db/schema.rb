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

ActiveRecord::Schema.define(version: 2023_06_17_142028) do

  create_table "admins", charset: "utf8mb3", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "alunos", charset: "utf8mb3", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_alunos_on_email", unique: true
    t.index ["reset_password_token"], name: "index_alunos_on_reset_password_token", unique: true
  end

  create_table "area_conhecimentos", charset: "utf8mb3", force: :cascade do |t|
    t.string "descricao"
    t.boolean "ativo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "compra_cursos", charset: "utf8mb3", force: :cascade do |t|
    t.string "descricao"
    t.text "cod_barras"
    t.integer "valor"
    t.boolean "aprovado"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "curso_area_conhecimentos", charset: "utf8mb3", force: :cascade do |t|
    t.integer "id_curso"
    t.integer "id_area_conhecimento"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "curso_pagamentos", charset: "utf8mb3", force: :cascade do |t|
    t.string "descricao"
    t.string "cod_barras"
    t.integer "valor"
    t.integer "aprovado"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cursos", charset: "utf8mb3", force: :cascade do |t|
    t.string "titulo"
    t.string "descricao"
    t.integer "nivel_dificuldade"
    t.string "duracao"
    t.integer "preco"
    t.integer "id_instrutor"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cursos_alunos", charset: "utf8mb3", force: :cascade do |t|
    t.integer "id_aluno"
    t.integer "id_curso"
    t.integer "id_pagamento"
    t.boolean "curso_concluido"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "instrutors", charset: "utf8mb3", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "nome"
    t.string "nome_completo"
    t.string "biografia"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_instrutors_on_email", unique: true
    t.index ["reset_password_token"], name: "index_instrutors_on_reset_password_token", unique: true
  end

  create_table "logs", charset: "utf8mb3", force: :cascade do |t|
    t.string "descricao"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
