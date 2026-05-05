$ErrorActionPreference = "Stop"

if (-not (Get-Command bundle -ErrorAction SilentlyContinue)) {
  throw "Bundler was not found. Install Ruby, then run: gem install bundler"
}

& bundle exec jekyll build
