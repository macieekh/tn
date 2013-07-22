class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.text :issue
      t.integer :counter

      t.timestamps
    end
  end
end
