-- Challenge Bonus queries.
-- 1. (2.5 pts)
-- Retrieve all the number of backer_counts in descending order for each `cf_id` for the "live" campaigns. 
select cf_id, backers_count
from campaign
where outcome = 'live'
group by cf_id
order by "backers_count" desc;


-- 2. (2.5 pts)
-- Using the "backers" table confirm the results in the first query.
select cf_id, count(backer_id)
from backers
group by cf_id
order by "count" desc;


-- 3. (5 pts)
-- Create a table that has the first and last name, and email address of each contact.
-- and the amount left to reach the goal for all "live" projects in descending order. 
SELECT c.first_name, c.last_name, c.email, (cm.goal - cm.pledged) as "Remaining Goal Amount"
INTO email_contacts_remaining_goal_amount
FROM contacts as c inner join campaign as cm ON c.contact_id = cm.contact_id
where cm.outcome = 'live'
order by "Remaining Goal Amount" desc;


-- Check the table
select * from email_contacts_remaining_goal_amount

-- 4. (5 pts)
-- Create a table, "email_backers_remaining_goal_amount" that contains the email address of each backer in descending order, 
-- and has the first and last name of each backer, the cf_id, company name, description, 
-- end date of the campaign, and the remaining amount of the campaign goal as "Left of Goal". 
SELECT b.email, b.first_name, b.last_name, b.cf_id, c.company_name, c.description, c.launched_date, c.end_date, (c.goal - c.pledged) as "Left of Goal"
INTO email_backers_remaining_goal_amount
FROM backers as b inner join campaign as c ON b.cf_id = c.cf_id
order by "email" desc;

-- Check the table

select * from email_backers_remaining_goal_amount
