# DiskCleaner Pro v2.0 — C# WPF Edition

Windows disk cleaning utility — migrated from Python+CustomTkinter to C# .NET 8 WPF.

## Requirements

- Windows 10/11 x64
- [.NET 8 Desktop Runtime](https://dotnet.microsoft.com/download/dotnet/8.0)
- Admin rights (required for system operations)

## Project Structure

```
DiskCleanerCS/
├── Core/                   # Business logic (12 classes)
│   ├── License.cs          # HMAC-SHA256 license validation
│   ├── I18n.cs             # 8-language i18n (JSON dot-notation)
│   ├── Scanner.cs          # Drive info, folder size scanning
│   ├── Cleaner.cs          # 12 junk categories + recycle bin
│   ├── Detector.cs         # Software/bloatware detection
│   ├── DuplicateFinder.cs  # MD5 duplicate & large file finder
│   ├── AppUninstaller.cs   # Registry-based uninstaller
│   ├── Privacy.cs          # 9 privacy cleanup categories
│   ├── SystemOps.cs        # Startup items, scheduled tasks
│   ├── Health.cs           # 5-category system health score
│   ├── Antivirus.cs        # File scan, quarantine, VirusTotal
│   └── Optimizer.cs        # RAM, power plans, visual effects
├── Views/                  # 13 WPF UserControl pairs (XAML + code-behind)
│   ├── DashboardView       # Drive overview cards
│   ├── AnalyzerView        # Folder size tree
│   ├── CleanerView         # Junk file cleaner
│   ├── UninstallerView     # App uninstaller
│   ├── FinderView          # Large files + duplicate finder
│   ├── PrivacyView         # Privacy cleaner
│   ├── JunctionView        # Junction/symlink manager
│   ├── StartupView         # Startup program manager
│   ├── AntivirusView       # Antivirus scan + quarantine
│   ├── OptimizerView       # RAM/power/service optimizer
│   ├── HealthView          # System health score
│   ├── LicenseView         # License activation + plan table
│   └── ProGateView         # Pro feature gate screen
├── Resources/
│   └── Styles.xaml         # Dark theme (BG_MAIN, BG_CARD, ACCENT...)
├── locales/                # Translation JSON files (vi, en, zh, ja, ko, es, fr, de)
├── KeyGen/                 # Standalone license key generator (separate console app)
├── App.xaml / App.xaml.cs  # Single-instance mutex, License init, I18n init
├── MainWindow.xaml/.cs     # 1180x720 window, 215px sidebar, 11 nav buttons
├── app.manifest            # requireAdministrator + PerMonitorV2 DPI
├── DiskCleanerPro.csproj   # net8.0-windows, UseWPF, 5 NuGet packages
├── build.ps1               # Publish script → publish\DiskCleaner\
├── installer.iss           # Inno Setup 6 → Output\DiskCleaner_Setup_v2.0.0.exe
└── keygen.ps1              # License key generator wrapper
```

## Build

```powershell
# Publish app
.\build.ps1
# Output: publish\DiskCleaner\DiskCleaner.exe

# Build installer (requires Inno Setup 6)
& "$env:LOCALAPPDATA\Programs\Inno Setup 6\ISCC.exe" installer.iss
# Output: Output\DiskCleaner_Setup_v2.0.0.exe
```

## License Keys

```powershell
# Generate keys (build KeyGen first)
.\keygen.ps1 PERSONAL 1      # 1 Personal key, 1 year
.\keygen.ps1 TEAM 1 5        # 5 Team keys, 1 year
.\keygen.ps1 ENTERPRISE 2    # 1 Enterprise key, 2 years
```

## License Tiers

| Tier | Label | Color |
|---|---|---|
| FREE | Miễn phí | #8899aa |
| PERSONAL | Pro Personal | #00b4d8 |
| TEAM | Pro Team | #ffa500 |
| ENTERPRISE | Pro Enterprise | #e94560 |

HMAC secret: `DiskCleaner-Pro-2025-HMAC-v1-TruongAn` (compatible with Python v1.x)

## NuGet Packages

- `Microsoft.Win32.Registry` 5.0.0
- `TaskScheduler` 2.12.0
- `System.Management` 8.0.0
- `System.ServiceProcess.ServiceController` 8.0.0
- `System.Net.Http` 4.3.4

## UAC Elevation

App uses `requireAdministrator` in `app.manifest`. Installer creates a Task Scheduler task (`DiskCleanerProElevated`) for UAC-free subsequent launches.
