require 'rails_helper'
RSpec.describe "Articles", type:  :request do
  before do
    @article = Article.create(title: "title One", body: "Body of article one")
  end

describe 'GET /articles/:id' do
  context 'with existing article' do
    before { get "/articles/#{@article.id}" }

     it "handles existing article" do
       expect(response.status).to eq 200
      end
  end

  context 'with non-existing article' do

    before { get "/articles/xxxx" }
          # xxxx to mean non existing article.
      it "handles non-existing article" do
        expect(response.status).to eq 302

      end
    end
  end
end
