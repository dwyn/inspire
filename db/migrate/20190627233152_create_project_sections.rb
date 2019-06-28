class CreateProjectSections < ActiveRecord::Migration[5.2]
  def change
    create_table :project_sections do |t|
      t.belongs_to :project, foreign_key: true
      t.belongs_to :section, foreign_key: true

      t.timestamps
    end
  end
end
