# Suite de Pruebas Automatizadas para Validación de Contador de Palabras con Robot Framework y Selenium

Este proyecto implementa un conjunto de pruebas automatizadas para verificar la funcionalidad de [WordCounter.net](https://wordcounter.net/). Las pruebas están diseñadas para validar que el sitio web muestra correctamente:

- El número de palabras ingresadas.
- El número de caracteres ingresados.
- Las tres palabras más repetidas y su cantidad de repeticiones en la sección de "Keyword Density".

## Descripción General del Proyecto

La suite de pruebas cubre los siguientes aspectos:

1. **Conteo de Palabras (Validate Word Count)**: Verifica que el sitio muestre el número correcto de palabras después de ingresar texto.
2. **Conteo de Caracteres (Validate Character Count)**: Valida que el sitio muestre el número exacto de caracteres.
3. **Densidad de Palabras Clave (Validate Keyword Density)**: Comprueba que se muestre correctamente la frecuencia de las palabras más repetidas en el texto.

## Instrucciones de Configuración y Ejecución

## Requisitos Previos

Antes de ejecutar el proyecto, asegúrate de tener instalados los siguientes requisitos:

1. **Python**: Se recomienda usar Python 3.6 o superior.
2. **Robot Framework**: Instala Robot Framework ejecutando el siguiente comando:
    ```bash
    pip install robotframework
    ```
3. **Selenium Library**: Instala la biblioteca Selenium para la automatización de pruebas en el navegador:
    ```bash
    pip install robotframework-seleniumlibrary
    ```
4. **WebDriver**: Necesitarás un controlador de navegador para Selenium. Por ejemplo, si usas Chrome, debes descargar [ChromeDriver](https://googlechromelabs.github.io/chrome-for-testing/#stable/). Asegúrate de agregar la ruta del controlador al `PATH` de tu sistema para que Robot Framework pueda acceder a él.

## Estructura del Proyecto

La estructura del proyecto es la siguiente:

- **Tests/wordcounter.robot**: Archivo principal que contiene los casos de prueba para validar el conteo de palabras, caracteres y la densidad de palabras clave.
- **Resources/keywords.robot**: Archivo de palabras clave reutilizables y centralización de variables como selectores XPath y datos de prueba.
- **Results**: Carpeta que se generará automáticamente al ejecutar las pruebas, conteniendo los archivos `report.html`, `log.html`, `output.xml` y las capturas de pantalla.

### Archivos clave

- **Tests/wordcounter.robot**: Contiene los casos de prueba que validan:
  - El conteo de palabras.
  - El conteo de caracteres.
  - La densidad de las 3 palabras más repetidas en el texto.
  
- **Resources/keywords.robot**: Aquí se encuentran las palabras clave reutilizables y las variables centralizadas, como los selectores XPath y los datos de prueba.

- **output/**: Esta carpeta se genera automáticamente al ejecutar las pruebas y contiene los archivos:
  - `report.html`: Resumen de la ejecución de las pruebas.
  - `log.html`: Detalles de la ejecución de cada paso de las pruebas.
  - `output.xml`: Registro de la ejecución en formato XML.
  - Capturas de pantalla: Se generan capturas durante las pruebas para documentar cualquier fallo.

## Ejecución de las Pruebas

Sigue estos pasos para ejecutar las pruebas:

1. **Clona el repositorio**:
    ```bash
    git clone https://github.com/melizza-cely/wordcounter.git
    cd wordcounter
    ```

2. **Ejecuta las pruebas**:
    Para ejecutar las pruebas automatizadas, usa el siguiente comando:
    ```bash
    robot -d results Tests/wordcounter.robot
    ```

4. **Revisa los resultados**:
    Después de la ejecución, los resultados estarán disponibles en los siguientes archivos dentro de la carpeta `Results`:
    - `report.html`: Resumen de la ejecución de las pruebas.
    - `log.html`: Detalles de cada paso de las pruebas.
    - `output.xml`: Registro en formato XML.
    - Capturas de pantalla: Si alguna prueba falla, se generarán automáticamente capturas de pantalla.

¡Listo! Ahora puedes ver cómo se ejecutaron las pruebas y los resultados en el reporte generado.