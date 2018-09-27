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
require 'nokogiri'
require 'open-uri'

def pageTitle(url)
  #  return open(url).read.scan(/<title>(.*?)<\/title>/)
   doc = Nokogiri::HTML(open(url))
   return doc.at_css('title').text
end


puts pageTitle("http://google.com")
 
