class BookService
  def initialize(title)
    @title = title
  end 

  def conn 
    Faraday.new(url: "http://openlibrary.org")
  end
  
  def search
    conn.get('/search.json') do |req|
      req.params['title'] = @title
    end 
  end 
end 