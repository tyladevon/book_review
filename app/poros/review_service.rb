class ReviewService
  def initialize(title)
    @title = title
  end

  def search 
    conn.get('/reviews.json') do |req|
      req.params['title'] = @title
      req.params['api-key'] =ENV['NYT_API']
  end

  def conn
    Faraday.new(url: "https://api.nytimes.com/svc/books/v3")
  end 
end