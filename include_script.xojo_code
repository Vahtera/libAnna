' Xojo IDE Script to include external files.

Dim project As XojoProject = XojoProject.Current
Var projectFolder As FolderItem = XojoProject.Current.ProjectFolder
Var libFolder As FolderItem = projectFolder.Child("libAnna")
Var libAnna As FolderItem = libFolder.Child("libAnna.xojo_code")

' English Wordlists
Var englishVerbs As FolderItem = libFolder.Child("english_verbs.txt")
Var englishVerbsPast As FolderItem = libFolder.Child("english_verbs_past.txt")
Var englishVerbsIng As FolderItem = libFolder.Child("english_verbs_ing.txt")
Var englishNouns As FolderItem = libFolder.Child("english_nouns.txt")
Var englishAdjectives As FolderItem = libFolder.Child("english_adjectives.txt")

' Version control from GitHub
Var versionFile As FolderItem = projectFolder.Child("XojoVersion.xojo_code")

' Uncomment to add libAnna
'project.AddItem(libAnna)

' Uncomment to add English Wordlists
'project.AddItem(englishAdjectives)
'project.AddItem(englishNouns)
'project.AddItem(englishVerbs)
'project.AddItem(englishVerbsIng)
'project.AddItem(englishVerbsPast)

' Uncomment to add Versioning from GitHub
'project.AddItem(versionFile)