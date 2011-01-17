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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110117183000) do

  create_table "alumnos", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "articles", :force => true do |t|
    t.string   "name"
    t.datetime "published_at"
    t.boolean  "hidden"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "asignaturas", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories_products", :id => false, :force => true do |t|
    t.integer  "category_id"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", :force => true do |t|
    t.integer  "article_id"
    t.string   "author"
    t.string   "desc"
    t.datetime "published_at"
    t.boolean  "hidden"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cursos", :force => true do |t|
    t.integer  "profesor_id"
    t.integer  "asignatura_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cursos", ["asignatura_id"], :name => "index_cursos_on_asignatura_id"
  add_index "cursos", ["profesor_id"], :name => "index_cursos_on_profesor_id"

  create_table "mallas", :force => true do |t|
    t.integer  "alumno_id"
    t.integer  "curso_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "mallas", ["alumno_id"], :name => "index_mallas_on_alumno_id"
  add_index "mallas", ["curso_id"], :name => "index_mallas_on_curso_id"

  create_table "productos", :force => true do |t|
    t.string   "nombre"
    t.integer  "precio"
    t.string   "marca"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.string   "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profesors", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", :force => true do |t|
    t.string   "nombre"
    t.string   "rut"
    t.string   "digito"
    t.integer  "edad"
    t.string   "email"
    t.date     "date_nac"
    t.integer  "sueldo"
    t.boolean  "sexo"
    t.text     "direccion"
    t.string   "familia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
