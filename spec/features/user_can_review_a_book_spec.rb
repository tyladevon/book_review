require 'rails_helper'

describe "As a User, when I visit the root page" do
  describe "When I fill a book title into the search form" do
    it "I click 'Find Book' and see the information for that book along with reviews" do
      visit '/'
      fill_in :title, with: "The Man Who Saw Everything"
      click_on 'Find Book'

      expect(current_path).to eq('/search')

      within(".book-info") do
        expect(page).to have_css('.name')
        expect(page).to have_css('.author')
        expect(page).to have_css('.genre')
      end

      within(".reviews") do
          within(".review-1") do 
            expect(".summary").to_not be_empty 
            expect(".pub-date").to_not be_empty
            expect(".reviewer").to_not be_empty
          end 
        expect('.review-2').to_not be_empty
          within(".review-2") do 
            expect(".summary").to_not be_empty 
            expect(".pub-date").to_not be_empty
            expect(".reviewer").to_not be_empty
          end 
      end 
    end 
  end 
end