$filelist = Get-ChildItem -Path "C:\Users\grant\source\repos\SSISTest\DeployData\bin\Development" -Recurse | Where-Object { $_.LastWriteTime -gt "2023-06-22" }

foreach ($file in $filelist) {
    # Variables
    $TargetInstanceName = "localhost\default"
    $TargetFolderName = $file.Name -replace '\..*'
    $ProjectFilePath = $file.FullName
    $ProjectName = $TargetFolderName

    # Get the Integration Services catalog
    $catalog = Get-Item SQLSERVER:\SSIS\$TargetInstanceName\Catalogs\SSISDB\

    # Create the target folder
    New-Object "Microsoft.SqlServer.Management.IntegrationServices.CatalogFolder" ($catalog, 
        $TargetFolderName, "Folder description") -OutVariable folder
    $folder.Create()

    # Read the project file and deploy it
    [byte[]] $projectFile = [System.IO.File]::ReadAllBytes($ProjectFilePath)
    $folder.DeployProject($ProjectName, $projectFile)
}