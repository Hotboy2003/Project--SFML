;  
#define   Name       "Traveling Ball"
;  
#define   Version    "1.0.0"
; -
#define   Publisher  "Obynochniy Alexander"
;   
#define   URL        "https://vk.com/hot_boy_holostoy"
;   
#define   ExeName    "Traveling_Ball.exe"

;------------------------------------------------------------------------------
;    
;------------------------------------------------------------------------------
[Setup]

;   , 
;  Tools -> Generate GUID
AppId={{0817EE692-6B93-456B-BB14-81719D756B53}

;  ,   
AppName={#Name}
AppVersion={#Version}
AppPublisher={#Publisher}
AppPublisherURL={#URL}
AppSupportURL={#URL}
AppUpdatesURL={#URL}

;   -
DefaultDirName={pf}\{#Name}
;     ""
DefaultGroupName={#Name}

; ,     setup    
OutputDir=C:\Users\admin\Desktop\installer
OutputBaseFileName=Traveling Ball

;  
SetupIconFile=C:\Users\admin\Desktop\img\ball.ico

;  
Compression=lzma
SolidCompression=yes

;------------------------------------------------------------------------------
;       
;------------------------------------------------------------------------------
[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"; LicenseFile: "C:\Users\admin\Desktop\installer\License_ENG.txt"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"; LicenseFile: "C:\Users\admin\Desktop\installer\License_RUS.txt"

;------------------------------------------------------------------------------
;    -  ,     
;------------------------------------------------------------------------------
[Tasks]
;     
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

;------------------------------------------------------------------------------
;   ,      
;------------------------------------------------------------------------------
[Files]

;  
Source: "C:\Build\Project\Release\Traveling_Ball.exe"; DestDir: "{app}"; Flags: ignoreversion

;  
Source: "C:\Users\admin\Desktop\Project\img\*"; DestDir: "{app}\img\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\admin\Desktop\Project\fonts\*"; DestDir: "{app}\fonts\"; Flags: ignoreversion recursesubdirs createallsubdirs

; VS Redistributable package
Source: "C:\Users\admin\Desktop\installer\VC_redist.x64.exe"; DestDir: "{tmp}"; Flags: deleteafterinstall
;------------------------------------------------------------------------------
;    ,     
;------------------------------------------------------------------------------ 
[Icons]

Name: "{group}\{#Name}"; Filename: "{app}\{#ExeName}"

Name: "{commondesktop}\{#Name}"; Filename: "{app}\{#ExeName}"; Tasks: desktopicon

[Run]
;------------------------------------------------------------------------------
;      VS
;------------------------------------------------------------------------------
Filename: {tmp}\VC_redist.x64.exe; Parameters: "/q:a /c:""install /l /q"""; StatusMsg: VS redistributable package is installed. Please wait...
