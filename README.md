# webgen-lightbox
A webgen extension to embed Lightbox galleries

## Introduction

This package extends [webgen](http://webgen.gettalong.org/), a static website
generator, by a simple facility to
embed [Lightbox](http://lokeshdhakar.com/projects/lightbox2/) galleries
(tested with Lightbox v2.7.1).

## Requirements

Download [Lightbox](http://lokeshdhakar.com/projects/lightbox2/) and add it to
your webgen project and your page template(s).

## How to Use

Copy the contained `lightbox/` folder to the `ext/` folder within your webgen
project.

You can then use the "lightbox" tag within your pages (requires the "tags"
content processor) like this:

```
{lightbox: {img: /src/to/your/image.png,
            name: gallery-name,
            title: "Title of the image",
            caption: "Caption below the thumbnail",
            thumbnail-width: "250px"}
}
```

## Contact

For any questions, contact Marcel Bollmann (<bollmann@linguistics.rub.de>).

## License

This extension is licensed under GPLv3, just like webgen itself.
