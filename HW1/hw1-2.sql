PRAGMA foreign_keys = ON;

CREATE TABLE Albums (
    AlbumId INTEGER PRIMARY KEY,
    Title VARCHAR(255),
    Released DATE,
    ArtistId INTEGER,
    FOREIGN KEY (ArtistId) REFERENCES Artists (ArtistId)
);
