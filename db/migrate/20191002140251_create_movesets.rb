class CreateMovesets < ActiveRecord::Migration[5.2]
  def change
    create_table :movesets do |t|
      t.string :set
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
