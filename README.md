Spotube Now Playing Script versión Español
Este script fue creado para facilitar a los streamers y usuarios de Spotube mostrar lo que están escuchando en tiempo real en sus transmisiones. El script lee los archivos temporales generados por Spotube y crea un archivo nowplaying.txt con el título de la canción y el artista, que luego se puede usar en programas de transmisión como OBS.

Descripción
El propósito de este script es permitir que los usuarios de Spotube muestren lo que están escuchando de manera similar a la herramienta "Now Playing". Para ello, se utiliza la información de los archivos temporales generados por Spotube, y el script limpia esos archivos para obtener solo el título y artista de la canción que se está reproduciendo.

¿Por qué se creó este script? Fue creado con la ayuda de ChatGPT, sin ser programador, con el objetivo de poder compartir fácilmente la música escuchada (incluso música japonesa) en pantalla mientras transmitía en vivo. Ahora, cualquier streamer puede usarlo y personalizarlo para mostrar lo que está sonando.

Requisitos
Para ejecutar este script, necesitarás lo siguiente:

AutoHotkey (se requiere la versión 1.1, la versión 2.0 no es compatible).

Puedes descargarlo desde aquí (https://www.autohotkey.com/).

Importante: El script fue probado con la versión 1.1. Si descargas la versión 2.0, es posible que necesites también la 1.1.

Spotube instalado en tu PC y configurado para generar archivos temporales de canciones.

Asegúrate de habilitar la opción para generar estos archivos en la configuración de Spotube, en la sección de "Caché de Música".

Instalación
1. Descarga e instala AutoHotkey
Ve a la página de AutoHotkey: https://www.autohotkey.com/

Descarga la versión 1.1 (la recomendada).

Instala AutoHotkey en tu sistema.

2. Descarga los scripts
Descarga ambos archivos de script en tu computadora.

3. Configura la ruta de los archivos temporales de Spotube
Abre Spotube y accede a la configuración (ícono de engranaje).

En la sección de Caché de Música, activa la opción para generar archivos temporales.

Abre la carpeta de caché de música y copia la ruta de la carpeta. Luego, reemplázala en el script donde se indican las rutas para que coincidan.

Reemplaza la ruta C:\Users\Usuario\AppData\Local\oss.krtirtho\spotube\cached_tracks con la ruta que copiaste de la carpeta de caché de Spotube.
La línea debería quedar algo así: latestFile := GetLatestFile("AQUÍ_PON_LA_RUTA_DE_LA_CARPETA_DE_CACHÉ")

4. Ejecuta el script
Ejecuta ambos scripts en tu PC.

El primer script (spotube_nowplaying.ahk) genera el archivo nowplaying.txt con la información de la canción que estás escuchando.

El segundo script (reset-files.ahk) limpia la carpeta de caché y se asegura de que solo haya un archivo activo.

El archivo nowplaying.txt se creará automáticamente en la misma carpeta donde hayas ejecutado el script.

Cómo funciona
El script lee los archivos temporales generados por Spotube y limpia el texto para obtener solo el nombre de la canción y el artista. Luego, el título se guarda en un archivo llamado nowplaying.txt, que puede ser leído y mostrado en OBS o cualquier otra herramienta de transmisión.

Limpieza del título: Los scripts eliminan los 18 caracteres extra que se agregan al final de los nombres de los archivos generados por Spotube.

Actualización automática: Cada vez que Spotube reproduce una nueva canción, el script detecta el cambio y actualiza el archivo nowplaying.txt.

Configuración
Solo debes asegurarte de que la ruta de los archivos temporales de Spotube esté correctamente configurada en el script. Si es necesario, abre la carpeta de caché de Spotube y copia la ruta de la carpeta para reemplazarla en el script.

Uso básico
Ejecuta ambos scripts.

El archivo nowplaying.txt se generará automáticamente con el nombre de la canción y el artista.

Puedes usar este archivo en OBS o cualquier software de transmisión para mostrar lo que estás escuchando.

Para detener los scripts, haz clic derecho en los íconos de AutoHotkey en la barra de tareas y selecciona "Exit" o "Quit".

Contribución
¡Las contribuciones son bienvenidas! Si tienes mejoras o sugerencias para el script, siéntete libre de hacer un pull request en este repositorio. No tengo reglas estrictas, solo me gustaría que me mencionen como el autor original del proyecto como un detalle. 🙂

Licencia
Este proyecto se comparte de forma libre y gratuita, para que todos puedan aprovecharlo. No se utilizará ninguna licencia formal para este repositorio, solo se solicita que se le dé el crédito adecuado si se utiliza o se modifica.


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


Spotube Now Playing Script (English Version)
This script was created to help streamers and Spotube users display what they are listening to in real-time during their broadcasts. The script reads the temporary files generated by Spotube and creates a nowplaying.txt file with the song title and artist, which can then be used in streaming programs like OBS.

Description
The purpose of this script is to allow Spotube users to show what they are listening to, similar to the "Now Playing" feature. It uses information from the temporary files generated by Spotube and processes them to obtain just the song title and artist.

Why was this script created?
This script was created with the help of ChatGPT, without being a programmer, to easily share the music being played (even Japanese music) on-screen while live streaming. Now, any streamer can use and customize it to show what they are listening to.

Requirements
To run this script, you will need:

AutoHotkey (version 1.1 required, version 2.0 is not compatible).

You can download it here: https://www.autohotkey.com/

Important: The script was tested with version 1.1. If you download version 2.0, you may need to install version 1.1 as well.

Spotube installed on your PC and configured to generate temporary song files.

Make sure the option to generate these files is enabled in Spotube's settings under the "Music Cache" section.

Installation
Download and Install AutoHotkey

Go to the AutoHotkey website: https://www.autohotkey.com/

Download version 1.1 (recommended).

Install AutoHotkey on your system.

Download the Scripts

Download both script files to your computer.

Configure the Spotube Temporary Files Path

Open Spotube and access the settings (gear icon).

In the Music Cache section, enable the option to generate temporary files.

Open the music cache folder and copy the path to the folder. Then, replace the path in the script to match.

Replace the path C:\Users\Usuario\AppData\Local\oss.krtirtho\spotube\cached_tracks with the path you copied from the Spotube cache folder.

The line should look like this:
latestFile := GetLatestFile("HERE_PUT_THE_CACHE_FOLDER_PATH")

Example:

If your cache path is C:\Users\Juan\Spotube\cached_tracks, the line should look like this:
latestFile := GetLatestFile("C:\Users\Juan\Spotube\cached_tracks")

Run the Script

Run both scripts on your PC.

The first script (spotube_nowplaying.ahk) generates the nowplaying.txt file with the song information you are listening to.

The second script (reset-files.ahk) clears the cache folder and ensures that only one active file remains.

The nowplaying.txt file will be created automatically in the same folder where you execute the script.

How it works
The script reads the temporary files generated by Spotube and cleans up the text to extract only the song title and artist. Then, it saves the title to a file called nowplaying.txt, which can be read and displayed in OBS or any other streaming tool.

Cleaning the title: The scripts remove the extra 18 characters added to the end of the file names generated by Spotube.

Automatic update: Each time Spotube plays a new song, the script detects the change and updates the nowplaying.txt file.

Configuration
You only need to ensure that the Spotube temporary files path is correctly set in the script. If necessary, open the Spotube cache folder and copy the folder path to replace it in the script.

Basic Usage
Run both scripts.

The nowplaying.txt file will automatically be generated with the song title and artist.

You can use this file in OBS or any streaming software to show what you're listening to.

To stop the scripts, right-click the AutoHotkey icons in the taskbar and select "Exit" or "Quit".

Contribution
Contributions are welcome! If you have improvements or suggestions for the script, feel free to make a pull request in this repository. I don’t have strict rules; I would just appreciate it if you mention me as the original author of the project as a nice gesture. 🙂

License
This project is shared freely and openly, so everyone can take advantage of it. No formal license will be used for this repository, but please give proper credit if you use or modify it.