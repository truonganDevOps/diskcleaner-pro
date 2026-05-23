; Inno Setup 6 installer script for DiskCleaner Pro (C# / WPF version)
; Run: iscc installer.iss
; Output: Output\DiskCleaner_Setup_v2.0.0.exe

#define MyAppName      "DiskCleaner Pro"
#define MyAppVersion   "2.0.0"
#define MyAppPublisher "TruongAn Dev"
#define MyAppURL       "https://truongan.dev/diskcleaner-pro"
#define MyAppExeName   "DiskCleaner.exe"
; Same AppId as the Python version so upgrading replaces it cleanly
#define MyAppId        "{{B7E2A4F1-DC33-4C8E-9A6B-TruongAnDev}"

[Setup]
AppId                    ={#MyAppId}
AppName                  ={#MyAppName}
AppVersion               ={#MyAppVersion}
AppPublisher             ={#MyAppPublisher}
AppPublisherURL          ={#MyAppURL}
AppSupportURL            ={#MyAppURL}
AppUpdatesURL            ={#MyAppURL}
DefaultDirName           ={autopf}\DiskCleanerPro
DefaultGroupName         ={#MyAppName}
AllowNoIcons             =yes
OutputDir                =Output
OutputBaseFilename       =DiskCleaner_Setup_v2.0.0
Compression              =lzma2/max
SolidCompression         =yes
WizardStyle              =modern
SetupIconFile            =Resources\logo.ico
WizardSmallImageFile     =Resources\logo_512.png
PrivilegesRequired       =admin
ArchitecturesInstallIn64BitMode=x64compatible
MinVersion               =10.0
DisableProgramGroupPage  =yes
UninstallDisplayName     ={#MyAppName} {#MyAppVersion}
UninstallDisplayIcon     ={app}\{#MyAppExeName}

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon";  Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunch"; Description: "Launch at Windows startup (scheduled task)"; GroupDescription: "Startup"; Flags: unchecked

[Files]
; Main executable
Source: "publish\DiskCleaner\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion

; All supporting files (locales, runtimes, etc.)
Source: "publish\DiskCleaner\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Excludes: "{#MyAppExeName}"

[Icons]
Name: "{group}\{#MyAppName}";          Filename: "{app}\{#MyAppExeName}"
Name: "{group}\Uninstall {#MyAppName}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}";   Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
; Create a scheduled task that runs the app elevated (so UAC prompt is automatic)
Filename: "schtasks.exe"; \
    Parameters: "/Create /TN ""DiskCleanerProElevated"" /TR ""{app}\{#MyAppExeName}"" /SC ONLOGON /RL HIGHEST /F"; \
    StatusMsg: "Creating scheduled task..."; \
    Flags: runhidden waituntilterminated; \
    Tasks: quicklaunch

; Launch after install – shellexec triggers UAC for requireAdministrator manifests
Filename: "{app}\{#MyAppExeName}"; \
    Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; \
    Flags: nowait postinstall skipifsilent shellexec

[UninstallRun]
; Remove the scheduled task on uninstall
Filename: "schtasks.exe"; \
    Parameters: "/Delete /TN ""DiskCleanerProElevated"" /F"; \
    Flags: runhidden waituntilterminated; \
    RunOnceId: "RemoveSchedTask"

[Code]
// Optional: warn if .NET 8 Desktop Runtime is not installed
function IsDotNet8Installed(): Boolean;
var
  Key: String;
begin
  Key := 'SOFTWARE\dotnet\Setup\InstalledVersions\x64\sharedfx\Microsoft.WindowsDesktop.App';
  Result := RegKeyExists(HKLM, Key);
end;

procedure InitializeWizard();
begin
  if not IsDotNet8Installed() then
  begin
    MsgBox(
      '.NET 8 Desktop Runtime is not detected on this machine.' + #13#10 +
      'DiskCleaner Pro requires it to run.' + #13#10 +
      'Please download it from: https://dotnet.microsoft.com/download/dotnet/8.0' + #13#10#13#10 +
      'The installation will continue, but the application may not start.',
      mbInformation, MB_OK);
  end;
end;
