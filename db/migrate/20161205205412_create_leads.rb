class CreateLeads < ActiveRecord::Migration[5.0]
  def change
    create_table :leads do |t|
      t.string :first_name
      t.string :last_name
      t.date :registered_datetime
      t.string :email

      t.timestamps
    end
  end
end
