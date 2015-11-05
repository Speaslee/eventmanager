class EditName < ActiveRecord::Migration
  def change
    change_table :events do |t|
      t.rename :owner, :owner_id
      t.datetime :start_time
      t.datetime :end_time
      t.text :description

    end
  end
end
