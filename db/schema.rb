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

ActiveRecord::Schema.define(:version => 20130602184621) do

  create_table "adresses", :force => true do |t|
    t.integer  "anrede_id"
    t.integer  "akademischerTitel_id"
    t.integer  "berufsTitel_id"
    t.integer  "berufsFunktion_id"
    t.integer  "land_id"
    t.string   "vorname"
    t.string   "nachname"
    t.string   "adrStrasse"
    t.string   "adrOrt"
    t.string   "adrPlz"
    t.string   "email"
    t.string   "emailArbeit"
    t.string   "tel1"
    t.string   "tel2"
    t.string   "fax"
    t.string   "firma"
    t.string   "institution"
    t.boolean  "newsletter"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "akademischer_titels", :force => true do |t|
    t.string   "titel"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "anredes", :force => true do |t|
    t.string   "anrede"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "berufs_funktions", :force => true do |t|
    t.string   "funktion"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "berufs_titels", :force => true do |t|
    t.string   "titel"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "fax_typs", :force => true do |t|
    t.string   "typ"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "lands", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "mail_typs", :force => true do |t|
    t.string   "typ"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tags", :force => true do |t|
    t.integer  "adresse_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "telefon_typs", :force => true do |t|
    t.string   "typ"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
