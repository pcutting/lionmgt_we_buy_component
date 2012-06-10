class CreateLenders < ActiveRecord::Migration
  def change
    create_table :lenders do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.boolean :lent_before_on_property
      t.string :how_much_can_you_lend
      t.string :what_geographical_area_of_interest
      t.string :how_fast_can_you_move_funds
      t.text :comment

      t.timestamps
    end
  end
end
