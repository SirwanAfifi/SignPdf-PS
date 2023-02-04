@{
    # If authoring a script module, the RootModule is the name of your .psm1 file
    RootModule           = './Signpdf.psm1'

    Author               = 'Sirwan Afifi <sir1afifi@gmail.com>'

    CompanyName          = 'Sirwan Afifi'

    ModuleVersion        = '1.0.0'

    # Use the New-Guid command to generate a GUID, and copy/paste into the next line
    GUID                 = '12b30317-bcfd-44ba-8e86-1aafdf4e71c3'

    Copyright            = '2022 Copyright Holder'

    Description          = 'Do you want to sign your pdf files? This module will help you do that.'

    # Minimum PowerShell version supported by this module (optional, recommended)
    PowerShellVersion    = '5.1'

    # Which PowerShell Editions does this module work with? (Core, Desktop)
    CompatiblePSEditions = @('Desktop', 'Core')

    # Which PowerShell functions are exported from your module? (eg. Get-CoolObject)
    FunctionsToExport    = @('Set-PDFSingature')

    # Which PowerShell aliases are exported from your module? (eg. gco)
    AliasesToExport      = @('')

    # Which PowerShell variables are exported from your module? (eg. Fruits, Vegetables)
    VariablesToExport    = @('')

    # PowerShell Gallery: Define your module's metadata
    PrivateData          = @{
        PSData = @{
            # What keywords represent your PowerShell module? (eg. cloud, tools, framework, vendor)
            Tags         = @('PDF')

            # What software license is your code being released under? (see https://opensource.org/licenses)
            LicenseUri   = ''

            # What is the URL to your project's website?
            ProjectUri   = 'https://github.com/SirwanAfifi/SignPdf-PS'

            # What is the URI to a custom icon file for your project? (optional)
            IconUri      = ''

            # What new features, bug fixes, or deprecated features, are part of this release?
            ReleaseNotes = @'
'@
        }
    }

    # If your module supports updatable help, what is the URI to the help archive? (optional)
    # HelpInfoURI = ''
}