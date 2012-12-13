class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :title
      t.integer :course_id
      t.boolean :open
      t.string :result

      t.timestamps
    end
  end
end
