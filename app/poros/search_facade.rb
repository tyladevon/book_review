class SearchFacade
  def initialize(title)
    @title = title
  end

  def book_return
    info = BookService.new(@title).search
    Book.new(info)
  end 

  def book_reviews
    info = ReviewService.new(@title).search
    Review.new(info)
  end 
end