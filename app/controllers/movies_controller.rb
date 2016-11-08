class MoviesController < ApplicationController
  def index
    @movies=Movie.all
    render("index.html.erb")
  end

  def show
    @movie=Movie.find(params[:id])
    render("show.html.erb")
  end

  def new_form

  end

  def create_row
    @movie=Movie.new

    @movie.title=params[:title]
    @movie.year=params[:year]
    @movie.duration=params[:duration]
    @movie.description=params[:description]
    @movie.image_url=params[:image_url]
    @movie.save
    render("show")
  end

  def edit_form
    @movie=Movie.find(params[:id])

  end

  def update_row
      @movie=Movie.find(params[:id])
      @movie.title=params[:title]
      @movie.year=params[:year]
      @movie.duration=params[:duration]
      @movie.description=params[:description]
      @movie.image_url=params[:image_url]
      @movie.save
      redirect_to("/movies/#{@movie.id}")
  end

  def destroy
    @movie=Movie.find(params[:id])
    @movie.destroy
  end


end
