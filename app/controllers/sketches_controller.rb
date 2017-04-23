require 'net/http'
require 'json'
class SketchesController < ApplicationController
	def home
 	  url = 'http://sketches.quintype.com/api/v1/stories'
	  uri = URI(url)
	  response = Net::HTTP.get(uri)
	  @results=JSON.parse(response)
	  menuURL='http://sketches.quintype.com/api/v1/config';
	  menuUri = URI(menuURL)
	  menuResponse = Net::HTTP.get(menuUri)
	  @menuResults=JSON.parse(menuResponse)
	  
      @menuResults.each do |menu,tags|
     
                		@menudata=tags
                     end
	end
end
