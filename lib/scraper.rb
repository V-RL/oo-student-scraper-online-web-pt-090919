require 'open-uri'
require 'pry'

class Scraper
  
  @@students = []
  

  def self.scrape_index_page(index_url)
    Nokogiri::HTML(open(index_url)).css("a").each do |post|
      student = Student.new 
      student.name = post.css("h4").text
      student.location = post.css("p").text
      student.profile_url = post.css("a").text
    end
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

