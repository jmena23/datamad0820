SELECT authors.au_id AS "AUTHOR ID", authors.au_lname AS "LAST NAME", authors.au_fname AS "FIRST NAME", titles.title AS "TITLE", publishers.pub_name AS "PUBLISHER"
FROM publications.authors
LEFT JOIN publications.titleauthor
ON authors.au_id = titleauthor.au_id
LEFT JOIN publications.titles
ON titleauthor.title_id = titles.title_id
LEFT JOIN publications.publishers
ON titles.pub_id = publishers.pub_id
WHERE titles.title IS NOT NULL;

SELECT authors.au_id AS "AUTHOR ID", authors.au_lname AS "LAST NAME", authors.au_fname AS "FIRST NAME", titles.title AS "TITLE", publishers.pub_name AS "PUBLISHER", COUNT(*) AS "TITLE COUNT"
FROM publications.authors
LEFT JOIN publications.titleauthor
ON authors.au_id = titleauthor.au_id
LEFT JOIN publications.titles
ON titleauthor.title_id = titles.title_id
LEFT JOIN publications.publishers
ON titles.pub_id = publishers.pub_id
WHERE titles.title IS NOT NULL
GROUP BY authors.au_lname, authors.au_fname, publishers.pub_name
ORDER BY COUNT(*) DESC;

SELECT authors.au_id AS "AUTHOR ID", authors.au_lname AS "LAST NAME", authors.au_fname AS "FIRST NAME", SUM(titles.ytd_sales) AS "TOTAL"
FROM publications.authors
LEFT JOIN publications.titleauthor
ON authors.au_id = titleauthor.au_id
LEFT JOIN publications.titles
ON titleauthor.title_id = titles.title_id
LEFT JOIN publications.publishers
ON titles.pub_id = publishers.pub_id
WHERE titles.title IS NOT NULL
GROUP BY authors.au_lname, authors.au_fname
ORDER BY SUM(titles.ytd_sales) DESC
LIMIT 3;

SELECT authors.au_id AS "AUTHOR ID", authors.au_lname AS "LAST NAME", authors.au_fname AS "FIRST NAME", IFNULL(SUM(titles.ytd_sales), 0) AS "TOTAL"
FROM publications.authors
LEFT JOIN publications.titleauthor
ON authors.au_id = titleauthor.au_id
LEFT JOIN publications.titles
ON titleauthor.title_id = titles.title_id
LEFT JOIN publications.publishers
ON titles.pub_id = publishers.pub_id
GROUP BY authors.au_lname, authors.au_fname
ORDER BY SUM(titles.ytd_sales) DESC;

SELECT authors.au_id AS "AUTHOR ID", authors.au_lname AS "LAST NAME", authors.au_fname AS "FIRST NAME", 
ROUND(SUM((titles.ytd_sales * titles.price) + titles.advance * (titleauthor.royaltyper / 100)), 2) AS "PROFIT"
FROM publications.authors
LEFT JOIN publications.titleauthor
ON authors.au_id = titleauthor.au_id
LEFT JOIN publications.titles
ON titleauthor.title_id = titles.title_id
WHERE titles.title IS NOT NULL AND titles.royalty IS NOT NULL
GROUP BY authors.au_lname, authors.au_fname
ORDER BY SUM((titles.ytd_sales * titles.price) + titles.advance * (titleauthor.royaltyper / 100)) DESC
LIMIT 3;