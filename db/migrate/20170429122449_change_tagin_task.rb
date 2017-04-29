class ChangeTaginTask < ActiveRecord::Migration[5.0]
  def change
    change_column :tasks, :tag, 'integer USING CAST(tag AS integer)'
  end
end
