require 'sequel'
require 'dotenv'
Dotenv.load

DB = Sequel.connect(ENV["DATABASE_URL"])
DB << "SET CLIENT_ENCODING TO 'UTF8';"

Sequel.default_timezone = :utc

Sequel::Model.plugin :timestamps

DB.create_table! :users do
  primary_key :id
  column :name, :text
  column :first_name, :text
  column :last_name, :text
  column :email, :text, :unique=>true
  column :location, :text
  column :birthday, :text
  column :gender, :text
  column :facebook_id, :text
  column :facebook_token, :text
  column :created_at, 'timestamp without time zone'
  column :updated_at, 'timestamp without time zone'
end