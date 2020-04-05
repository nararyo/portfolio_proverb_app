class CreateProverbs < ActiveRecord::Migration[5.2]
  def change
    create_table :proverbs do |t|
      t.string :who_said, limit: 30, null: false
      t.string :feel, null: false
      t.text :expression, limit: 255, null: false

      t.timestamps
    end
  end
end
