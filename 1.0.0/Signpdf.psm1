$ScriptList = Get-ChildItem -Path $PSScriptRoot/Public/*.ps1 -Filter *.ps1

foreach ($Script in $ScriptList) {
    . $Script.FullName
}

Export-ModuleMember -Function Set-PDFSingature