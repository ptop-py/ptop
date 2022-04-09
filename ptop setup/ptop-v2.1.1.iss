; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "ptop"
#define MyAppVersion "v2.1.1"
#define MyAppPublisher "DWhirlpool, Inc."
#define MyAppURL "https://dwhirlpool.github.io/ptop/"
#define MyAppExeName "ptop.exe"
#define MyAppAssocName MyAppName + " File"
#define MyAppAssocExt ".ptf"
#define MyAppAssocKey StringChange(MyAppAssocName, " ", "") + MyAppAssocExt

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{2FBD82C2-4EEE-4546-B536-82E6FFDC174B}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
ChangesAssociations=yes
DisableProgramGroupPage=yes
LicenseFile=C:\Users\ludan\Documents\ptop\LICENSE
InfoBeforeFile=C:\Users\ludan\Documents\ptop\index.md
; Remove the following line to run in administrative install mode (install for all users.)
PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
OutputDir=C:\Users\ludan\Documents\ptop\ptop setup
OutputBaseFilename=ptop-v2.1.1
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "C:\Users\ludan\Documents\ptop\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\ludan\Documents\ptop\psutil\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\ludan\Documents\ptop\colorama\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\ludan\Documents\ptop\build\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\ludan\Documents\ptop\.gitattributes"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\ludan\Documents\ptop\index.md"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\ludan\Documents\ptop\index.rst"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\ludan\Documents\ptop\lastlogin.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\ludan\Documents\ptop\LICENSE"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\ludan\Documents\ptop\main.py"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\ludan\Documents\ptop\ptop.py"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\ludan\Documents\ptop\ptop.spec"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\ludan\Documents\ptop\ptopa.py"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Registry]
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocExt}\OpenWithProgids"; ValueType: string; ValueName: "{#MyAppAssocKey}"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}"; ValueType: string; ValueName: ""; ValueData: "{#MyAppAssocName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".myp"; ValueData: ""

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
