# frozen_string_literal: true

# Search hashtags in input string
class HashTag
  attr_reader :any_tags

  def initialize
    @any_tags = false
  end

  def hashtags(str)
    regexp_tags = Regexp.new("\#[[:word:]-]+", 'i')
    tags = str.scan(regexp_tags)
    @any_tags = true if tags.size.positive?
    tags
  end

  def has_any_hashtag?
    @any_tags
  end
end

# str = $stdin.gets.chomp
str = 'Lorem ipsum dolor sit amet, consectetur #anime #аниме sit amet,
consectetur #fyp #otaku #weeb adipisicing elit, sed do eiusmod
tempor #fmab #fullmetalalchemist'
HashTag.new.hashtags(str)
