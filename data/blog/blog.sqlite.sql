CREATE TABLE `admin` (
  `idadmin` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `nome` TEXT NOT NULL,
  `email` TEXT NOT NULL,
  `senha` TEXT NOT NULL
);

INSERT INTO `admin` (idpessoa, nome, email, senha) VALUES (NULL, 'Admin 01', 'admin01@email.com', 'admin01');
INSERT INTO `admin` (idpessoa, nome, email, senha) VALUES (NULL, 'Admin 02', 'admin02@email.com', 'admin02');

CREATE TABLE `categoria` (
  `idcategoria` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `categoria` TEXT NOT NULL
);

INSERT INTO `categoria` (`idcategoria`, `categoria`) VALUES (NULL, 'Esportes');
INSERT INTO `categoria` (`idcategoria`, `categoria`) VALUES (NULL, 'Politica');
INSERT INTO `categoria` (`idcategoria`, `categoria`) VALUES (NULL, 'Games');

CREATE TABLE `post` (
  `idpost` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `idcategoria` INTEGER NOT NULL,
  `idadmin` INTEGER NOT NULL,
  `titulo` TEXT NOT NULL,
  `texto` TEXT NOT NULL
);

INSERT INTO `post` (idpost, idcategoria, idpessoa, titulo, texto) VALUES (NULL, 1, 1, 'Jogo de Futebol', 'Neste ultimo final de semana, os times jogaram ...');
INSERT INTO `post` (idpost, idcategoria, idpessoa, titulo, texto) VALUES (NULL, 1, 2, 'Mundial de Voley', 'O Brasil venceu a seleção da Servia e Montenegro');
INSERT INTO `post` (idpost, idcategoria, idpessoa, titulo, texto) VALUES (NULL, 3, 1, 'Lançamento de Call Of Dutty XXI', 'Nesta semana será lançado o novo jogo da série Call Of Dutty');
