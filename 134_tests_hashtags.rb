# frozen_string_literal: true

def hashtags(str)
  regexp_tags = Regexp.new("\#[[:word:]-]+", 'i')
  str.scan(regexp_tags)
end

# str = $stdin.gets.chomp
str = 'Lorem ipsum dolor sit amet, consectetur #anime #аниме sit amet,
consectetur #fyp #otaku #weeb adipisicing elit, sed do eiusmod
tempor #fmab #fullmetalalchemist'
hashtags(str)
