class AddValidatesMovies < ActiveRecord::Migration[7.0]
  def change
    # validates :name, presence: true, length: { minimum: 2 }
    # validates :age_linit, presence: true
    # validates :release_date, presence: true
    # validates :description, presence: true
    change_column_null :movies, :name, false
    change_column_null :movies, :age_linit, false
    change_column_null :movies, :release_date, false
    change_column_null :movies, :description, false

  end
end
