class Book
  attr_reader :name, :genre, :author
  def initialize(info)
    @name = info[:docs].first[:title]
    @genre = info[:docs].first[:subject] || "not available"
    @author = info[:docs].first[:author_name]
  end
end 