class CreateProspects < ActiveRecord::Migration
  def change
    create_table :prospects do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.boolean :buy
      t.boolean :sell
      t.boolean :borrow
      t.boolean :lend
      t.boolean :stop_mail, :default => false
      t.boolean :actively_mailing, :default => true
      t.string :key_code
      t.string :comment
      t.string :client_info
      t.string :type_of_prospect
      t.string :ip
      t.string :site_referrer
      t.string :tracking_id
      t.string :source
      
      t.timestamps
    end
  end
end
