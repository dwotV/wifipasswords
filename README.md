# WiFiProfileExtractor

**WiFiProfileExtractor** es un script en Batch (`.bat`) para sistemas Windows que permite listar los perfiles de redes Wi-Fi guardadas en la máquina local y obtener detalles de cada uno, incluyendo contraseñas si están disponibles.

> ⚠️ **Uso legítimo solamente**: Este script debe usarse únicamente en sistemas de tu propiedad o en los que tengas autorización expresa. Su propósito es educativo y de administración de sistemas personales.

---

## ¿Qué hace este script?

El script realiza los siguientes pasos:

1. **Extrae los perfiles Wi-Fi guardados** utilizando el comando `netsh wlan show profiles`.
2. **Filtra y limpia los nombres de los perfiles**, eliminando espacios innecesarios.
3. **Consulta información detallada de cada red**, incluyendo la clave si está almacenada.
4. **Guarda todos los resultados** en un archivo llamado `resultados_wifi.txt`.

---

## Archivos generados

- `resultado_wifi.txt`: Contiene la salida original del comando `netsh wlan show profiles`.
- `perfiles_wifi.txt`: Lista de nombres de perfiles extraídos.
- `perfiles_wifi_sin_espacios.txt`: Lista de perfiles sin espacios (para facilitar automatización).
- `resultados_wifi.txt`: Información detallada de cada perfil, incluyendo contraseña si está guardada.

---

## Uso

1. Abre una terminal con privilegios de **Administrador**.
2. Ejecuta el archivo `.bat`.
3. Se abrirán algunos archivos en el Bloc de notas a medida que avanza el script.
4. Al finalizar, encontrarás el archivo `resultados_wifi.txt` con toda la información.

---

## Ejemplo de salida

En `resultados_wifi.txt` encontrarás bloques como:

```txt
Perfil de todos los usuarios: MiRedWiFi
    Nombre de SSID                   : MiRedWiFi
    Autenticación                    : WPA2-Personal
    Cifrado                          : CCMP
    Contenido de la clave            : miclavewifi123
```

# wifipasswords_finder
Este ".bat" obtiene los datos (como contraseñas) de las redes wifi que fueron conectadas en una computadora con sistema windows.


<img width="803" alt="image" src="https://github.com/daWoV/wifipasswords/assets/111296280/3271c1a4-69f1-4180-806d-0c7599b51937">
