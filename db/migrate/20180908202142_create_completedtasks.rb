class CreateCompletedtasks < ActiveRecord::Migration[5.2]
  def change
    create_table :completedtasks do |t|
      t.boolean :completed, default: false
      t.references :user, foreign_key: true
      t.references :todo, foreign_key: true

      t.timestamps
    end
  end
end
