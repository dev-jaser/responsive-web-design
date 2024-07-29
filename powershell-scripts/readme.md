# Project Title: Bitmap to Icon Converter

## Description
This PowerShell script converts a bitmap image (`.bmp`) into an icon file (`.ico`). It uses the .NET `System.Drawing` library to read the bitmap image and write the icon file.

## Features
- Converts a `.bmp` image file to a `.ico` file
- Supports basic bitmap image formats
- Generates an icon with standard dimensions and formats

## Technologies Used
- PowerShell
- .NET `System.Drawing` library

## Usage

1. **Save the Script**: Save the PowerShell script as `BitmapToIcon.ps1`.

2. **Run the Script**:
   Open a PowerShell terminal and navigate to the directory where the script is saved. Execute the script using the following command:
   ```powershell
   .\BitmapToIcon.ps1 -inputImagePath "path\to\your\bitmap.bmp" -outputIconPath "path\to\your\output.ico"
