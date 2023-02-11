require 'rails_helper'

RSpec.describe 'movies/edit' do
  let(:movie) do
    Movie.create!(
      name: 'MyString',
      description: 'MyString',
      age_linit: 1
    )
  end

  before do
    assign(:movie, movie)
  end

  it 'renders the edit movie form' do
    render

    assert_select 'form[action=?][method=?]', movie_path(movie), 'post' do
      assert_select 'input[name=?]', 'movie[name]'

      assert_select 'input[name=?]', 'movie[description]'

      assert_select 'input[name=?]', 'movie[age_linit]'
    end
  end
end
