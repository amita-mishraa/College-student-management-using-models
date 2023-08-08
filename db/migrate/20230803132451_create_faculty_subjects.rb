class CreateFacultySubjects < ActiveRecord::Migration[7.0]
  def change
    create_table :faculty_subjects do |t|
      t.references :faculty, null: false, foreign_key: true
      t.references :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end
