class AddValidatesMovies < ActiveRecord::Migration[7.0]
  def change
    change_column_null :movies, :name, false
    change_column_null :movies, :age_linit, false
    change_column_null :movies, :release_date, false
    change_column_null :movies, :description, false
  end
end
