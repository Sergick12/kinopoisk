class AddValidationsGenres < ActiveRecord::Migration[7.0]
  def change
    change_column_null :movies, :name, false
  end
end
