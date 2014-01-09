require 'spec_helper'

describe MoviesController do

  describe '#index' do
    it 'renders the index view' do
      get :index
      expect(response).to render_template 'index'
    end
    
    it 'assigns the lists of movies' do
      movie = Movie.create(name: 'test')
      get :index
      expect(assigns(:movies)).to eq([movie]) 
    end
  end

  describe '#new' do
    it 'renders the new view' do
      get :new
      expect(response).to render_template 'new'
    end
    it 'creates new movie' do
      movie= stub_everything()
      Movie.expects(:new).returns(movie)
      get :new
      expect(assigns(:movie)).to be movie
    end
  end

  describe '#create' do
    it 'create new movie with name' do
      Movie.expects(:create).with(has_entries('name' => 'Gravity'))
      post :create, movie: {name: 'Gravity'}
    end
    it 'redirects to index after create' do
      Movie.stubs(:create)
      post :create, movie: {name: 'Gravity'}
      expect(response).to redirect_to movies_path
    end
  end
  
end
