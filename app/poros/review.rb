class Review
  attr_reader :summary, :publication_date, :reviewer
  def initialize(info)
    @summary = info[:results].first[:summary]
    @publication_date = info[:results].first[:publication_dt]
    @reviewer = info[:results].first[:byline]
  end 
end 