CREATE TABLE IF NOT EXISTS vinos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL UNIQUE,
    tipo TEXT CHECK (tipo IN ('Tinto', 'Blanco', 'Rosado', 'Espumoso', 'Dulce', 'Tempranillo')) NOT NULL,
    anio INTEGER CHECK (anio BETWEEN 1900 AND 2100),
    region TEXT,
    bodega TEXT,
    graduacion REAL CHECK (graduacion BETWEEN 0 AND 100),
    stock INTEGER DEFAULT 0 CHECK (stock >= 0),
    precio REAL CHECK (precio >= 0) NOT NULL,
    imagen TEXT
);

INSERT INTO vinos (nombre, tipo, anio, region, bodega, graduacion, stock, precio) VALUES
("Pago de los Capellanes Roble", "Tinto", 2023, "Ribera del Duero", "Pago de los Capellanes", 14.0, 10, 16.9),
("Pago de Carraovejas", "Tinto", 2022, "Ribera del Duero", "Bodega Pago de Carraovejas", 14.5, 8, 19.9),
("Ultreia Saint Jacques", "Tinto", 2022, "Bierzo", "Raúl Pérez Viticultor", 13.5, 12, 22),
("La Montesa", "Tinto", 2020, "Rioja", "Bodegas Palacios Remondo", 14.0, 15, 12.5),
("Valtravieso Finca Santa María", "Tinto", 2023, "Ribera del Duero", "Bodegas y Viñedos Valtravieso", 14.0, 9, 18.5),
("Contino Reserva", "Tinto", 2020, "Rioja", "Viñedos del Contino", 14.0, 7, 10.6),
("Marqués de Cáceres Gran Reserva", "Tinto", 2014, "Rioja", "Marqués de Cáceres", 14.0, 5, 14.2),
("Grimalt Caballero", "Tinto", 2018, "Vino de la Tierra de Mallorca", "4Kilos Vinícola", 13.5, 6, 12),
("Castillo de Monjardín Chardonnay", "Blanco", 2025, "Navarra", "Castillo de Monjardín", 13.0, 20, 14.2),
("Protos", "Tempranillo", 2022, "Ribera del Duero", "Bodegas Protos", 14.0, 3, 16.0);
CREATE TABLE IF NOT EXISTS catas (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nota INTEGER NOT NULL,
    comentario TEXT,
    id_vino INTEGER NOT NULL,
    FOREIGN KEY (id_vino) REFERENCES vinos(id)
);

INSERT INTO catas (nota, comentario, id_vino) VALUES
(8, "Un vino muy agradable, con un buen equilibrio entre acidez y sabor, perfecto para una cena ligera.", 1),
(8, "De cuerpo medio, con un toque afrutado que lo hace muy versátil, ideal para tapas y quesos suaves.", 1),
(7, "Bastante bueno, pero le falta algo de profundidad en el sabor para hacerlo memorable.", 2),
(7, "El sabor es suave, aunque algo plano. No es un mal vino, pero no destaca entre otros de la misma gama.", 2),
(9, "Una experiencia excelente, de sabor intenso y una textura suave. Perfecto para una ocasión especial.", 3),
(9, "Este vino tiene una complejidad en su aroma y sabor que te invita a seguir descubriéndolo con cada sorbo.", 3),
(6, "Un vino aceptable, aunque la falta de complejidad lo hace menos interesante.", 4),
(6, "El sabor es un poco monótono y se pierde rápido en el paladar. No es malo, pero podría ser más redondo.", 4),
(8, "Muy buen vino, con notas frutales que lo hacen fresco y agradable, ideal para disfrutar en una tarde soleada.", 5),
(8, "Tiene una excelente relación calidad-precio. Su sabor afrutado y su acidez lo hacen muy refrescante.", 5),
(7, "Un vino correcto, con un toque dulce que puede ser un poco empalagoso para algunos.", 6),
(7, "Es un vino agradable, aunque no tiene el carácter que otros vinos de esta variedad pueden ofrecer.", 6),
(9, "Excelente elección, con un bouquet complejo y un final largo que deja una excelente impresión.", 7),
(9, "Un vino sublime, bien equilibrado con notas especiadas y frutales que hacen que cada trago sea una delicia.", 7),
(6, "Regular, con algunos sabores que no terminan de combinar bien, pero aún así bebible.", 8),
(6, "Este vino tiene un retrogusto algo amargo que no me terminó de convencer, pero es pasable para una comida informal.", 8),
(8, "Muy bueno, con un toque amaderado que le da una gran personalidad. Perfecto para acompañar carnes rojas.", 9),
(8, "Un vino robusto y redondo, con notas de vainilla y roble que aportan una gran riqueza al sabor.", 9);
