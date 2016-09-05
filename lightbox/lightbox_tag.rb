# -*- encoding: utf-8 -*-

require 'webgen/tag'

module Webgen
  class Tag
    module Lightbox
      def self.call(tag, body, context)
        if context[:config]['tag.lightbox.thumbnail-img'].nil?
          thumbnail = context[:config]['tag.lightbox.img']
        else
          thumbnail = context[:config]['tag.lightbox.thumbnail-img']
        end

        # begin insert link
        result = "["
        # begin insert image
        result << "![" << context[:config]['tag.lightbox.title'] << "]"
        result << "(" << thumbnail << ")"
        result << "{: width=\"" << context[:config]['tag.lightbox.thumbnail-width'] << "\""
        if(context[:config]['tag.lightbox.img-padding'])
          result << " style=\"padding-bottom: "
          result << context[:config]['tag.lightbox.img-padding']
          result << "\""
        end
        result << "}"
        # end   insert image
        # begin insert caption
        if(context[:config]['tag.lightbox.caption'])
          result << "\n<span class=\"lightbox-caption\" style=\"max-width: "
          result << context[:config]['tag.lightbox.thumbnail-width'] << "\">"
          result << context[:config]['tag.lightbox.caption'] << "</span>\n"
        end
        # end   insert caption
        result << "]"
        result << "(" << context[:config]['tag.lightbox.img'] << ")"
        result << "{: data-lightbox=\"" << context[:config]['tag.lightbox.name'] << "\" "
        result << "data-title=\"" << context[:config]['tag.lightbox.title'] << "\"}"
        # end   insert link
        result
      end
    end
  end
end
