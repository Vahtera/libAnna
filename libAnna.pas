function AddSpaces(const S: string): string;
{ Add spaces between characters in a string }
var
  I: Integer;
begin
  Result := '';
  for I := 1 to Length(S) do
    Result := Result + S[I] + ' ';
  Result := Trim(Result); // Remove trailing space
end;

function GetFileName(const F: string, const E: string): string
{ Get full filename and absolute path }
{ usage (GetFileName(FileName, Ext). Returns fully formatted absolute path with filename. }
var
  FullPath, FName: string;
begin
  FullPath := ExtractFilePath(ParamStr(0)); // Get Application path
  { Settings for running on a macOS machine. }
  {$IFDEF MACOS}
    SetLength(FullPath, Length(FullPath) - 6); // To get rid of 'MacOS/' folder where the binary is located.
    FullPath := TPath.Combine(FullPath, 'Resources/StartUp/'); // §Add the correct path to resources.
  {$ENDIF}
  FName := F + E;
  Result := TPath.Combine(FullPath, FName);
end;