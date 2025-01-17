-- 1
-- What are the column names?
SELECT * FROM users ;
 
-- 2
-- Find the email addresses and birthdays of users whose 
-- birthday is between 1980-01-01 and 1989-12-31.
SELECT email, birthday from users where birthday between '1980-01-01' AND '1989-12-31'  ;
   
-- 3
-- Find the emails and creation date of users 
-- whose created_at date matches this condition.
select email, created_at from users WHERE created_at < '2017-05-01' ;

-- 4
-- Find the emails of the users who received the �bears� test.
SELECT email FROM users where test = 'bears'  ;

-- 5
-- Find all the emails of all users who 
-- received a campaign on website BBB.

SELECT email FROM users where campaign LIKE 'BBB%'  ;

-- 6
-- Find all the emails of all users who received ad copy 2 in 
-- their campaign.
SELECT email FROM users WHERE campaign like '%-2' ; 

-- 7
-- Find the emails for all users who received both a campaign and a test. 
-- These users will have non-empty entries in the 
-- campaign and test columns.
SELECT email FROM users WHERE campaign is not null and test IS NOT NULL ;
GO
-- 8
-- Challenge
-- One of the members of the marketing team had an idea of calculating
-- how old users were when they signed up.

SELECT  DATEDIFF(YEAR,  birthday, created_at) as age FROM users;



