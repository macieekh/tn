class AddCopierIdToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :copier_id, :integer
    add_index :tickets, :copier_id
  end
end
