class SearchFacade
  def initialize(title)
    @title = title
  end

  def book_return
    info = BookService.new(@title).search
    Book.new(info)
  end 

  def book_reviews
    ReviewService.new(@title).search
  end 
end