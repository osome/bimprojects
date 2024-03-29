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

ActiveRecord::Schema.define(:version => 20130613145551) do

  create_table "comments", :force => true do |t|
    t.integer  "employee_id"
    t.integer  "project_id"
    t.text     "body"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "data_files", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "employees", :force => true do |t|
    t.string   "name"
    t.integer  "ext"
    t.string   "department"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "password_hash"
    t.string   "password_salt"
    t.string   "email"
    t.string   "admin_flag"
  end

  create_table "projects", :force => true do |t|
    t.integer  "number"
    t.string   "name"
    t.string   "status"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "rvtmodel_file_name"
    t.string   "rvtmodel_content_type"
    t.integer  "rvtmodel_file_size"
    t.datetime "rvtmodel_updated_at"
  end

  create_table "rfis", :force => true do |t|
    t.integer  "number"
    t.string   "title"
    t.date     "date_requested"
    t.date     "date_answered"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "project_id"
    t.string   "rfipdf_file_name"
    t.string   "rfipdf_content_type"
    t.integer  "rfipdf_file_size"
    t.datetime "rfipdf_updated_at"
  end

  create_table "rfizations", :force => true do |t|
    t.integer  "project_id"
    t.integer  "employee_id"
    t.integer  "rfi_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "statuses", :force => true do |t|
    t.string   "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "teamizations", :force => true do |t|
    t.integer  "employee_id"
    t.integer  "project_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
