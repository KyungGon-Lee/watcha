class MoviesController < ApplicationController
  before_action :get_out, except: [:index, :show, :review]

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new

  end

  def create
    Movie.create(
      title: params[:title],
      poster: params[:poster],
      genre: params[:genre],
      nation: params[:nation],
      director: params[:director]
    )
<<<<<<< HEAD
    # redirect_to '/' 
=======
    # redirect_to '/'
>>>>>>> d776ad36555d0bcbb98e84e500a8907a61ae41d5
    redirect_to root_path
  end

  def edit

  end

  def update

  end

  def review
    Review.create(
      rating: params[:rating],
      comment: params[:comment],
      user_id: current_user.id,
      movie_id: params[:id]
    )
    redirect_to :back
  end

<<<<<<< HEAD


=======
>>>>>>> d776ad36555d0bcbb98e84e500a8907a61ae41d5
end
