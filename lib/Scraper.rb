
require "nokogiri"
require "open-uri"
require "json"
#require "net/http"
require "pry"


class ZooForYou::Scraper
  URL = "https://vacationidea.com/ideas/best-zoos.html"

  def self.get_zoos
    zooarr= []
    res= Nokogiri::HTML(open(URL))
   res.css("div.slideshow").each do |heading|
    zoo_name_rank = heading.css("h2").text
    heading.css("div.slide-caption").each do |paragraph|
    zoo_paragraph = paragraph.css("p").first.text
    zoo_address = paragraph.css("p").css("i").text
    zooarr << {name: zoo_name_rank, details: zoo_paragraph, address: zoo_address}
    end
   end
  Zoo.create_from_scraper(zooarr)
  end

  def self.get_zoo_details(obj)
  end


end


   



