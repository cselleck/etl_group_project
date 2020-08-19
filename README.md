my bio at https://cselleck.github.io/
# etl_group_project
Please see project details / overview in the README.pdf file.

Visit the Tableau analysis at https://public.tableau.com/profile/clay.selleck#!/vizhome/Music_15925357984040/Dashboard1

# etl_group_project
Week 13 group project

Extract artist.csv Transform - Top_20000.csv

Load into Table
top
The tables were created in postgreSQL and then loaded.

This project was completed by Clay, Mac and Don

As part of the initial data transformation we noticed that some artists were included in the file more than once based upon the artist
have more than one country in the original country_mb column. We excluded the duplicates and eliminated non-useful columns by creating
a pandas dataframe and then converting to a .csv file that was then was uploaded/pushed as top_20000.csv into our github repository.

The database schema was then defined using quickdatabasediagrams.com with that code exported to postgresSql "QuickDBD-Music_artist.sql".
The schema shows in the "QuickDBD-Music_artist.png" image file.

The project delivers a database with data about music artist and the number of listeners and scrobbles they currently have as well as data on the

We used 2 different datasources, both from Kaggle. The Billboard Top 100 data came from https://www.kaggle.com/saberianz/billboard-charts
and the "listener and scobble" data came from https://www.kaggle.com/pieca111/music-artists-popularity.

The download of the music artists database incuded data on all artists that have at least one listener or scrobble (streaming event) and
contained well over 1 million artists. Since this file was too large to load into our github repository we created code in the
combined_code jupyter notebook and limited the data to the Top 20000 artists sorted by # of listeners. You can view the original data set
here: https://drive.google.com/open?id=1ouK0pTZxhyrcRDj_yxiKvQ2ZPnA5uwcZ.

DataSource:
https://www.kaggle.com/pieca
/music-artists-popularity.

Pandas dataframe > .csv
file
mbid id id
artist_mb removed - same as artist_lastfm artist_lastfm
artist_lastfm artist_lastfm listners_lastfm
country_mb removed scrobbles_lastfm
country_lastfm removed
tags_mb removed
tags_lastfm removed
listeners_lastfm listners_lastfm
scrobbles_lastfm scrobbles_lastfm
ambiguous_artist removed

of records = 1,466,083 records = 20,000 records = 20,
Extract: Billboard.csv

Load into Table
top
https://www.kaggle.com/saberian
z/billboard-charts
id id
Song Song
Artist Artist
Weeks On #1 Weeks On #
Weeks On Chart Weeks On Chart
Peak Rank Peak Rank

of records = 1951 # of records = 1951
Below is the resulting screenshots of the database tables

top
billboard
