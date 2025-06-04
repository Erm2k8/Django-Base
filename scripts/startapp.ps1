param([string]$appName)

if (-not (Test-Path -Path "./apps")) {
    New-Item -ItemType Directory -Path "./apps"
}

$destPath = "./apps/$appName"
if (-not (Test-Path -Path $destPath)) {
    New-Item -ItemType Directory -Path $destPath
}

python manage.py startapp --template=.scaffolds/custom_app/ $appName $destPath

Write-Host "App $appName criado com sucesso." -ForegroundColor Green 

