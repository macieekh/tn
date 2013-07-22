class CreateCopiers < ActiveRecord::Migration
  def change
    create_table :copiers do |t|
      t.string :serial
      t.string :location

      t.timestamps
    end
  end
end
