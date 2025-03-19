# API Bodega

El equipo de backend ha comenzado a implementar la API para una bodega que conserva diferentes vinos y da información sobre ellos. La API se ha implementado utilizando `Nodejs` y `Express` y estará desplegada en un servidor `VPS` de la empresa.

En esta primera versión de la API se han implementado las siguientes rutas:

- `GET /vinos`: Devuelve un listado con todos los vinos de la bodega y su información.
- `GET /vinos/:id`: Devuelve la información de un vino en concreto.
- `GET /cata`: Devuelve un listado con las catas de los vinos de la bodega y sus puntuaciones.
- `GET /cata/:id`: Devuelve la información de una cata en concreto.

Tu objetivo será construir varios archivos `html` que hagan uso de esta API para mostrar los datos en el navegador. Para ello, deberás implementar las siguientes páginas:

## index.html

La pagina principal debe mostrar los vinos de la bodega y con los datos `nombre`, `año`, `tipo` y `precio`.

*Extra*: La base de datos no tiene aun imagenes, mientras las hacen, utiliza *placeholders* para mostrar las imagenes de los vinos. Puedes utilizar [placehold](https://placehold.co/) para generar imagenes de diferentes tamaños.

*Extra extra*: En lugar de usar placeholder.co, genera 10 imágenes de vinos usando `p5.js`. Guardalas y usalas durante el examen. Aporta el código de `p5.js` en un archivo `sketch.js`.

*Extra extra extra*: Crea una tarjeta para cada vino con CSS.

## vino.html

Esta página debe mostrar la información de un vino en concreto y sus catas. Deberá mostrar los datos `nombre`, `año`, `tipo`, `precio`, `stock` e `imagen` del vino.

El endpoint `GET /vinos/:id` devuelve la información de un vino en concreto, pero no devuelve las catas asociadas a ese vino. Para obtener las catas de un vino en concreto, deberás hacer una petición al endpoint `GET /cata` y buscar las catas que coincidan con el `id` del vino.

Puedes reutilizar las imagenes que generaste con p5 en la página `index.html`.

## info.html

Esta página será para el administrador de la bodega y mostrará una tabla con todos los vinos de la bodega y su información asociada. Además, mostrará un listado con las catas de los vinos de la bodega y sus puntuaciones.

**Extra**: Colorea la tabla según el stock de los vinos.

**Extra**: Utiliza [chart.js](https://www.chartjs.org/) para mostrar un gráfico con el stock de los vinos de la bodega en un `donut chart` y otro de las puntuaciones de las catas en un `bar chart`.