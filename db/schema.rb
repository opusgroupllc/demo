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

ActiveRecord::Schema.define(version: 20141010195212) do

  create_table "articles", force: true do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "article_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["article_id"], name: "index_comments_on_article_id"

  create_table "departments", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.integer  "department_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "employees", ["department_id"], name: "index_employees_on_department_id"

  create_table "orders", force: true do |t|
    t.integer  "vendor_id"
    t.integer  "product_id"
    t.date     "order_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["product_id"], name: "index_orders_on_product_id"
  add_index "orders", ["vendor_id"], name: "index_orders_on_vendor_id"

  create_table "productcategories", force: true do |t|
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.integer  "productcategory_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["productcategory_id"], name: "index_products_on_productcategory_id"

  create_table "vendors", force: true do |t|
    t.string   "logo"
    t.string   "name"
    t.string   "address"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "website"
    t.string   "phone"
    t.string   "email"
    t.string   "contact"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workers", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
