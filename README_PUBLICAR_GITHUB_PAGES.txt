APP PROSPECTOR BRESLER V1

Esta aplicación NO utiliza Netlify.
Está preparada para publicarse como sitio estático en GitHub Pages.

ARCHIVOS PRINCIPALES
- index.html
- styles.css
- app.js
- config.js
- manifest.webmanifest
- sw.js
- icon-192.png
- icon-512.png
- assets/logo-bresler.png

ANTES DE PUBLICAR
1. En Supabase, abra SQL Editor.
2. Ejecute una sola vez CONFIGURACION_SUPABASE_FOTOS.sql.
3. Compruebe que existe el bucket privado prospector-fotos.

PUBLICACIÓN EN GITHUB PAGES
1. Cree un repositorio nuevo, por ejemplo: prospector-bresler.
2. Suba el contenido de esta carpeta a la raíz del repositorio.
3. En el repositorio, abra Settings > Pages.
4. En Build and deployment seleccione Deploy from a branch.
5. Seleccione la rama main y la carpeta /(root).
6. Guarde y espere a que GitHub publique el sitio.

ACCESO
- Código visible del prospector: V10
- La contraseña es la configurada en Supabase Auth.
- El correo técnico nunca se muestra en la aplicación.

SEGURIDAD
- El archivo config.js contiene solamente URL y Publishable Key.
- No incluya nunca Secret Key ni service_role.
- Los datos comerciales permanecen en Supabase y están protegidos por Auth + RLS.

NOTA
GitHub Pages publica el código del sitio. No suba copias de Excel, CSV de clientes, fotografías ni claves secretas al repositorio.
