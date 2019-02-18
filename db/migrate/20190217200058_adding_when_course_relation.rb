class AddingWhenCourseRelation < ActiveRecord::Migration[5.2]
  def change
    add_reference :whens, :courses, foreign_key: true
  end
end
