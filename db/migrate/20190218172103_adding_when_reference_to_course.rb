class AddingWhenReferenceToCourse < ActiveRecord::Migration[5.2]
  def change
    add_reference :courses, :whens, foreign_key: true
  end
end
