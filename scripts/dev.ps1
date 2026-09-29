$ErrorActionPreference = "Stop"

if (-not (Get-Command bundle -ErrorAction SilentlyContinue)) {
  throw "Ruby/Bundler was not found. Install Ruby and Bundler, then run 'bundle install' from the repository folder."
}

Push-Location (Join-Path $PSScriptRoot "..")
try {
  & bundle exec jekyll serve --livereload --host 127.0.0.1
  if ($LASTEXITCODE -ne 0) { throw "Preview failed. Check the error above; run 'bundle install' if dependencies are missing." }
} finally {
  Pop-Location
}
