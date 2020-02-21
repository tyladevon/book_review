class SearchFacade
  def initialize(title)
    @title = title
  end

  def book_info
    BookService.new(@title).search
  end 

  def book_reviews
    ReviewService.new(@title).search
  end 
end