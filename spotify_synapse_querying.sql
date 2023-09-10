-- Count the number of tracks in the dataset
SELECT COUNT(trackname) AS tracks_count FROM tracks;

-- Calculate the average duration of tracks
SELECT ROUND(AVG(Duration), 2) AS avg_duration
FROM tracks;

-- Find the top 10 tracks with the highest Popularity
SELECT TOP 10 trackname, artists
FROM tracks
ORDER BY popularity DESC;

-- Calculate the average energy and danceability for tracks in each album:
SELECT t.artists, t.album, ROUND(AVG(f.energy),2) AS Avereage_Energy, ROUND(AVG(f.danceability),2) AS Average_Danceability
FROM tracks AS t
INNER JOIN features AS f ON f.trackID = t.trackID
GROUP BY t.album, t.artists;

-- Identify the track with the longest duration in each album:
SELECT artists, album, MAX(duration) AS max_duration 
FROM Tracks
GROUP BY album, artists
ORDER BY max_duration DESC;

-- Calculate the total number of tracks released per year
SELECT YEAR(ReleaseDate) AS yr, COUNT(TrackName) AS track_count
FROM tracks
GROUP BY YEAR(ReleaseDate)
ORDER BY yr DESC;

--Find the top 5 albums with the highest number of tracks.
SELECT TOP 5 artists, album, COUNT(trackname) AS total_tracks
FROM tracks
GROUP BY album, artists
ORDER BY total_tracks DESC;

-- Calculate the average Popularity for each artist and list them in descending order.
SELECT artists, AVG(popularity) AS Avg_popularity
FROM tracks
GROUP BY artists 
ORDER BY AVG(popularity) DESC;

-- Retrieve the top 10 tracks with the highest energy levels.
SELECT TOP 10 t.trackname, t.artists, MAX(f.energy) AS max_energy 
FROM tracks AS t
INNER JOIN features AS f ON f.trackID = t.trackID
GROUP BY t.trackname, t.artists
ORDER BY MAX(f.energy) DESC;

-- Retrieve tracks with danceability and energy scores both above 0.8.
SELECT t.trackname AS TrackName, f.danceability, f.energy
FROM tracks AS t
INNER JOIN features AS f
ON t.trackID = f.trackID
GROUP BY t.trackname, f.danceability, f.energy
HAVING f.danceability > 0.8 AND f.energy > 0.8

-- List artists with at least two tracks having a PopularityIndex above 90
SELECT artists
FROM tracks
WHERE popularity > 90
GROUP BY artists
HAVING COUNT(*) >= 2;

SELECT TOP 10 * FROM tracks where artists = 'Dua Lipa' ORDER BY popularity DESC;
