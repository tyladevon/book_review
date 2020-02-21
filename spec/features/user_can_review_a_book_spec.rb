require 'rails_helper'

describe "As a User, when I visit the root page" do
  describe "When I fill a book title into the search form" do
    it "I click 'Find Book' and see the information for that book along with reviews" do
      visit '/'
      fill_in :title, with: "The Man Who Saw Everything"
      click_on 'Find Book'
      
      expect(current_path).to eq('/search')

      within(".book-info") do
        expect(".title").to_not be_empty
        expect(".author").to_not be_empty
        expect(".genre").to_not be_empty
      end

      within(".reviews") do
        expect('.review-1').to_not be_empty 
        expect('.review-2').to_not be_empty
      end 
    end 
  end 
end 

# (Note: genres is referred to as "subjects" in the book search response)
# I should also see:
# - This book has 2 reviews from the New York Times
#   (Note: reviews are the "summary" in the book review response)
# - Review 1: ""The Man Who Saw Everything,"" which was longlisted for the Booker Prize, looks at masculinity through the perspective of a young historian who sneers at "authoritarian old men.""
# Review Publication Date: 2019-10-09
# - Review 2: "Deborah Levy's latest novel, "The Man Who Saw Everything," experiments with time travel, history and the endless complications of love."
# Review Publication Date: 2019-10-15