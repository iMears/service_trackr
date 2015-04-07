class AddDefaultValueToStatus < ActiveRecord::Migration
  def up
    change_column :issues, :status, :string, default: "Active"
  end

  def down
    change_column :issues, :status, :string, default: nil
  end
end
