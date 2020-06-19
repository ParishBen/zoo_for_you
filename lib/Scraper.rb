class ZooForYou::Scraper
    
    def self.get_zoos
        puts "Making Network Request"
     url = "https://www.timeout.com/usa/things-to-do/best-zoos-in-the-us"
     res = HTTParty.get(url)
     zooinfo = res["results"]
     puts zooinfo
    end
end
