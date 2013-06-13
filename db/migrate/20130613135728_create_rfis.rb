class CreateRfis < ActiveRecord::Migration
  def change
    create_table :rfis do |t|
      t.integer :number
      t.string :title
      t.date :date_requested
      t.date :date_answered

      t.timestamps
    end
  end
end
