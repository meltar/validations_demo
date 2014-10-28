class CreateHalloweenpets < ActiveRecord::Migration
  def change
    create_table :halloweenpets do |t|
      t.string :name
      t.string :costume
      t.text :description
      t.string :picture

      t.timestamps
    end
  end
end
