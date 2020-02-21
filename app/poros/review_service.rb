class ReviewService
  def initialize(title)
    @title = title
  end

  def search 
    results = conn.get('svc/books/v3/reviews.json') do |req|
      req.params['title'] = @title
      req.params['api-key'] = ENV['NYT_API']
    end 
      JSON.parse(results.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://api.nytimes.com")
  end 
end