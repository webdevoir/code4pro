class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :note
      t.string :video
      t.boolean :header, :null => false, :default => false
      t.string :tag
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
