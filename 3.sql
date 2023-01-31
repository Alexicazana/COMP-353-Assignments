-- Question 3:
-- a) Finding the male movie stars in Titanic
SELECT MovieStar.* 
FROM MovieStar, StarsIn, Movie
WHERE
    gender = 'M' AND
    name = starName AND
    movieTitle = 'Titanic';

-- b) Finding which stars appeared in movies produced by MGM in 1995
SELECT MovieStar.* 
FROM MovieStar, StarsIn, Movie
WHERE
    name = starName AND
    movieTitle = title AND
    studioName = 'MGM' AND
    movieYear = 1996;

-- c) Finding the president of MGM studios
SELECT MovieExec.name 
FROM Studio, MovieExec
WHERE
    Studio.name = 'MGM' AND
    presC# = cert#;

-- d) Finding which movies are longer than Gone With The Wind

SELECT M1.title
FROM Movie AS M1, Movie AS M2
WHERE M2.title = 'Gone With the Wind' AND
M1.length > M2.length;
 