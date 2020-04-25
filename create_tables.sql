

CREATE TABLE "billboard" (
    "index" INTEGER   NOT NULL,
    "Song" VARCHAR   NOT NULL,
    "Artist" VARCHAR   NOT NULL,
    "Weeks_On_1" INTEGER   NOT NULL,
    "Weeks_On_Chart" INTEGER   NOT NULL,
    "Peak_Rank" INTEGER   NOT NULL,
	CONSTRAINT "pk_billboard" PRIMARY KEY (
        "Artist"    
		)
);

CREATE TABLE "top20000" (
    "id" INTEGER   NOT NULL,
    "artist_lastfm" VARCHAR   NOT NULL,
    "listeners_lastfm" INTEGER   NOT NULL,
    "scrobbles_lastfm" INTEGER   NOT NULL
	CONSTRAINT "pk_to20000" PRIMARY KEY (
        "artist_lastfm"
		)
);

ALTER TABLE "billboard" ADD CONSTRAINT "Artist" FOREIGN KEY("Artist")
REFERENCES "top20000" ("artist_lastfm");
