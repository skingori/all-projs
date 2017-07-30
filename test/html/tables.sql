
DROP TABLE IF EXISTS images;
CREATE TABLE images (
  ImageId int(11) NOT NULL auto_increment,
  ImageName text NOT NULL,
  ImageSize int(11) NOT NULL default '0',
  ImageType text NOT NULL,
  ImageDate text NOT NULL,
  ImageImg2 varchar(99) NOT NULL default 'temp.jpg',
  ImageImg3 varchar(99) NOT NULL default 'temp.jpg',
  ImageImg4 varchar(99) NOT NULL default 'temp.jpg',
  ImageImg5 varchar(99) NOT NULL default 'temp.jpg',
  ImageImg6 varchar(99) NOT NULL default 'temp.jpg',
  ImageDir text NOT NULL,
  ImageTipo text NOT NULL,
  ImageDescription text NOT NULL,
  ImageNumero text NOT NULL,
  ImageColonia text NOT NULL,
  ImageData blob NOT NULL,
  ImageCode text NOT NULL,
  ImagePrecio text Not Null,
  ImageM2c text Not Null,
  ImageM2t text Not Null,
  PRIMARY KEY  (ImageId)
) TYPE=MyISAM;

DROP TABLE IF EXISTS Col;
CREATE TABLE Col (
  Id int(11) NOT NULL auto_increment,
  Col text NOT NULL,
  PRIMARY KEY  (Id)
) TYPE=MyISAM;

DROP TABLE IF EXISTS Type;
CREATE TABLE Type (
  Id int(11) NOT NULL auto_increment,
  Tipo text NOT NULL,
  PRIMARY KEY  (Id)
) TYPE=MyISAM;
