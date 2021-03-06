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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121113094100) do

  create_table "book_urls", :force => true do |t|
    t.string   "url"
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "books", :force => true do |t|
    t.string   "url"
    t.string   "title"
    t.string   "foreign_title"
    t.string   "first_category"
    t.string   "second_category"
    t.string   "authors"
    t.string   "main_author"
    t.string   "publisher"
    t.string   "published_at"
    t.string   "language"
    t.string   "size"
    t.string   "last_page"
    t.string   "isbn10"
    t.string   "isbn13"
    t.string   "price"
    t.string   "reviewed"
    t.string   "description"
    t.string   "index"
    t.string   "series"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "books", ["isbn13"], :name => "index_books_on_isbn13"
  add_index "books", ["main_author"], :name => "index_books_on_main_author"
  add_index "books", ["series"], :name => "index_books_on_series"
  add_index "books", ["title"], :name => "index_books_on_title"
  add_index "books", ["url"], :name => "index_books_on_url"

  create_table "collections", :force => true do |t|
    t.integer  "book_id"
    t.integer  "user_id"
    t.integer  "village_id"
    t.string   "status"
    t.string   "memo"
    t.text     "history"
    t.string   "isbn13"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "deals", :force => true do |t|
    t.integer  "village_id"
    t.integer  "seller_id"
    t.integer  "buyer_id"
    t.integer  "collection_id"
    t.integer  "point"
    t.string   "mobile"
    t.text     "memo"
    t.string   "status"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "list_pages", :force => true do |t|
    t.string   "category"
    t.string   "url"
    t.integer  "page"
    t.string   "min_value"
    t.string   "max_value"
    t.string   "page_action"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "list_pages", ["url"], :name => "index_list_pages_on_url"

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email",                        :null => false
    t.string   "crypted_password"
    t.string   "salt"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.integer  "village_id"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  add_index "users", ["remember_me_token"], :name => "index_users_on_remember_me_token"

  create_table "villages", :force => true do |t|
    t.string   "url"
    t.string   "si"
    t.string   "gu"
    t.string   "dong"
    t.string   "village"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
