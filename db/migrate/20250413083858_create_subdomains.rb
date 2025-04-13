class CreateSubdomains < ActiveRecord::Migration[7.1]
  def change
    create_table :subdomains, id: false do |t|
      t.string :value, primary_key: true, null: false
      t.references :locale, null: false, foreign_key: true
      t.timestamps
    end
  end
end
