#Persistent
SetTimer, ClearOldFiles, 500
return

ClearOldFiles:
directory := "C:\Users\Usuario\AppData\Local\oss.krtirtho\spotube\cached_tracks"

; Obtener todos los archivos en la carpeta
Loop, %directory%\*.*, 0, 1
{
    ; Si el archivo no es el más reciente, lo eliminamos
    if (A_LoopFileName != GetLatestFile(directory)) {
        FileDelete, %A_LoopFileFullPath%
    }
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
