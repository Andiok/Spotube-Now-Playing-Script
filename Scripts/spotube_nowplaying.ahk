#Persistent
FileEncoding, UTF-8 ; Asegurarse de que los caracteres estén en UTF-8

SetTimer, UpdateNowPlaying, 1000
return

UpdateNowPlaying:
latestFile := GetLatestFile("C:\Users\Usuario\AppData\Local\oss.krtirtho\spotube\cached_tracks")
if (latestFile) {
    FileDelete, nowplaying.txt
    ; Usar FileAppend con la codificación UTF-8
    FileAppend, %latestFile%, nowplaying.txt
    
    ; Leer el archivo para obtener el título
    FileRead, songTitle, nowplaying.txt

    ; Borrar los últimos 18 caracteres
    StringTrimRight, songTitle, songTitle, 18

    ; Guardar el título limpio en el archivo
    FileDelete, nowplaying.txt
    FileAppend, %songTitle%, nowplaying.txt
}
return

GetLatestFile(directory) {
    Loop, %directory%\*, 1
    {
        if (!latestFile || A_LoopFileTimeModified > latestFileTime) {
            latestFile := A_LoopFileName
            latestFileTime := A_LoopFileTimeModified
        }
    }
    return latestFile
}
