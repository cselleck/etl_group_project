drop table top20000

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
    "scrobbles_lastfm" INTEGER   NOT NULL,
	CONSTRAINT "pk_top20000" PRIMARY KEY (
        "artist_lastfm"
		)
);
