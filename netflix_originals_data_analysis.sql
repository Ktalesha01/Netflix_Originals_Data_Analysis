create database sql_project;
use sql_project;

-- Whatare the average IMDb scores for each genre of Netflix Originals?
--  ● Which genres have an average IMDb score higher than 7.5?
--  ● List Netflix Original titles in descending order of their IMDb scores.
--  ● Retrieve the top 10 longest Netflix Originals by runtime.
--  ● Retrieve the titles of Netflix Originals along with their respective genres.
--  ● RankNetflix Originals based on their IMDb scores within each genre.
-- ● Which Netflix Originals have IMDb scores higher than the average IMDb score of all titles?
--  ● HowmanyNetflix Originals are there in each genre?
--  ● Which genres have more than 5 Netflix Originals with an IMDb score higher than 8?
--  ● Whatare the top 3 genres with the highest average IMDb scores, and how many Netflix Originals do they have

Select avg(n.IMDBScore), g.genre from netflix as n inner join genre as g on n.GenreID = g.genreId group by g.genre; 

Select avg(n.IMDBScore), g.genre from netflix as n inner join genre as g on n.GenreID = g.genreId group by g.genre having avg(n.IMDBScore)>7.5; 

select Title, IMDBScore from netflix order by IMDBScore desc;

select * from netflix order by runtime desc limit 10;

select n.Title, g.genre from netflix as n inner join genre as g on n.GenreID = g.genreId ;

select n.Title , g.genre, n.IMDBScore, rank() over(partition by g.genre order by n.IMDBScore desc) from netflix as n inner join genre as g on n.GenreID = g.genreId; 

select Title from netflix where IMDBScore > (select avg(IMDBScore) from netflix);

select count(n.Title), g.genre from netflix as n inner join genre as g on n.GenreID = g.genreId group by genre; 

select g.genre, count(n.Title) from netflix as n inner join genre as g on n.GenreID = g.genreId where n.IMDBScore >8 group by g.genre having count(n.Title)>5 ;

select g.genre,avg(n.IMDBScore), count(n.Title) from netflix as n inner join genre as g on n.GenreID = g.genreId group by g.genre order by avg(n.IMDBScore) desc limit 3; 
