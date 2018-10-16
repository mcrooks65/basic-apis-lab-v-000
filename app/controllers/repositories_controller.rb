class RepositoriesController < ApplicationController

  def search

  end

  def github_search
    begin
      @resp = Faraday.get 'https://api.github.com/search/repositories' do |req|
        req.params["q"] = params[:query] 
        req.params["client_id"] = 'be9ee16ec39bdfdbcd7f'
        req.params["client_secret"] = 'a3b8aace511b332997dd9c31ae516cfffe2b83f7'
      end
    end
    
    render 'search'
  end
end
