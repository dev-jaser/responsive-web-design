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

    # Create a new memory stream to store the icon data
    $iconStream = New-Object System.IO.MemoryStream

    # Create a binary writer to write data to the memory stream
    $iconWriter = New-Object System.IO.BinaryWriter($iconStream)

    # Write the ICON header information
    $iconWriter.Write([byte[]](0, 0, 1, 0, 1, 0))  # Reserved, type, and count
    $iconWriter.Write([byte[]](0, 0, 0, 0, 0, 0))  # Width, height, colors, reserved
    $iconWriter.Write([byte[]](40, 0, 0, 0))      # Header size
    $iconWriter.Write([byte[]]($bitmap.Width, 0)) # Width
    $iconWriter.Write([byte[]]($bitmap.Height, 0)) # Height
    $iconWriter.Write([byte[]]1)                    # Color planes
    $iconWriter.Write([byte[]]32)                   # Bits per pixel
    $iconWriter.Write([byte[]]0)                    # Compression
    $iconWriter.Write([byte[]]0)                    # Image size
    $iconWriter.Write([byte[]]0, 0)                 # Horizontal resolution
    $iconWriter.Write([byte[]]0, 0)                 # Vertical resolution
    $iconWriter.Write([byte[]]0)                    # Colors used
    $iconWriter.Write([byte[]]0)                    # Important colors

    # Save the bitmap to the memory stream in PNG format
    $bitmap.Save($iconStream, [System.Drawing.Imaging.ImageFormat]::Png)

    # Reset the position of the memory stream to the beginning
    $iconStream.Position = 0

    # Write the memory stream data to the output file
    [System.IO.File]::WriteAllBytes($outputPath, $iconStream.ToArray())

    # Clean up resources
    $iconStream.Close()
    $bitmap.Dispose()
}

# Call the conversion function
Convert-BitmapToIcon -inputPath $inputImagePath -outputPath $outputIconPath

Write-Host "Icon created at $outputIconPath"
