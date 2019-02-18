class FixingReferences < ActiveRecord::Migration[5.2]
  def change
    remove_column :courses, :whens_id
    remove_column :whens, :courses_id
    add_reference :courses, :when, foreign_key: true
    add_reference :whens, :course, foreign_key: true
  end
end
