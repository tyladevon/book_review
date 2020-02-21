class Review
  attr_reader :summary, :publication_date, :reviewer
  def initialize(info)
    @summary = info[:summary]
    @publication_date = info[:publication_dt]
    @reviewer = info[:byline]
  end 
end 