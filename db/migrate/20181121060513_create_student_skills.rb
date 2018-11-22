class CreateStudentSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :student_skills do |t|
      t.string :date_achieved
      t.string :level_skill_id
      t.string :people_id

      t.timestamps
    end
  end
end
