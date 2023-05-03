-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-05-2023 a las 16:54:57
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pasos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `cod_cargo` int(11) NOT NULL,
  `nombre_cargo` varchar(25) DEFAULT NULL,
  `salario` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`cod_cargo`, `nombre_cargo`, `salario`) VALUES
(1, 'administrador', 2200000),
(2, 'vendedor', 1800000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `cod_clientes` int(11) NOT NULL,
  `nombre1` varchar(25) DEFAULT NULL,
  `nombre2` varchar(25) DEFAULT NULL,
  `apellido1` varchar(25) DEFAULT NULL,
  `apellido2` varchar(25) DEFAULT NULL,
  `tipo_documento` enum('cc','ce','nit','rut') DEFAULT NULL,
  `no_docuemto` varchar(25) DEFAULT NULL,
  `sexo` enum('femenino','masculino') DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `telefono` varchar(25) DEFAULT NULL,
  `estado_civil` enum('soltero','casado','divorciado','union libre','viudo') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`cod_clientes`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `tipo_documento`, `no_docuemto`, `sexo`, `direccion`, `telefono`, `estado_civil`) VALUES
(1, 'jeronimo', NULL, 'burgos', 'diez', 'cc', '10000459', 'masculino', 'cra 9b# 58-90', '9015872', 'soltero'),
(2, 'jeronimo', NULL, 'burgos', 'diez', 'cc', '10000459', 'masculino', 'cra 9b# 58-90', '9015872', 'soltero'),
(3, 'jeronimo', NULL, 'burgos', 'diez', 'cc', '10000459', '', 'cra 9b# 58-90', '9015872', 'soltero'),
(4, 'jeronimo', NULL, 'burgos', 'diez', 'cc', '10000459', '', 'cra 9b# 58-90', '9015872', 'soltero'),
(5, 'jeronimo', NULL, 'burgos', 'diez', 'cc', '10000459', '', 'cra 9b# 58-90', '9015872', 'soltero'),
(6, 'Estefania', NULL, 'Villegas', 'Sierra', 'ce', '1023581203', 'femenino', 'trv 110# 81-40', '6047599', 'casado'),
(7, 'Guillermo', 'Mauricio', 'Fernandez', 'vallejo', 'cc', '125692614', 'masculino', 'CALLE 75 #23SUR-40', '7057522', 'union libre'),
(8, 'Eliana', 'Marcela', 'Ramirez', 'Guerrero', 'nit', '1222333445', 'femenino', 'Calle 181 #2-45', ' 8019053', 'viudo'),
(9, 'Jose', '	Gregorio', 'Carmona', 'Guerra', 'cc', '1091562345', 'masculino', 'Cra 3 A # 5-89', '3134409180', 'casado'),
(10, 'Marcela', '	Eliana', 'De santis', 'Rodríguez', 'cc', '1091562348', '', 'calle 9b # 4-20', '3108156310', 'union libre'),
(11, 'Daniela', NULL, '		Franco', 'Marulanda', 'cc', '1091562312', '', 'Carrera 56A No. 51 - 81', '3212598228', 'union libre'),
(12, 'Rafael	', 'Fabian', 'Cortes', 'Palacio', 'cc', '1091562336', 'masculino', 'Calle 10 No. 9 - 78 Centro', '7586412', 'soltero'),
(13, 'Camilo', 'Andres', '	Berrios', 'Bermudez', 'ce', '1091562314', 'masculino', 'Calle 24D #5676', '4341235', 'casado'),
(14, 'Francisco', 'David', 'Arias', '	Toledo', 'cc', '1091562349', 'masculino', 'calle 5b #78c 05', '6018954', 'casado'),
(15, 'Antonio', 'Giovanny', 'Merizalde', 'Arango', 'cc', '1091562103', 'masculino', 'Calle 23 #54-9', '3165846257', 'viudo'),
(16, 'Karen', 'Rocio', '	Restrepo', 'Acevedo', 'cc', '	1091562425', 'femenino', 'cra 7a # 34-89sur', '	8017936', ''),
(17, 'David', '	Santiago', '	Lemus', '	Cock', 'nit', '	1112239564', '', '	cr 5a #20-34 sur', '	3412658975', ''),
(18, 'Javier', '	Mauricio', '	Santana	', 'Casadiegos', 'ce', '1233669874', 'masculino', 'CALLE 27 #58-63', '315648301', ''),
(19, 'Virginia', NULL, '		Saldarriaga', '	Salamanca', 'cc', '	1556998745', 'femenino', '	cll 36 3 1-81 este', '	4518992', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `cod_empleado` int(11) NOT NULL,
  `nombre1` varchar(25) NOT NULL,
  `nombre2` varchar(25) DEFAULT NULL,
  `apellido1` varchar(25) NOT NULL,
  `apellido2` varchar(25) DEFAULT NULL,
  `tipo_docuemto` enum('cc','ce','nit','rut') NOT NULL,
  `no_documento` varchar(25) NOT NULL,
  `sexo` enum('F','M') NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` varchar(25) NOT NULL,
  `estado_civil` enum('soltero','casado','divorsiado','union libre','viudo') NOT NULL,
  `cargo_cod` int(11) NOT NULL,
  `nivel_estudios` enum('primaria','bachillerato','tecnico','tecnologo','profesional','otros') NOT NULL,
  `eps` enum('sanitas','sura','capital salud','nueva eps','compensar','famisanar','aliansalud') NOT NULL,
  `pensiones` enum('colfodos','proteccion','porvenir','skandia') NOT NULL,
  `censantias` enum('fna','porvenir','colfondos','proteccion') NOT NULL,
  `banco` enum('bbva','davivienda','bancolombia','caja social','popular','las villas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`cod_empleado`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `tipo_docuemto`, `no_documento`, `sexo`, `direccion`, `telefono`, `estado_civil`, `cargo_cod`, `nivel_estudios`, `eps`, `pensiones`, `censantias`, `banco`) VALUES
(1, 'Gonzalo', NULL, 'Betancur', 'Arroyave', 'cc', '80161094', 'M', 'cra 78c # 5c 48', '3145778421', 'soltero', 1, '', 'sanitas', '', 'fna', 'bbva');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_cabeza`
--

CREATE TABLE `factura_cabeza` (
  `cod_factura` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `clientes_cod` int(11) NOT NULL,
  `empleados_cod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `factura_cabeza`
--

INSERT INTO `factura_cabeza` (`cod_factura`, `fecha`, `clientes_cod`, `empleados_cod`) VALUES
(4, '2023-04-05', 7, 1),
(5, '2023-04-26', 10, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_detalle`
--

CREATE TABLE `factura_detalle` (
  `COD_FACTDET` int(11) NOT NULL,
  `FACTCAB_COD` int(11) DEFAULT NULL,
  `producto_COD` int(11) NOT NULL,
  `CANTIDAD_COD` int(11) NOT NULL,
  `VALOR_VENTA` double NOT NULL,
  `SUBTOTAL` double NOT NULL,
  `IVA` double NOT NULL,
  `DESCUENTO` double NOT NULL,
  `NETO` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `factura_detalle`
--

INSERT INTO `factura_detalle` (`COD_FACTDET`, `FACTCAB_COD`, `producto_COD`, `CANTIDAD_COD`, `VALOR_VENTA`, `SUBTOTAL`, `IVA`, `DESCUENTO`, `NETO`) VALUES
(1, 4, 13, 5, 130000, 650000, 123500, 32500, 741000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nomina`
--

CREATE TABLE `nomina` (
  `cod_nomina` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `empleados_cod` int(11) NOT NULL,
  `salario` double NOT NULL,
  `dias_trabajados` int(11) NOT NULL DEFAULT 1,
  `salario_base` double DEFAULT NULL,
  `auxilio_trasporte` double DEFAULT NULL,
  `comisiones_otros` double DEFAULT NULL,
  `NoHoras` int(11) NOT NULL,
  `tipohoras` enum('diurna','nocturna','festiva','recargo') NOT NULL,
  `valorhoras` double NOT NULL,
  `total_devengado` double DEFAULT NULL,
  `salud` double DEFAULT NULL,
  `pension` double DEFAULT NULL,
  `prestamos_otros` double DEFAULT NULL,
  `total_deducido` double DEFAULT NULL,
  `neto_pagar` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `nomina`
--

INSERT INTO `nomina` (`cod_nomina`, `fecha`, `empleados_cod`, `salario`, `dias_trabajados`, `salario_base`, `auxilio_trasporte`, `comisiones_otros`, `NoHoras`, `tipohoras`, `valorhoras`, `total_devengado`, `salud`, `pension`, `prestamos_otros`, `total_deducido`, `neto_pagar`) VALUES
(1, '2023-05-03', 1, 2200000, 25, 1833333.3333333333, 117171.66666665, 150000, 0, 'diurna', 0, 2100504.9999999832, 79333.33333333333, 79333.33333333333, 0, 158666.66666666666, 1941838.3333333165);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_cabeza`
--

CREATE TABLE `pedido_cabeza` (
  `COD_PEDIDO` int(11) NOT NULL,
  `FECHA` date DEFAULT NULL,
  `proveedores_COD` int(11) NOT NULL,
  `EMPLEADOS_COD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedido_cabeza`
--

INSERT INTO `pedido_cabeza` (`COD_PEDIDO`, `FECHA`, `proveedores_COD`, `EMPLEADOS_COD`) VALUES
(1, '2023-05-03', 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_detalle`
--

CREATE TABLE `pedido_detalle` (
  `COD_PEDDET` int(11) NOT NULL,
  `PEDIDO_COD` int(11) NOT NULL,
  `FORMA_PAGO` varchar(25) NOT NULL,
  `PRODUCTO_COD` int(11) NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `VALOR` double NOT NULL,
  `SUBTOTAL` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedido_detalle`
--

INSERT INTO `pedido_detalle` (`COD_PEDDET`, `PEDIDO_COD`, `FORMA_PAGO`, `PRODUCTO_COD`, `CANTIDAD`, `VALOR`, `SUBTOTAL`) VALUES
(1, 1, 'EFECTIVO', 14, 5, 89000, 445000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `cod_producto` int(11) NOT NULL,
  `tipo_producto` enum('DAMA','CABALLERO','INFANTIL') NOT NULL,
  `tipo_linea` enum('FORMAL','INFORMAL') NOT NULL,
  `referencia` varchar(50) NOT NULL,
  `talla` enum('28','30','32','34','36','38','40','42') NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `valor_compra` double NOT NULL,
  `valor_venta` double NOT NULL,
  `proveedor_cod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`cod_producto`, `tipo_producto`, `tipo_linea`, `referencia`, `talla`, `descripcion`, `cantidad`, `valor_compra`, `valor_venta`, `proveedor_cod`) VALUES
(1, 'DAMA', 'FORMAL', 'BALETAS2896', '38', 'BALETASAZUL', 50, 80000, 129000, 1),
(2, 'DAMA', 'FORMAL', 'BALETASZ132', '36', 'BALETASCONTRABILLACONCOMBINACIONDECUEROS', 50, 155120, 193900, 3),
(3, 'DAMA', 'FORMAL', 'BALETAS355Q', '36', 'BALETASSYBILLAAMYTEX', 50, 29990, 49990, 2),
(4, 'DAMA', 'FORMAL', 'BALETAS3664', '34', 'BALETASSYBILLAANTOCH', 50, 29990, 49900, 2),
(5, '', 'FORMAL', 'M-881458549', '36', 'APOLOGYANAUTI', 25, 59900, 89990, 5),
(6, '', 'FORMAL', 'ZF-4055658', '38', 'CLARKSHAMILTONFREE', 30, 129000, 239000, 1),
(7, '', 'FORMAL', 'ZF-4070872', '', 'CALLITSPRINGJOCKEY001', 30, 76500, 189000, 7),
(8, '', 'FORMAL', 'ZF-4931207', '', 'CALLITSRPINGDARTNALL220', 30, 94500, 189900, 6),
(9, '', 'INFORMAL', 'TN-4968479', '36', 'NIKERUNNINGQUEST2', 25, 240000, 309000, 3),
(10, 'INFANTIL', 'INFORMAL', 'T-4917289', '', 'ORIGINALSSTANSMITH', 20, 149000, 229000, 1),
(11, 'INFANTIL', 'INFORMAL', 'T-4917300', '28', 'ADIDASMODAGRANDCOURT', 15, 98900, 160000, 3),
(12, 'INFANTIL', 'INFORMAL', 'T-5052406', '', 'SKECHERSNIÑAMICROSPEC', 15, 93500, 130000, 7),
(13, 'INFANTIL', 'FORMAL', 'T-5076957', '28', 'FILARAYTRACER', 20, 91000, 130000, 4),
(14, 'INFANTIL', 'INFORMAL', 'T-3939054', '30', 'ADIDASGRANDCOURT', 20, 89000, 129900, 4),
(15, 'INFANTIL', 'INFORMAL', 'T-2945671', '', 'ORIGINALSSTANSMITH', 20, 85000, 169900, 3),
(16, 'INFANTIL', 'INFORMAL', 'T-881855933', '', 'DIADORABOYVINTA', 20, 64000, 89900, 2),
(17, 'INFANTIL', 'INFORMAL', 'T-4955930', '', 'SKECHERSGORUNFAST-THARO', 20, 95000, 129900, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `cod_proveedores` int(11) NOT NULL,
  `razon_social` varchar(50) DEFAULT NULL,
  `NIT` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `Barrio` varchar(25) NOT NULL,
  `Ciudad` varchar(25) NOT NULL,
  `telefono` varchar(25) DEFAULT NULL,
  `e_mail` varchar(50) DEFAULT NULL,
  `asesor_comercial` varchar(50) DEFAULT NULL,
  `telefono_asesor` varchar(25) DEFAULT NULL,
  `e_mail_asesor` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`cod_proveedores`, `razon_social`, `NIT`, `direccion`, `Barrio`, `Ciudad`, `telefono`, `e_mail`, `asesor_comercial`, `telefono_asesor`, `e_mail_asesor`) VALUES
(1, 'CALZADO CAPRINO', '860033182-1', 'CRA 41B NO.9-65', '', 'BOGOTA', '3701266', 'servicioproveedor@calzadocaprino.co', 'RODRIGO TORRES', '319423218', 'RODRIGOTORRES@CALZADOCAPRINO.CO'),
(2, 'MANUFACTURAS EN CUERO V&C LTDA', '830068579-6', 'CRA 29B No.18A-61 SUR', 'RESTREPO', 'BOGOTA', '7133907', 'clientes@vc.co', 'SANDRA VALBUENA', '314763218', 'SANDRA.VALBUNEA@GMAIL.COM'),
(3, 'VALORES SMITH S.A.', '8300965108-4', 'CRA 31A No.10-78', 'ZONA INDUSTRIAL', 'BUCARAMANGA', '2084765', 'atencioncliente@smith.co', 'ROCIO MORENO', '3134487965', 'carlos.moreno@vc.co.com'),
(4, 'CALZADO INCA', '9009984523-1', 'CRA 20 No.22-48', '', '', '76712474', 'serviciocliente@calinca.co', 'JUAN AMAYA', '3108156311', 'ramayacalinca@gmail.com'),
(5, 'GALILEO CALZADO', '9010662159-2', 'CRA 24 NO.54-32', 'BELEN', 'MANIZALES', '68856743', 'clientes@galileo.co', 'FREDY CARDENAS', '3124512107', 'fredy.cardenas@galileo.com'),
(6, 'FABRICA DE CALZADO ROMULO S.A.S', '8000785220-5', 'CLL 12A No.37-122', 'ACOPI', 'CALI', '24457740', 'servicioalcliente@calzadoromulo.com', 'SONIA VIVAS', '3194321290', 'soniavivas@calzadoromulo.com'),
(7, 'VIVALDI', '800186448-6', 'CLL 9B No.24-17', 'ALAMEDA', 'CALI', '25569002', 'sgc@calzadovivaldi.com', 'NANCY MENDOZA', '318 254 490', 'nancymendoza.a@hotmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`cod_cargo`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cod_clientes`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`cod_empleado`),
  ADD KEY `cargo_cod` (`cargo_cod`);

--
-- Indices de la tabla `factura_cabeza`
--
ALTER TABLE `factura_cabeza`
  ADD PRIMARY KEY (`cod_factura`),
  ADD KEY `clientes_cod` (`clientes_cod`),
  ADD KEY `empleados_cod` (`empleados_cod`);

--
-- Indices de la tabla `factura_detalle`
--
ALTER TABLE `factura_detalle`
  ADD PRIMARY KEY (`COD_FACTDET`),
  ADD KEY `FACTCAB_COD` (`FACTCAB_COD`),
  ADD KEY `producto_COD` (`producto_COD`);

--
-- Indices de la tabla `nomina`
--
ALTER TABLE `nomina`
  ADD PRIMARY KEY (`cod_nomina`),
  ADD KEY `empleados_cod` (`empleados_cod`);

--
-- Indices de la tabla `pedido_cabeza`
--
ALTER TABLE `pedido_cabeza`
  ADD PRIMARY KEY (`COD_PEDIDO`),
  ADD KEY `proveedores_COD` (`proveedores_COD`),
  ADD KEY `EMPLEADOS_COD` (`EMPLEADOS_COD`);

--
-- Indices de la tabla `pedido_detalle`
--
ALTER TABLE `pedido_detalle`
  ADD PRIMARY KEY (`COD_PEDDET`),
  ADD KEY `PROD_01` (`PRODUCTO_COD`),
  ADD KEY `PED01` (`PEDIDO_COD`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`cod_producto`),
  ADD KEY `proveedor_cod` (`proveedor_cod`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`cod_proveedores`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `cod_cargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `cod_clientes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `cod_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `factura_cabeza`
--
ALTER TABLE `factura_cabeza`
  MODIFY `cod_factura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `factura_detalle`
--
ALTER TABLE `factura_detalle`
  MODIFY `COD_FACTDET` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `nomina`
--
ALTER TABLE `nomina`
  MODIFY `cod_nomina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pedido_cabeza`
--
ALTER TABLE `pedido_cabeza`
  MODIFY `COD_PEDIDO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pedido_detalle`
--
ALTER TABLE `pedido_detalle`
  MODIFY `COD_PEDDET` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `cod_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `cod_proveedores` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `fk_empleados01` FOREIGN KEY (`cargo_cod`) REFERENCES `cargo` (`cod_cargo`);

--
-- Filtros para la tabla `factura_cabeza`
--
ALTER TABLE `factura_cabeza`
  ADD CONSTRAINT `factura_cabeza_ibfk_1` FOREIGN KEY (`clientes_cod`) REFERENCES `clientes` (`cod_clientes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `factura_cabeza_ibfk_2` FOREIGN KEY (`empleados_cod`) REFERENCES `empleados` (`cod_empleado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `factura_detalle`
--
ALTER TABLE `factura_detalle`
  ADD CONSTRAINT `factura_detalle_ibfk_1` FOREIGN KEY (`FACTCAB_COD`) REFERENCES `factura_cabeza` (`cod_factura`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `factura_detalle_ibfk_2` FOREIGN KEY (`producto_COD`) REFERENCES `producto` (`cod_producto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `nomina`
--
ALTER TABLE `nomina`
  ADD CONSTRAINT `nomina_ibfk_1` FOREIGN KEY (`empleados_cod`) REFERENCES `empleados` (`cod_empleado`);

--
-- Filtros para la tabla `pedido_cabeza`
--
ALTER TABLE `pedido_cabeza`
  ADD CONSTRAINT `pedido_cabeza_ibfk_1` FOREIGN KEY (`proveedores_COD`) REFERENCES `proveedores` (`cod_proveedores`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedido_cabeza_ibfk_2` FOREIGN KEY (`EMPLEADOS_COD`) REFERENCES `empleados` (`cod_empleado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedido_detalle`
--
ALTER TABLE `pedido_detalle`
  ADD CONSTRAINT `IBK_PEDIDO01` FOREIGN KEY (`PEDIDO_COD`) REFERENCES `pedido_cabeza` (`COD_PEDIDO`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `IBK_PEDIDO02` FOREIGN KEY (`PRODUCTO_COD`) REFERENCES `producto` (`cod_producto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `fk_producto01` FOREIGN KEY (`proveedor_cod`) REFERENCES `proveedores` (`cod_proveedores`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
