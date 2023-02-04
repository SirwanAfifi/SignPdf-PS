# SignPdf

This PowerShell module allows you to sign PDF documents by adding a user's signature to it. This can be particularly useful for businesses where you need to sign invoices, contracts, or other important documents.

## Features

- Ability to add a user's signature to a PDF document
- Option to specify the location of the signature on the document

## Installation

All required binary files for [iTextSharp.LGPLv2.Core](https://github.com/VahidN/iTextSharp.LGPLv2.Core) should be in 1.0.0/Public/dependencies. To install the module, follow these steps:

```powershell
PS /> Publish-Module -Path ./SignPdf/1.0.0 -Repository PSLocal
PS /> Install-Module -Name SignPdf -Repository PSLocal
```

## Usage

```powershell
Set-PDFSingature -PdfToSign "./invoice.pdf" -SignatureImage "./sign.jpg"
```

## Dependencies

- [iTextSharp.LGPLv2.Core](https://github.com/VahidN/iTextSharp.LGPLv2.Core)
