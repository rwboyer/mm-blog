
module IMGtag

  class ImageTag < Liquid::Tag
    @img = nil

    def initialize(tag_name, markup, tokens)
      attributes = ['class', 'src', 'width', 'height', 'title']

      if markup =~ /(?<class>\S.*\s+)?(?<src>(?:https?:\/\/|\/|\S+\/)\S+)(?:\s+(?<width>\d+))?(?:\s+(?<height>\d+))?(?<title>\s+.+)?/i
        @img = attributes.reduce({}) { |img, attr| img[attr] = $~[attr].strip if $~[attr]; img }
        if /(?:"|')(?<title>[^"']+)?(?:"|')\s+(?:"|')(?<alt>[^"']+)?(?:"|')/ =~ @img['title']
          @img['title']  = title
          @img['alt']    = alt
        else
          @img['alt']    = @img['title'].gsub!(/"/, '&#34;') if @img['title']
        end
        @img['class'].gsub!(/"/, '') if @img['class']
      end
      super
    end

    def render(context)
      #page_url = context.environments.first["page"]["url"]
      if @img
        tag = "<div class=\"box #{@img['class']}\">" +
          "<a href=\"#{@img['src']}\" class=\"lightview\">\n" + 
          #{}"<a href=\"#{@img['src']}\" rel=\"lightbox\">\n" + 
          #"<a href=\"#{@img['src']}\" class=\"lightview\">\n" +
          #"<img #{@img.collect {|k,v| "#{k}=\"#{v}\"" if v}.join(" ")}>\n" +
          "<img title=\"#{@img['title']}\" src=\"#{@img['src']}\">\n" +
          "</a>"        
        if @img['title']
          tag = tag + "<span class=\"caption fade-caption\">" +
            "<p>#{@img['title']}</p>" +
            "</span>"
        end
        tag = tag + "</div>"
        tag
      else
        "Error processing input, expected syntax: {% img [class name(s)] [http[s]:/]/path/to/image [width [height]] [title text | \"title text\" [\"alt text\"]] %}"
      end
    end
  end
end

Liquid::Template.register_tag('img', IMGtag::ImageTag)
