# Get the current directory
$currentDirectory = Get-Location

# List all files in the current directory
Write-Host "Files in current directory:"
Get-ChildItem -Path $currentDirectory

# Create a new directory
New-Item -ItemType Directory -Path "$currentDirectory\NewFolder"

# Change directory to the new folder
Set-Location "$currentDirectory\NewFolder"

# Create a new text file
New-Item -ItemType File -Path "NewFile.txt"

# Write some content to the file
Set-Content -Path "NewFile.txt" -Value "This is some text in the new file."

# Display the content of the file
Write-Host "Content of the new file:"
Get-Content -Path "NewFile.txt"

# Move the file to the parent directory
Move-Item -Path "NewFile.txt" -Destination $currentDirectory

# Display the files in the parent directory
Write-Host "Files in parent directory:"
Get-ChildItem -Path $currentDirectory

# Remove the new folder
Remove-Item -Path "$currentDirectory\NewFolder" -Recurse

# Display the files in the parent directory after removing the folder
Write-Host "Files in parent directory after removing the folder:"
Get-ChildItem -Path $currentDirectory
