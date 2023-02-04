using namespace iTextSharp.text
using namespace iTextSharp.text.pdf
using namespace System.IO

Function Set-PDFSingature {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true, ValueFromPipeline = $true)]
        [ValidateScript({
                if (Test-Path ([Path]::Join($(Get-Location), $_))) {
                    return $true
                }
                else {
                    throw "Signature image not found"
                }
                if ($_.EndsWith('.pdf')) {
                    return $true
                }
                else {
                    throw "File extension must be .pdf"
                }
            })]
        [string]$PdfToSign,
        [Parameter(Mandatory = $true, ValueFromPipeline = $true)]
        [ValidateScript({
                if (Test-Path ([Path]::Join($(Get-Location), $_))) {
                    return $true
                }
                else {
                    throw "Signature image not found"
                }
                if ($_.EndsWith('.png') -or $_.EndsWith('.jpg')) {
                    return $true
                }
                else {
                    throw "File extension must be .png or .jpg"
                }
            })]
        [string]$SignatureImage,
        [Parameter(Mandatory = $false, ValueFromPipeline = $true)]
        [int]$XPos = 130,
        [Parameter(Mandatory = $false, ValueFromPipeline = $true)]
        [int]$YPos = 50
    )
    Try {
        Add-Type -Path "$PSScriptRoot/dependencies/*.dll"
        $pdf = [PdfReader]::new("$(Get-Location)/$PdfToSign")
        $fs = [FileStream]::new("$(Get-Location)/$PdfToSign-signed.pdf", 
            [FileMode]::Create)
        $stamper = [PdfStamper]::new($pdf, $fs)
        $stamper.AcroFields.AddSubstitutionFont([BaseFont]::CreateFont())
        $content = $stamper.GetOverContent(1)
        $width = $pdf.GetPageSize(1).Width
        $image = [Image]::GetInstance("$(Get-Location)/$SignatureImage")
        $image.SetAbsolutePosition($width - $XPos, $YPos)
        $image.ScaleAbsolute(100, 30)
        $content.AddImage($image)
        $stamper.Close()
        $pdf.Close()
        $fs.Dispose()
    }
    Catch {
        Write-Host "Error: $($_.Exception.Message)"
    }
}