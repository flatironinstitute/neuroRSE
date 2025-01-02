# neuroRSE

Website for Flatiron CCN's NeuroRSE group

## Some notes

- The "Posts" section contains all the files from `site/_posts` whose names must
  be of the form `YYYY-MM-DD-title.md` in order to be included in the built site.

## Building locally

- Install Jekyll's [requirements](https://jekyllrb.com/docs/installation/)
- From the root directory, run `gem install jekyll bundler`, which will install
  jekyll and the other required packages.
- From the root directory, run `bundle exec jekyll serve --livereload`, then
  open `localhost:4000` in your browser

## Helpful resources

- For writing templates: [liquid cheat sheet 1](https://www.fabriziomusacchio.com/blog/2021-08-12-Liquid_Cheat_Sheet/), [liquid cheatsheet 2](https://shortcode.dev/liquid-cheatsheet)

## Presentations

This repo includes the machinery to build [reveal.js](https://revealjs.com/) presentations. To do so:

1. Create a directory somewhere under `site/`
2. Create `index.html` in this directory, with the following contents:
   ```
   ---
   layout: slides
   title: YOUR_TITLE_HERE
   markdown: slides.md
   ---
   ```
3. Create `slides.md` and enter your content.

Syntax notes for the markdown:

- To separate horizontal slides, use `---`. To separate vertical slides, use `--`.
- To create speaker notes, write `#note:`. Everything after this and between the next slide separator will be a note.
- Typical Github markdown syntax is allowed. In particular, use `![alt text](path)` for images or videos.
- For images and videos, it is recommended that you make use of your Flatiron cluster [public web hosting](https://wiki.flatironinstitute.org/SCC/PublicWWW). This way we can avoid clogging up this git repository with large binary files.
- For images animations, you can create an image svg and toggle their visibility (this makes use of animate and loadcontent from [revealjs plugins](https://github.com/rajgoel/reveal.js-plugins/)). For an example, see `site/workshops/fens-2024/welcome/slides.md`, the `## What is Flatiron?` slide. (Open up the corresponding svg in inkscape or another editing program and notice that the red X has ID `g715`).
- To create a pdf version of your presentation, you can simply add `?print-pdf` to the end of the url (in Chrome) and print, as recommended by [the docs](https://revealjs.com/pdf-export/). But I find a better solution is to make use of `screenshot_revealjs.sh`, from [this github issue](https://github.com/hakimel/reveal.js/issues/808#issuecomment-127222420). Basically, making use of `scrot`, `xdotool`, `pdftk`, and `imagemagick`, you'll automate taking a bunch of screenshots (as png files), which you can then convert to pdf and concatenate:
    ```shell
    # the directory you want to place the screenshots in, which you should pass as an argument to the script
    mkdir screenshots
    ./screenshot_revealjs.sh screenshots/ 
    # switch to presentation, make it full screen, and let the script run through it all
    # switch back to terminal, Ctrl+C to kill the script
    # delete extra screenshots
    for name in screenshots/*png; do convert $name screenshots/`basename $name .png`.pdf; done
    pdftk screenshots/*pdf cat output presentation.pdf
    ```

See `site/workdshops/fens-2024/welcome/` for an example, and ask Billy if you have any questions.

### Styling

The css files `flatiron-slides.css` controls the styling of the slides. My goal for the styling is described below. If you find a case where the following isn't followed, please change the css. If you disagree with my choices, then we can split up the css files as needed.

- Level one headers (`# Like this`) should be centered, as should any header on a slide with only headers.
- Headers beyond level one should be at the top of the slide.
- There should be almost no gap between the header and images, but there should be a gap before text.
- Text should be left justified and aligned at the top.
- Images should be centered vertically and horizontally in the space remaining (after headers / any text).
