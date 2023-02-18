require 'rails_helper'

RSpec.describe 'genres/edit' do
  let(:genre) do
    Genre.create!(
      name: 'MyString'
    )
  end

  before do
    assign(:genre, genre)
  end

  it 'renders the edit genre form' do
    render

    assert_select 'form[action=?][method=?]', genre_path(genre), 'post' do
      assert_select 'input[name=?]', 'genre[name]'
    end
  end
end
