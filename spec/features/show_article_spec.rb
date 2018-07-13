require "rails_helper"

RSpec.feature "showing an article" do

  before do
  @article = Article.create(title: "third article", body: "wow! just wow!")
  end

  scenario "user Showing an article" do

  visit "/"
  click_link @article.title

  expect(page).to have_content(@article.title)
  expect(page).to have_content(@article.body)
  expect(current_path).to eq(article_path(@article))
end
 end
