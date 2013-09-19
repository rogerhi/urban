
class IndexController < ApplicationController

 
  def index
    require 'rubygems'  
    require 'open-uri'
    page = Nokogiri::HTML(open("http://www.urbandictionary.com/")) 

    @field1= 'http://www.urbandictionary.com'+page.css("#content").css("a")[1]['href']
    @field2= page.css("#content").css("a")[1].text
    @field3= page.css("#content").css("div.definition")[0].text

    page2 = Nokogiri::HTML(open(URI.escape("https://twitter.com/search?q="+@field2 +"&src=typd"))) 

    @field4=page2.css('title').text
    @field5=page2.css("div.stream-item-header")[0] 
   # @name = page.css("#content").css("a")[1] ##this works
   
    
   
   
    end

end
