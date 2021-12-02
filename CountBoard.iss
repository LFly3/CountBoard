; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "CountBoard"
#define MyAppVersion "1.3.0.2"
#define MyAppPublisher "Gaoyongxian"
#define MyAppURL "https://github.com/Gaoyongxian666/CountBoard"
#define MyAppExeName "CountBoard.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{6DA65E00-FAAE-4286-B277-6D6F99519AD0}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={userdocs}/{#MyAppName}/{#MyAppVersion}
DisableProgramGroupPage=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputDir=C:\Users\Gao yongxian\Desktop
OutputBaseFilename=CountBoard_{#MyAppVersion}
SetupIconFile=C:\Users\Gao yongxian\PycharmProjects\CountBoard\favicon.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern
UninstallDisplayIcon={app}\{#MyAppExeName} 

[Code]  
function InitializeSetup(): boolean;  
var  
  ResultStr: String;  
  ResultCode: Integer;  
begin  
  if RegQueryStringValue(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{6DA65E00-FAAE-4286-B277-6D6F99519AD0}_is1', 'UninstallString', ResultStr) then  
    begin  
      ResultStr := RemoveQuotes(ResultStr);  
      Exec(ResultStr, '/silent', '', SW_HIDE, ewWaitUntilTerminated, ResultCode);  
    end;  
    result := true;  
end;

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "cn"; MessagesFile: "compiler:Languages\ChineseSimplified.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\Gao yongxian\PycharmProjects\CountBoard\pack\CountBoard\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Gao yongxian\PycharmProjects\CountBoard\pack\CountBoard\cacert.pem"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Gao yongxian\PycharmProjects\CountBoard\pack\CountBoard\favicon.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Gao yongxian\PycharmProjects\CountBoard\pack\CountBoard\introduction.md"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Gao yongxian\PycharmProjects\CountBoard\pack\CountBoard\del.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Gao yongxian\PycharmProjects\CountBoard\pack\CountBoard\home.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Gao yongxian\PycharmProjects\CountBoard\pack\CountBoard\edit.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Gao yongxian\PycharmProjects\CountBoard\pack\CountBoard\exit.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Gao yongxian\PycharmProjects\CountBoard\pack\CountBoard\github.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Gao yongxian\PycharmProjects\CountBoard\pack\CountBoard\help.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Gao yongxian\PycharmProjects\CountBoard\pack\CountBoard\recovery.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Gao yongxian\PycharmProjects\CountBoard\pack\CountBoard\update.ico"; DestDir: "{app}"; Flags: ignoreversion

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

