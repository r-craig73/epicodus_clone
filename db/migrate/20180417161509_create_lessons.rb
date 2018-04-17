class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.column :name, :string
      t.column :content, :string
      t.column :number, :integer
      t.column :section_id, :integer

      t.timestamps
    end
  end
end
