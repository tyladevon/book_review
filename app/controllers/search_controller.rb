class SearchController < ApplicationController
  def index
    search = SearchFacade.new(params[:title])
    render locals: {
      book: search.book_info,
      reviews: search.book_reviews
    }
  end 
end 