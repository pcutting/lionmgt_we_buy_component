class CreateLabels < ActiveRecord::Migration
  def change
    create_table :labels do |t|
      t.string :description
      t.integer :position
      t.string :group

      t.timestamps
    end
  end
end
