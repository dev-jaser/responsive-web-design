param (
    [string]$inputImagePath,
    [string]$outputIconPath
)

Add-Type -AssemblyName System.Drawing

function Convert-BitmapToIcon {
    param (
        [string]$inputPath,
        [string]$outputPath
    )

    $bitmap = [System.Drawing.Bitmap]::FromFile($inputPath)

    # Create an icon from the bitmap
    $iconStream = New-Object System.IO.MemoryStream
    $iconWriter = New-Object System.IO.BinaryWriter($iconStream)
    $iconWriter.Write([byte[]](0, 0, 1, 0, 1, 0, $bitmap.Width, $bitmap.Height, 0, 0, 1, 0, 32, 0, 0, 0, 0, 0, 40, 0, 0, 0, $bitmap.Width, $bitmap.Height, 1, 0, 32, 0, 0, 0, 0, 0))
    $bitmap.Save($iconStream, [System.Drawing.Imaging.ImageFormat]::Png)
    $iconStream.Position = 0

    $fileStream = [System.IO.File]::OpenWrite($outputPath)
    $iconStream.CopyTo($fileStream)
    $fileStream.Close()
    $iconStream.Close()
    $bitmap.Dispose()
}

Convert-BitmapToIcon -inputPath $inputImagePath -outputPath $outputIconPath

Write-Host "Icon created at $outputIconPath"
