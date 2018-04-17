class CreateeSections < ActiveRecord::Migration[5.2]
  def change
    create_table :sections do |t|
      t.column :title, :string
      t.column :course_id, :integer

      t.timestamps
    end
  end
end
