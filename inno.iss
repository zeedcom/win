#define MyAppName "ZedCom Desktop"
#define MyAppExeName "ZedCom Desktop.exe"
#define MyAppPublisher "ZedCom"
#define MyAppURL "https://www.zedcom.app/"
#define MyAppUpdatesURL "https://github.com/zedcom-app/zedcom-win/releases/latest/"
#define AppVersion GetVersionNumbersString("ZedCom Desktop.exe")
[Setup]
AppName={#MyAppName}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppContact=contact.zedcom@gmail.com
AppUpdatesURL={#MyAppUpdatesURL}
AppVersion={#AppVersion}
AppReadmeFile=README.md
AppCopyright=Copyright (C) 2024 ZedCom, Inc.
WizardStyle=modern
WizardImageFile=WizardImageFile.bmp
WizardSmallImageFile=WizardSmallImageFile.bmp
DefaultDirName={autopf}\{#MyAppName}
UninstallDisplayIcon={app}\Uninstall.exe
ChangesAssociations=yes
DisableProgramGroupPage=yes
Compression=lzma
SolidCompression=yes
OutputDir=install
OutputBaseFilename=ZedCom.Desktop.Setup

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]  
Source: ".\*"; DestDir: "{app}";  Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
