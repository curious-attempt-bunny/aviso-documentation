module Jekyll
  module Converters
    class EmbedClojure < ::Liquid::Tag
      def initialize(tag_name, path, tokens)
        @path = File.join(File.dirname(__FILE__),'..', path.strip)
        super
      end

      def content
        File.read(@path)
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