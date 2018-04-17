class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.column :language, :string
      t.column :section_id, :integer

      t.timestamps
    end
  end
end
