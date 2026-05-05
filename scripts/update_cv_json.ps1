$ErrorActionPreference = "Stop"

$BaseDir = Resolve-Path (Join-Path $PSScriptRoot "..")
$CvMarkdown = Join-Path $BaseDir "content/pages/cv.md"
$CvJson = Join-Path $BaseDir "content/data/cv.json"
$ConfigFile = Join-Path $BaseDir "_config.yml"
$PythonScript = Join-Path $BaseDir "scripts/cv_markdown_to_json.py"

if (-not (Test-Path $PythonScript)) {
  throw "Python script not found at $PythonScript"
}

if (-not (Test-Path $CvMarkdown)) {
  throw "Markdown CV not found at $CvMarkdown"
}

$Python = Get-Command python -ErrorAction SilentlyContinue
$PythonArgs = @()

if (-not $Python) {
  $Python = Get-Command py -ErrorAction SilentlyContinue
  if ($Python) {
    $PythonArgs += "-3"
  }
}

if (-not $Python) {
  $Python = Get-Command python3 -ErrorAction SilentlyContinue
}

if (-not $Python) {
  throw "Python was not found. Install Python or make sure python, py, or python3 is on PATH."
}

Write-Host "Converting Markdown CV to JSON..."
& $Python.Source @PythonArgs $PythonScript --input $CvMarkdown --output $CvJson --config $ConfigFile

Write-Host "Updated $CvJson"
