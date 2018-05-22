class CreateRecipients < ActiveRecord::Migration[5.2]
  def change
    create_table :recipients do |t|
      t.string :email
      t.string :name
      t.references :bill, foreign_key: true

      t.timestamps
    end
  end
end
