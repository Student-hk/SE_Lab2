CREATE DATABASE IF NOT EXISTS BookDB CHARACTER SET utf8 COLLATE utf8_general_ci;
USE BookDB;
DROP TABLE IF EXISTS Book;
DROP TABLE IF EXISTS Author;
CREATE TABLE Author
(
  AuthorID BIGINT AUTO_INCREMENT,
  Name VARCHAR(255) NOT NULL,
  Age INT NOT NULL,
  Country VARCHAR(255) NOT NULL,
  PRIMARY KEY(AuthorID)
)ENGINE=InnoDB   DEFAULT CHARSET=utf8;
CREATE TABLE Book
(
  ISBN VARCHAR(255),
  Title VARCHAR(255) NOT NULL,
  AuthorID BIGINT NOT NULL,
  Publisher VARCHAR(255) NOT NULL,
  PublishDate DATE NOT NULL,
  Price DOUBLE NOT NULL,
  PRIMARY KEY(ISBN)
)ENGINE=InnoDB   DEFAULT CHARSET=utf8;



show columns from Book;
select * from Book;
select * from Book,Author where Book.AuthorID=Author.AuthorID and Author.AuthorID=;
CONSTRAINT Book_Author_fk FOREIGN KEY(AuthorID) REFERENCES Author(AuthorID)

update tablename set xx=xx,xxx=xx where xxx=xxx and xxx=xxx;




