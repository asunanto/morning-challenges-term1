#
# Page Title
#
# Write a method that takes a URL and
# returns the website's title.
#
# Examples:
# pageTitle("http://google.com") => "Google"
# pageTitle("http://www.reddit.com") => "reddit: the front page of the internet"
#
# Check your answers by running the tests:
# ruby tests/16_page_title_test.rb
#
<<<<<<< HEAD
require 'nokogiri'
require 'open-uri'

def pageTitle(url)
  #  return open(url).read.scan(/<title>(.*?)<\/title>/)
   doc = Nokogiri::HTML(open(url))
   return doc.at_css('title').text
=======
require 'nokogiri' # gem install nokogiri (if you don't have it installed)
require 'open-uri'

def pageTitle(url)
  # Fetch and parse HTML document
  doc = Nokogiri::HTML(open(url))
  doc.search('title').children[0].text
>>>>>>> d785f49315f21edd5329234273e9431f9c199eea
end


puts pageTitle("http://google.com")
 

