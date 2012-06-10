class CreateWorkInfos < ActiveRecord::Migration
  def change
    create_table :work_infos do |t|
      t.references :user
      t.references :contact
      t.string :company_name
      t.string :job_title
      t.string :work_email
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.string :label
      t.date :started_working
      t.date :stopped_working
      t.string :comment

      t.timestamps
    end
    add_index :work_infos, :user_id
    add_index :work_infos, :contact_id
  end
end
