class CreateStudentLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :student_levels do |t|
      t.string :links_reference_id
      t.string :class_type_id
      t.string :date_attained
      t.string :date_time
      t.string :level_description
      t.string :student_id
      t.string :teacher_id

      t.timestamps
    end
  end
end
