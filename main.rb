require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'colorize'
#require 'rest-client'

require_relative 'post'
require_relative 'comment'
require_relative 'run'


page = Nokogiri::HTML(open(ARGV[0])) 

puts run(page)
#fetch_comments(page)
#fetch_usernames(page)
# Post.comment(fetch_usernames(page), fetch_comments(page))
# puts populate_comments(fetch_usernames(page), fetch_comments(page))
