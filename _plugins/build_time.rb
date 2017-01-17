module Jekyll
  class BuildTimeTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
      site = context["site"]
      p site.posts.size
      post_hours = site.posts.map do |p|
        hours = p["hours"]
        hours ? hours.to_f : 0.0
      end
      p post_hours
      total_hours = post_hours.reduce(:+)
      "#{total_hours}"
    end
  end
end

Liquid::Template.register_tag('build_time', Jekyll::BuildTimeTag)

# {{ site.posts.map(:hours).reduce(:+) }}