# -*- encoding: utf-8 -*-

require_relative('lightbox_tag')

website.ext.tag.register('Webgen::Tag::Lightbox', :mandatory => ['img', 'name'])
option('tag.lightbox.img', nil)
option('tag.lightbox.name', 'lightbox-one')
option('tag.lightbox.title', '')
option('tag.lightbox.thumbnail-width', '200px')
option('tag.lightbox.caption', nil)
option('tag.lightbox.img-padding', nil)
