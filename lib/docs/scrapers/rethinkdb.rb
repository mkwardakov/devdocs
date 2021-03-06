module Docs
  class Rethinkdb < UrlScraper
    self.name = 'RethinkDB'
    self.type = 'rethinkdb'
    self.release = '2.2.5'
    self.base_url = 'https://rethinkdb.com/api/javascript/'
    self.links = {
      home: 'https://rethinkdb.com/',
      code: 'https://github.com/rethinkdb/rethinkdb'
    }

    html_filters.push 'rethinkdb/entries', 'rethinkdb/clean_html'

    options[:trailing_slash] = false
    options[:container] = '.docs-article'

    options[:fix_urls] = ->(url) do
      url.sub! %r{rethinkdb.com/api/(?!javascript|ruby|python)}, 'rethinkdb.com/api/javascript/'
    end

    options[:attribution] = <<-HTML
      &copy; RethinkDB contributors<br>
      Licensed under the Creative Commons Attribution-ShareAlike 3.0 Unported License.
    HTML
  end
end
