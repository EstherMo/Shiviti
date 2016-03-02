class AddColumnToMeditations < ActiveRecord::Migration
  def change
    add_column :meditations, :length, :integer
  end
end
