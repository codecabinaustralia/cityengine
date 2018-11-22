class CreateSkillProgressions < ActiveRecord::Migration[5.2]
  def change
    create_table :skill_progressions do |t|
      t.references :site, foreign_key: true
      t.references :student, foreign_key: true
      t.references :skill, foreign_key: true
      t.references :teacher, foreign_key: true
      t.date :date_achieved

      t.timestamps
    end
  end
end
