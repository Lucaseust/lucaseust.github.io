$ErrorActionPreference = "Stop"

if (-not (Get-Command bundle -ErrorAction SilentlyContinue)) {
  throw "Ruby/Bundler was not found. Install Ruby and Bundler, then run 'bundle install' from the repository folder."
}

Push-Location (Join-Path $PSScriptRoot "..")
try {
  & bundle exec jekyll build
  if ($LASTEXITCODE -ne 0) { throw "Build failed. Check the error above; run 'bundle install' if dependencies are missing." }
} finally {
  Pop-Location
}
