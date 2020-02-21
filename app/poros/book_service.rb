class BookService
  def initialize(title)
    @title = title
  end 

  def conn 
    Faraday.new(url: "http://openlibrary.org")
  end
  
  def search
    results = conn.get('/search.json') do |req|
      req.params['title'] = @title
    end 
    JSON.parse(results.body, symbolize_names: true)
  end 
end 