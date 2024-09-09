#define MyAppName "ZeedCom Desktop"
#define MyAppExeName "ZeedCom Desktop.exe"
#define MyAppPublisher "ZeedCom"
#define MyAppURL "https://www.zeedcom.com/"
#define MyAppUpdatesURL "https://github.com/zedcom-app/zedcom-win/releases/latest/"
#define AppVersion GetVersionNumbersString("ZeedCom Desktop.exe")
[Setup]
AppName={#MyAppName}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppContact=contact@zeedcom.com
AppUpdatesURL={#MyAppUpdatesURL}
AppVersion={#AppVersion}
AppReadmeFile=README.md
AppCopyright=Copyright (C) 2024 ZeedCom, Inc.
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
OutputBaseFilename=ZeedCom.Desktop.Setup

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]  
Source: ".\*"; DestDir: "{app}";  Flags: ignoreversion recursesubdirs createallsubdirs
; Explicitly include the .git directory and its contents
;Source: ".\.git\*"; DestDir: "{app}\.git"; Flags: ignoreversion recursesubdirs createallsubdirs
[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
