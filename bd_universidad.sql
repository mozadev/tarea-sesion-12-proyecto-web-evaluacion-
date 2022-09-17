-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-11-2021 a las 22:10:42
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_universidad`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `Coddepa` int(8) NOT NULL,
  `Nombdepa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`Coddepa`, `Nombdepa`) VALUES
(1, 'Libertad'),
(2, 'Lima'),
(3, 'Callao'),
(4, 'Ica'),
(5, 'Arequipa'),
(6, 'Lambayeque'),
(7, 'Piura'),
(8, 'Loreto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distrito`
--

CREATE TABLE `distrito` (
  `coddepa` int(8) NOT NULL,
  `codprovin` int(8) NOT NULL,
  `coddistri` int(8) NOT NULL,
  `nombdistri` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `distrito`
--

INSERT INTO `distrito` (`coddepa`, `codprovin`, `coddistri`, `nombdistri`) VALUES
(2, 1, 1, 'Cercado'),
(2, 1, 2, 'Lince'),
(2, 1, 3, 'Jesus Maria'),
(2, 1, 4, 'San Miguel'),
(2, 1, 5, 'Magdalena'),
(2, 1, 6, 'San Juan de Lurigancho'),
(2, 1, 7, 'San Juan de Miraflores'),
(2, 1, 8, 'Miraflores'),
(2, 1, 9, 'San Isidro'),
(2, 1, 10, 'Santa Anita'),
(2, 1, 11, 'El Agustino'),
(2, 1, 12, 'Puente Piedra'),
(2, 1, 13, 'Santa Rosa'),
(2, 1, 14, 'Los Olivos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE `provincia` (
  `codepa` int(8) NOT NULL,
  `codprovin` int(8) NOT NULL,
  `nombprovin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `provincia`
--

INSERT INTO `provincia` (`codepa`, `codprovin`, `nombprovin`) VALUES
(2, 1, 'Lima'),
(2, 2, 'Huaral'),
(2, 3, 'Huaura'),
(2, 4, 'Bellavista'),
(2, 5, 'Callao'),
(2, 6, 'Carmen Legua'),
(2, 7, 'La perla'),
(2, 8, 'La punta'),
(2, 9, 'Ventanilla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE `tipousuario` (
  `codtipo` int(8) NOT NULL,
  `nombreTipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipousuario`
--

INSERT INTO `tipousuario` (`codtipo`, `nombreTipo`) VALUES
(1, 'ADMINISTRADOR SISTEMA'),
(2, 'COORDINADOR CURSO'),
(3, 'DOCENTE CURSO'),
(4, 'ESTUDIANTE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `codusu` int(8) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `codtipousuario` int(8) DEFAULT NULL,
  `usuario` varchar(50) NOT NULL,
  `clave` varchar(50) NOT NULL,
  `Estado` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `coddepar` int(8) DEFAULT NULL,
  `codprovi` int(8) DEFAULT NULL,
  `coddistri` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`codusu`, `nombre`, `apellido`, `codtipousuario`, `usuario`, `clave`, `Estado`, `direccion`, `coddepar`, `codprovi`, `coddistri`) VALUES
(1, 'Ivan', 'Petrlik', 1, 'ivan', '131206*', 'Habilitado', 'Jr Moquegua 123', 2, 1, 1),
(2, 'Larissa', 'Petrlik', 2, 'larissa', '1234*', 'Habilitado', 'Av. cuba 234', 2, 1, 3),
(3, 'Alfredo', 'Maza', 3, 'alfredo', '11111*', 'Habilitado', 'Av.Mas Arroz 124', 2, 1, 10),
(4, 'Ana', 'Quispe', 4, 'ana', '7775**', 'Habilitado', 'Av. Rusia 345', 2, 1, 7),
(5, 'Alvaro', 'Barco', 1, 'alvaro', '666**', 'Habilitado', 'av. Brasil 567', 2, 1, 14),
(6, 'Marzio', 'Gutierrez', 2, 'marzio', '444**', 'Habilitado', 'av.olivos 567', 2, 1, 11),
(7, 'Elias', 'Hernandez', 3, 'elias', '5555**', 'Habilitado', 'av.peru 5677', 2, 1, 7),
(8, 'Sofia', 'Lorenz', 4, 'sofia', '4444**', 'Habilitado', 'av.renovacion 567', 2, 1, 12),
(9, 'Pepe', 'Luna', 1, 'pepe90', '12345*', 'Habilitado', 'Av. Agustino 144', 2, 1, 11);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`Coddepa`);

--
-- Indices de la tabla `distrito`
--
ALTER TABLE `distrito`
  ADD PRIMARY KEY (`coddepa`,`codprovin`,`coddistri`);

--
-- Indices de la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`codepa`,`codprovin`);

--
-- Indices de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`codtipo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`codusu`),
  ADD KEY `fk_TipoUsuario` (`codtipousuario`),
  ADD KEY `fk_Distrito` (`coddepar`,`codprovi`,`coddistri`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `codusu` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `distrito`
--
ALTER TABLE `distrito`
  ADD CONSTRAINT `fk_Provincia` FOREIGN KEY (`coddepa`,`codprovin`) REFERENCES `provincia` (`codepa`, `codprovin`);

--
-- Filtros para la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD CONSTRAINT `fk_Departamento` FOREIGN KEY (`codepa`) REFERENCES `departamento` (`Coddepa`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_Distrito` FOREIGN KEY (`coddepar`,`codprovi`,`coddistri`) REFERENCES `distrito` (`coddepa`, `codprovin`, `coddistri`),
  ADD CONSTRAINT `fk_TipoUsuario` FOREIGN KEY (`codtipousuario`) REFERENCES `tipousuario` (`codtipo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
