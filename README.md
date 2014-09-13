# aviso-documentation

Documentation for the open source Aviso projects.

Documentation is built using [Jekyll](http://jekyllrb.com/).

Plugin sources:

* https://github.com/asciidoctor/jekyll-asciidoc

## Building locally

Run the command `bundle exec jekyll serve -w`.

This builds documentation to the `_site` directory, and watches for changes.

The documentation is available as [http://localhost:4000/io.aviso/documentation/](http://localhost:4000/io.aviso/documentation/).

Changes to source files are regenerated into `_site`.

## Deploying

Currently the documentation is stored at howardlewisship.com.

It is deployed using scp:

```
scp -r _site/* hlship_howardlewisship@ssh.phx.nearlyfreespeech.net:io.aviso/documentation
```

## Navigation

Navigation is controlled by the `_data/nav.yaml`.

There is a _book_ for each project: Pretty, Rook, Twixt.

For each book, there are a number of pages; the pages are used to build the left-side navigation.
