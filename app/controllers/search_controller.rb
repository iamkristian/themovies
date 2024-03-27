require "omdb"
class SearchController < ApplicationController
  before_action :authenticate_user!

  def index
    omdb = Omdb.new
    @query = params[:query]
    unless @query.nil?
    @resp = omdb.find_by_title(@query)
    end
    @new_movie = Movie.new
  end
end
