$ErrorActionPreference = "Stop"

if (-not (Get-Command bundle -ErrorAction SilentlyContinue)) {
  throw "Bundler was not found. Install Ruby, then run: gem install bundler"
}

& bundle exec jekyll serve --livereload --host 127.0.0.1
