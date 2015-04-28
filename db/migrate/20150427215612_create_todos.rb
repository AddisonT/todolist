class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :description
      t.belongs_to :author
      t.timestamps null: false
    end
  end
end
