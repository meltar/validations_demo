class AddColsToHalloweenPet < ActiveRecord::Migration
  def change
		add_column :halloweenpets, :phone_number, :string, limit: 10
		add_column :halloweenpets, :email, :string
		add_column :halloweenpets, :age, :integer, limit: 2
		add_column :halloweenpets, :weight, :decimal, precision: 5, scale: 2
		add_column :halloweenpets, :gender, :string, default: "Unknown"
  end
end
