class CreateEvents < ActiveRecord::Migration

def change
  create_table :events do |t|
    t.string :event_name
    t.integer :owner
    t.integer :ticket_id
    t.timestamps :start_time
    t.timestamps :end_time
    t.integer :price_in_cents
    t.timestamps null: false
  end

  add_column :users, :admin, :boolean
  add_column :users, :first_name, :string
  add_column :users, :last_name, :string



  create_table :tickets do |t|
    t.integer :event_id
    t.integer :user_id
    t.string :confirmation_token
  end

  create_table :addresses do |t|
    t.references :addressebable, polymorphic: true, index: true
    t.string  :street
    t.string  :zip
    t.string  :state
    t.string  :city
  end
end
end
