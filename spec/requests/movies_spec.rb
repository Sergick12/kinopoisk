require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe '/movies' do
  # This should return the minimal set of attributes required to create a valid
  # Movie. As you add validations to Movie, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    { 'name' => 'John', 'description' => 'Nice film', 'release_date' => '12-08-2015', 'age_linit' => 15 }
  end

  let(:invalid_attributes) do
    { 'name' => 'Jo', 'description' => '', 'release_date' => '', 'age_linit' => '' }
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      Movie.create! valid_attributes
      get movies_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      movie = Movie.create! valid_attributes
      get movie_url(movie)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_movie_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'renders a successful response' do
      movie = Movie.create! valid_attributes
      get edit_movie_url(movie)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Movie' do
        expect do
          post movies_url, params: { movie: valid_attributes }
        end.to change(Movie, :count).by(1)
      end

      it 'redirects to the created movie' do
        post movies_url, params: { movie: valid_attributes }
        expect(response).to redirect_to(movie_url(Movie.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Movie' do
        expect do
          post movies_url, params: { movie: invalid_attributes }
        end.not_to change(Movie, :count)
      end

      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post movies_url, params: { movie: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        { 'name' => 'JohnNew', 'description' => 'Nice film new', 'release_date' => '12-08-2022', 'age_linit' => 10 }
      end

      it 'updates the requested movie' do
        movie = Movie.create! valid_attributes
        patch movie_url(movie), params: { movie: new_attributes }
        movie.reload
        get movie_url(movie)
        expect(response).to be_successful
      end

      it 'redirects to the movie' do
        movie = Movie.create! valid_attributes
        patch movie_url(movie), params: { movie: new_attributes }
        movie.reload
        expect(response).to redirect_to(movie_url(movie))
      end
    end

    context 'with invalid parameters' do
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        movie = Movie.create! valid_attributes
        patch movie_url(movie), params: { movie: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested movie' do
      movie = Movie.create! valid_attributes
      expect do
        delete movie_url(movie)
      end.to change(Movie, :count).by(-1)
    end

    it 'redirects to the movies list' do
      movie = Movie.create! valid_attributes
      delete movie_url(movie)
      expect(response).to redirect_to(movies_url)
    end
  end
end
