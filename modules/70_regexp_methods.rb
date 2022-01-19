require "net/http"

def get_rnd_regexp_str
  patterns = ["хер", "бок", "дар", "рак", "ты"]

  pattern = patterns.sample

  letter = pattern.split("").sample

  pattern.gsub(letter, ".")
end

def word_exist?(word)
  url = "https://ru.wiktionary.org/wiki/" + URI.encode_www_form_component(word)
  wiktionary_page = Net::HTTP.get(URI(url)).force_encoding('UTF-8')

  if wiktionary_page =~ /текст на данной странице отсутствует/
    false
  else
    true
  end
end
