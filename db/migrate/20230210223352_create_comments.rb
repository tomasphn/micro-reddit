class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :text
      t.references :user, presence: true, foreign_key: true
      t.references :post, presence: true, foreign_key: true

      t.timestamps
    end
  end
end
