# neuroRSE

Website for Flatiron CCN's NeuroRSE group

## Some notes

- The "Posts" section contains all the files from `site/_posts` whose names are
  of the form `YYYY-MM-DD-title.md`.

## Building locally

- Install Jekyll's [requirements](https://jekyllrb.com/docs/installation/)
- From the root directory, run `gem install jekyll bundler`, which will install
  jekyll and the other required packages.
- From the root directory, run `bundle exec jekyll serve -s ./site -d ./_site
  --livereload`, then open `localhost:4000/neuroRSE/` in your browser (the
  trailing slash is required!)
