require 'uri'
require 'net/http'

module Jekyll
  module Converters
    class EmbedClojure < ::Liquid::Tag
      def initialize(tag_name, url, tokens)
        @url = URI(url)
        super
      end

      def content
        Net::HTTP.get(@url)
      end

      def render(context)

        <<MARKUP
[source,clojure]
----
#{content}
----
MARKUP
      end
    end
  end
end

Liquid::Template.register_tag('clj', Jekyll::Converters::EmbedClojure)