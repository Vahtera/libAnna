Public Module libAnna
  Public Const libAnnaVersion As Integer = 1 ' Specifically the Xojo version of libAnna
  
  ' Project Items
  Public Var project As XojoProject
  Public Var projectFolder As FolderItem

  ' libAnna Items
  Public Var libFolder As FolderItem
  Public Var libAnna As FolderItem

  ' English Wordlists
  Public Var englishVerbs As FolderItem
  Public Var englishVerbsPast As FolderItem
  Public Var englishVerbsIng As FolderItem
  Public Var englishNouns As FolderItem
  Public Var englishAdjectives As FolderItem
  
  ' English Wordlist FileNames
  Public Var eVerbs As String
  Public Var eVerbsPast As String
  Public Var eVerbsIng As String
  Public Var eNounsFromVerbs As String
  Public Var eNouns As String
  Public Var eAdjectives As String

  ' Version control from GitHub
  Public Var versionFile As FolderItem

  ' Initialization Method
  Public Sub Initialize()
    project = XojoProject.Current
    If project = Nil Then
      MessageBox("Error: No active Xojo project found.")
      Return
    End If
    
    projectFolder = project.ProjectFolder
    If projectFolder = Nil Then
      MessageBox("Error: Project folder not found.")
      Return
    End If

    ' Set up file paths
    libFolder = projectFolder.Child("libAnna")
    libAnna = libFolder.Child("libAnna.xojo_code")

    englishVerbs = libFolder.Child("english_verbs.txt")
    englishVerbsPast = libFolder.Child("english_verbs_past.txt")
    englishVerbsIng = libFolder.Child("english_verbs_ing.txt")
    englishNouns = libFolder.Child("english_nouns.txt")
    englishAdjectives = libFolder.Child("english_adjectives.txt")

    versionFile = projectFolder.Child("XojoVersion.xojo_code")
	
	' Set up filename variables
	eVerbs = "english_verbs.txt"
	eVerbsPast = "english_verbs_past.txt"
	eVerbsIng = "english_verbs_ing.txt"
	eNounsFromVerbs = "english_nouns_from_verbs.txt"
	eNouns = "english_nouns.txt"
	eAdjectives = "english_adjectives.txt"
	
  End Sub
  
  Public Function LoadFile(fileName As String) As String()
    Var words() As String  ' Array to store lines from the file
    Var file As FolderItem = libFolder.Child(fileName)  ' Get file from libFolder

    ' Check if file exists before attempting to open
    If file <> Nil And file.Exists Then
      Try
        Var stream As TextInputStream = TextInputStream.Open(file)
        stream.Encoding = Encodings.UTF8

        While Not stream.EndOfFile
          words.Add(stream.ReadLine)
        Wend

        stream.Close  ' Always close the stream after reading

      Catch e As IOException
        MessageBox("Error loading file: " + e.Message)
      End Try
    Else
      MessageBox("File not found: " + fileName)
    End If

    Return words  ' Return the array of words
  End Function
  
End Module
