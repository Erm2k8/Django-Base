python -m venv .venv

$venvActivate = ".\.venv\Scripts\Activate.ps1"

if (Test-Path $venvActivate) {
    & $venvActivate

    python -m pip install --upgrade pip
    if (Test-Path "requirements.txt") {
        python -m pip install -r requirements.txt
        Write-Host "Dependencias instaladas com sucesso." -ForegroundColor Green 
    } else {
        Write-Host "Arquivo requirements.txt nao encontrado." -ForegroundColor Red 
    }
} else {
    Write-Host "Nao foi possível ativar o ambiente virtual." -ForegroundColor Red
}