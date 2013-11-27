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
  end
  
end
