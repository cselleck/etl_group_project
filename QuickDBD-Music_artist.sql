-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/Vl5hgM
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Billboard" (
    "id" INTEGER   NOT NULL,
    "Song" VARCHAR   NOT NULL,
    "Artist" VARCHAR   NOT NULL,
    "Weeks_On_#1" INTEGER   NOT NULL,
    "Weeks_On_Chart" INTEGER   NOT NULL,
    "Peak_Rank" INTEGER   NOT NULL
);

CREATE TABLE "Top_20000" (
    "id" INTEGER   NOT NULL,
    "artist_lastfm" VARCHAR   NOT NULL,
    "listeners_lastfm" INTEGER   NOT NULL,
    "scrobbles_lastfm" INTEGER   NOT NULL
);

ALTER TABLE "Billboard" ADD CONSTRAINT "fk_Billboard_Artist" FOREIGN KEY("Artist")
REFERENCES "Top_20000" ("artist_lastfm");

