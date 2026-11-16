-- ============================================================================
-- CSE 111 Fall 2026: Project Checkpoint 2 Script
-- Project Title: AutoTrack: Autocross Management System
-- Team Members: Raul Martinez Luna, Fransisco Arreola
-- File: Checkpoint2-script.sql
-- ============================================================================
-- ============================================================================
-- SCHEMA MODIFICATIONS SINCE CHECKPOINT 1
-- ============================================================================
-- Explain any modifications to your relational schema made since Checkpoint 1.
-- (e.g., added indexes, modified check constraints, renamed columns, or
-- clarified weak entity vs. junction relationships). If no changes were made,
-- explicitly state: "No modifications made to the Checkpoint 1 schema."
--
-- Modifications:
-- 1. Changed tuple under User table from password to passwordhash.
-- 2. Changed tuple under User table from 
-- ============================================================================
-- ============================================================================
-- MEMBER CONTRIBUTIONS SUMMARY (GROUPED AT THE TOP)
-- ============================================================================
-- Identify the member contributions to each query or modification statement
-- below. Each statement must sum to 100% across the 2 team members.
--
-- SECTION 1: SIMPLE STATEMENTS
-- Statement 01: [Member 1]: XX%, [Member 2]: XX%
-- Statement 02: [Member 1]: XX%, [Member 2]: XX%
-- Statement 03: [Member 1]: XX%, [Member 2]: XX%
-- Statement 04: [Member 1]: XX%, [Member 2]: XX%
-- Statement 05: [Member 1]: XX%, [Member 2]: XX%
-- Statement 06: [Member 1]: XX%, [Member 2]: XX%
-- Statement 07: [Member 1]: XX%, [Member 2]: XX%
-- Statement 08: [Member 1]: XX%, [Member 2]: XX%
-- Statement 09: [Member 1]: XX%, [Member 2]: XX%
-- Statement 10: [Member 1]: XX%, [Member 2]: XX%
--
-- SECTION 2: INTERMEDIATE STATEMENTS
-- Statement 11: [Member 1]: XX%, [Member 2]: XX%
-- Statement 12: [Member 1]: XX%, [Member 2]: XX%
-- Statement 13: [Member 1]: XX%, [Member 2]: XX%
-- Statement 14: [Member 1]: XX%, [Member 2]: XX%
-- Statement 15: [Member 1]: XX%, [Member 2]: XX%
-- Statement 16: [Member 1]: XX%, [Member 2]: XX%
-- Statement 17: [Member 1]: XX%, [Member 2]: XX%
-- Statement 18: [Member 1]: XX%, [Member 2]: XX%
-- Statement 19: [Member 1]: XX%, [Member 2]: XX%
-- Statement 20: [Member 1]: XX%, [Member 2]: XX%
-- Statement 21: [Member 1]: XX%, [Member 2]: XX%
--
-- SECTION 3: COMPLEX STATEMENTS
-- Statement 22: [Member 1]: XX%, [Member 2]: XX%
-- Statement 23: [Member 1]: XX%, [Member 2]: XX%
-- Statement 24: [Member 1]: XX%, [Member 2]: XX%
-- Statement 25: [Member 1]: XX%, [Member 2]: XX%
-- Statement 26: [Member 1]: XX%, [Member 2]: XX%
-- Statement 27: [Member 1]: XX%, [Member 2]: XX%
-- Statement 28: [Member 1]: XX%, [Member 2]: XX%
-- Statement 29: [Member 1]: XX%, [Member 2]: XX%
-- Statement 30: [Member 1]: XX%, [Member 2]: XX%
-- Statement 31: [Member 1]: XX%, [Member 2]: XX%
-- Statement 32: [Member 1]: XX%, [Member 2]: XX%
-- ============================================================================
-- Ensure SQLite foreign key constraints are enforced
PRAGMA foreign_keys = ON;
-- Set output format for readability during evaluation
.headers on
.mode column
-- ============================================================================
-- SECTION 1: SIMPLE STATEMENTS (Roughly 10 Statements)
-- Focus: Single-table projections/filters, simple inserts/updates/deletes,
-- basic sorting, simple aggregate functions, and pattern matching.
-- ============================================================================
-- ----------------------------------------------------------------------------
-- Statement 01: Insert into User.
-- Explanation: The query inserts a user into the database. 
-- Containing values of username, passwordhash, isDriver, isManager, firstName, lastName, and birthday.
-- ----------------------------------------------------------------------------
INSERT INTO User (username, passwordhash, isDriver, isManager, firstName, lastName, birthday)
VALUES ('rmartinezluna', 'testhash11', 1, 1, 'Raul', 'Martinez Luna', '2005-01-01');
-- ----------------------------------------------------------------------------
-- Statement 02: Update user information.
-- Explanation: The query updates a users information. The information is updated based off userID.
-- ----------------------------------------------------------------------------
UPDATE User
SET firstName = 'Roland'
WHERE userID = 11;
-- ----------------------------------------------------------------------------
-- Statement 03: Deletes user information.
-- Explanation: The query deletes the users information. The information is updated based off userID.
-- ----------------------------------------------------------------------------
DELETE FROM User
WHERE userID = 11;
-- ----------------------------------------------------------------------------
-- Statement 04: Insert into Car.
-- Explanation: The query inserts a car into the database. 
-- Containing values of licenseNumber, model, year, isModified, userID.
-- ----------------------------------------------------------------------------
INSERT INTO Car (licenseNumber, model, year, isModified, userID)
VALUES ('234dsf23413', 'Mitsubishi Lancer', '2017', 1, 1);
-- ----------------------------------------------------------------------------
-- Statement 05: Update car information.
-- Explanation: The query updates the car information. The information is updated based off carID.
-- ----------------------------------------------------------------------------
UPDATE Car
SET licenseNumber = '23243ggg23432'
WHERE carID = 11;
-- ----------------------------------------------------------------------------
-- Statement 06: Delete car information.
-- Explanation: The query deletes the car information. The information is updated based off carID.
-- ----------------------------------------------------------------------------
DELETE FROM Car
WHERE carID = 11;
-- ----------------------------------------------------------------------------
-- Statement 07: Insert into Events.
-- Explanation: The query inserts an event into the database. 
-- Containing values of cost, title, course, location, difficulty, date, startTime, endTime, numAttempts.
-- ----------------------------------------------------------------------------
INSERT INTO Event (cost, title, course, location, difficulty, date, startTime, endTime, numAttempts)
VALUES (50, 'Non-Modified Cars', 'Laguna Seca', 'Monterey', 'hard', '2026-12-25',  '09:00', '16:00', 3);
-- ----------------------------------------------------------------------------
-- Statement 08: Update event information.
-- Explanation: The query updates a event information. The information is updated based off eventID
-- ----------------------------------------------------------------------------
UPDATE Event
SET title = 'Modified Cars'
WHERE eventID = 6;
-- ----------------------------------------------------------------------------
-- Statement 09: Delete event information.
-- Explanation: The query deletes the event information. The information is updated based off eventID
-- ----------------------------------------------------------------------------
DELETE FROM Event
WHERE eventID = 6;
-- ----------------------------------------------------------------------------
-- Statement 10: Insert into Registration.
-- Explanation: The query inserts a registration into the database. 
-- Containing values of userID, eventID, carID, registrationStatus, registrationDate, carClass, checkedIn.
-- ----------------------------------------------------------------------------
INSERT INTO Registration (userID, eventID, carID, registrationStatus, registrationDate, carClass, checkedIn)
VALUES (8, 5, 8, 'Pending', '2026-11-12', 'Street', 0);
-- ----------------------------------------------------------------------------
-- Statement 11: Update registration information (registrationStatus).
-- Explanation: The query updates registration information. The information is updated based off registrationID
-- ----------------------------------------------------------------------------
UPDATE Registration
SET registrationStatus = 'Confirmed'
WHERE registrationID = 31;
-- ----------------------------------------------------------------------------
-- Statement 12: Delete registration information.
-- Explanation: The query deletes registration information. The information is updated based off registrationID
-- ----------------------------------------------------------------------------
DELETE FROM Registration
WHERE registrationID = 31;
-- ----------------------------------------------------------------------------
-- Statement 13: Insert row into ManagesEvent.
-- Explanation: The query inserts a row for ManagesEvent into the database. 
-- Containing values of userID, eventID.
-- ----------------------------------------------------------------------------
INSERT INTO ManagesEvent (userID, eventID)
VALUES (8, 3);
-- ----------------------------------------------------------------------------
-- Statement 14: Delete ManagesEvent information.
-- Explanation: The query deletes ManagesEvent information. The information is updated based off userID, eventID
-- ----------------------------------------------------------------------------
DELETE FROM ManagesEvent
WHERE userID = 8 AND eventID = 3;
-- ----------------------------------------------------------------------------
-- Statement 15: Delete Run information if mistake occured.
-- Explanation: The query deletes ManagesEvent information. The information is updated based off userID, eventID
-- ----------------------------------------------------------------------------
DELETE FROM Run
WHERE runID = 31;
-- ----------------------------------------------------------------------------
-- Statement 16: Insert penalty information.
-- Explanation: The query inserts a row for penalties. Containing values of time (penalty time), description.
-- ----------------------------------------------------------------------------
INSERT INTO Penalty (time, description)
VALUES (25, 'Oil');
-- ----------------------------------------------------------------------------
-- Statement 17: Update penalty information.
-- Explanation: The query updates penalty information. The information is updated based off penaltyID.
-- ----------------------------------------------------------------------------
UPDATE Penalty
SET description = 'Leaked oil.'
WHERE penaltyID = 11;
-- ----------------------------------------------------------------------------
-- Statement 18: Deletes penalty information.
-- Explanation: The query deletes the penalty information. The information is updated based off penaltyID.
-- ----------------------------------------------------------------------------
DELETE FROM Penalty
WHERE penaltyID = 5;
-- ----------------------------------------------------------------------------
-- Statement 19: Insert RunPenalty information.
-- Explanation: The query inserts a row for RunPenalty. Containing values of runID, penaltyID.
-- ----------------------------------------------------------------------------
INSERT INTO RunPenalty (runID, penaltyID)
VALUES (30, 4);
-- ----------------------------------------------------------------------------
-- Statement 20: Deletes RunPenalty information.
-- Explanation: The query deletes the RunPenalty information. The information is deleted based off both runID, penaltyID.
-- ----------------------------------------------------------------------------
DELETE FROM RunPenalty
WHERE runID = 30 AND penaltyID = 4;



-- Statement xx: (Raul)
-- Explanation: Come back and Add
-- ----------------------------------------------------------------------------
SELECT c.carID as 'Car ID', c.licenseNumber as "License Number", c.model as "Model", c.year as "Year", c.isModified as "Is Modified"
FROM Car as c
WHERE c.userID = 1;
-- ----------------------------------------------------------------------------




-- ============================================================================
-- SECTION 2: INTERMEDIATE STATEMENTS (Roughly 10 Statements)
-- Focus: Multi-table inner joins, left outer joins, aggregation with GROUP BY
-- and HAVING, scalar subqueries, table aliasing, and conditional updates.
-- ============================================================================

-- ----------------------------------------------------------------------------
-- Statement xx: Display how many times a specific user's car has been registered.
-- Explanation: Displays how many times a car has been registered used by a specific user.
-- LEFT JOINs (LEFT OUTER JOIN) Car and Registration in order to count event when a car has 0 registrations.
-- Retrieves registration count, license number, model, year, and whether it is modified. Utilizes cases to provide specialized output.
-- (LEFT OUTER JOIN)
-- ----------------------------------------------------------------------------

SELECT DISTINCT COUNT(*) AS 'Registrations', c.licenseNumber AS "License Number", c.model AS "Model", c.year AS "Year", (CASE c.isModified WHEN 1 THEN 'Yes' WHEN 0 then 'NO' END) AS "Is Modified"
FROM Car AS c
LEFT JOIN Registration AS r ON c.carID = r.carID
WHERE c.userID = 1
GROUP BY c.carID;

-- ----------------------------------------------------------------------------
-- Statement xx: Inserts Runs, but checks if the limit has been met or not.
-- Explanation: Inserts into Runs, a run given that the a subquery that finds the
-- current amount of runs based off registrationID is less then the number of attempts
-- provided by the Event table (Scalar subqueries).
-- ----------------------------------------------------------------------------

INSERT INTO Run (runID, runTime, notes, runNumber, registrationID, userID)
SELECT 31, 68.92, 'Good improvement', 2, 29, 8
Where (
    SELECT COUNT(*) 
    FROM Run AS r
    WHERE r.registrationID = 29
) <= (
    SELECT e.numAttempts
    FROM Event as e
    INNER JOIN registration r ON e.eventID = r.eventID
    WHERE r.registrationID = 29
    LIMIT 1
);


-- ----------------------------------------------------------------------------
-- Statement xx: Count event registrations for each driver
-- Explanation: The left join connects each user to their event registrations,
-- keeping all users even if they have no registrations. The WHERE clause filters
-- the results to only users registered as drivers, while COUNT calculates their
-- total number of event registrations.
-- ----------------------------------------------------------------------------
SELECT u.userID AS "Driver ID", u.firstName AS "First Name", u.lastName AS "Last Name", COUNT(r.registrationID) AS "Registration Count"
FROM User AS u LEFT JOIN Registration AS r ON u.userID = r.userID
WHERE u.isDriver = 1
GROUP BY u.userID, u.firstName, u.lastName;

-- ----------------------------------------------------------------------------
-- Statement xx: Count managed events for each manager
-- Explanation: The left join connects each manager to the events they manage,
-- including managers with no assigned events. Count calculates the total
-- number of events managed by each user.
-- ----------------------------------------------------------------------------

SELECT u.userID AS "Manager ID", u.firstName AS "First Name", u.lastName AS "Last Name", COUNT(m.eventID) AS "Managed Event Count"
FROM User AS u LEFT JOIN ManagesEvent AS m ON u.userID = m.userID
WHERE u.isManager = 1
GROUP BY u.userID, u.firstName, u.lastName;

-- ----------------------------------------------------------------------------
-- Statement xx: Lists ever event registered by a driver
-- Explanation: The inner join connects the User, Registration, and Event
-- tables to find events registered by a specific driver. The where clause
-- filters the results to only show registrations for that driver.
-- ----------------------------------------------------------------------------

SELECT u.firstName || ' ' || u.lastName AS "Driver Name", e.title AS "Event Title", e.date AS "Date", e.location AS "Location", r.registrationStatus AS "Registration Status"
FROM User AS u INNER JOIN Registration AS r ON u.userID = r.userID
INNER JOIN Event AS e ON r.eventID = e.eventID
WHERE u.userID = 1 AND u.isDriver = 1;

-- ----------------------------------------------------------------------------
-- Statement xx: Lists drivers not checked in with confirmed status.
-- Explanation: The inner join connects the Registration, User, and Event
-- tables to display driver and event information. The where clause filters
-- the results to only show registrations that have been confirmed and that have not been checked in.
-- ----------------------------------------------------------------------------

SELECT u.firstName || ' ' || u.lastName AS "Driver Name", e.title AS "Event Title", e.date AS "Date"
FROM Registration AS r INNER JOIN User AS u ON r.userID = u.userID
INNER JOIN Event AS e ON r.eventID = e.eventID
WHERE r.registrationStatus = 'Confirmed' AND r.checkedIn = 0 AND e.eventID = 2;

-- ----------------------------------------------------------------------------
-- Statement xx: Lists checked-In drivers for an Event
-- Explanation: The inner join connects the Registration, User, Event, and Car
-- tables to display driver, event, and car information. The where clause
-- filters the results to only show checked-in drivers for a specific event.
-- ----------------------------------------------------------------------------

SELECT u.firstName || ' ' || u.lastName AS "Driver Name", e.title AS "Event Title", c.model AS "Car Model", r.carClass AS "Car Class"
FROM Registration AS r INNER JOIN User AS u ON r.userID = u.userID
INNER JOIN Event AS e ON r.eventID = e.eventID
INNER JOIN Car AS c ON r.carID = c.carID
WHERE r.checkedIn = 1 AND e.eventID = 1;

-- ----------------------------------------------------------------------------
-- Statement xx: Count registered drivers for each event
-- Explanation: The left join connects each event to its registrations,
-- including events with no registered drivers. COUNT calculates the total
-- number of registrations for each event.
-- ----------------------------------------------------------------------------

SELECT e.eventID AS "Event ID", e.title AS "Event Title", e.date AS "Date", COUNT(r.registrationID) AS "Registration Count"
FROM Event AS e LEFT JOIN Registration AS r ON e.eventID = r.eventID
GROUP BY e.eventID, e.title, e.date;

-- ----------------------------------------------------------------------------
-- Statement xx: Find fastest raw run time for an event
-- Explanation: The inner join connects runs to their registration, driver,
-- event, and car information. The subquery finds the minimum raw run time
-- for a specific event, including all runs tied for the fastest time.
-- ----------------------------------------------------------------------------

SELECT e.title AS "Event Title", u.firstName || ' ' || u.lastName AS "Driver Name", c.model AS "Car Model", ru.runNumber AS "Run Number", ru.runTime AS "Raw Time"
FROM Run AS ru INNER JOIN Registration AS r ON ru.registrationID = r.registrationID
INNER JOIN User AS u ON r.userID = u.userID
INNER JOIN Event AS e ON r.eventID = e.eventID
INNER JOIN Car AS c ON r.carID = c.carID
WHERE e.eventID = 1
    AND ru.runTime = (
        SELECT MIN(ru2.runTime)
        FROM Run AS ru2
        INNER JOIN Registration AS r2 ON ru2.registrationID = r2.registrationID
        WHERE r2.eventID = 1
    );

-- ----------------------------------------------------------------------------
-- Statement xx: Find popular events with more than five registered drivers
-- Explanation: The inner join connects each event to its registrations,
-- while group by organizes the registrations by event. COUNT calculates
-- the number of registrations, and HAVING filters for events with more than five.

SELECT e.eventID AS "Event ID", e.title AS "Event Title", e.date AS "Date", COUNT(r.registrationID) AS "Registration Count"
FROM Event AS e INNER JOIN Registration AS r ON e.eventID = r.eventID
GROUP BY e.eventID, e.title, e.date
HAVING COUNT(r.registrationID) > 5;

-- ----------------------------------------------------------------------------
-- [Insert SQL Statement 11 Here];
-- [Continue Statements 12 through 21...]
-- ============================================================================
-- SECTION 3: COMPLEX STATEMENTS (Roughly 10 Statements)
-- Focus: Correlated subqueries (EXISTS/NOT EXISTS), set operations
-- (UNION, INTERSECT, EXCEPT), Common Table Expressions (WITH / CTEs),
-- window functions (ROW_NUMBER, DENSE_RANK), VIEW creation/querying,
-- multi-condition triggers, and complex analytics.
-- ============================================================================
--Raul's (DELETE THIS LATER)
-- ----------------------------------------------------------------------------
-- Statement xx: Position Leaderboard with the score time (raw time - penalties)
-- Explanation: In this statement we utilize a CTE (CTE), time_cte, in order to find the
-- userID, carID, scoreTime, rawTime, penaltyTime, runNumber of a specific event
-- by the eventID. We do this through a variety of joins, where, and group by in 
-- order to sum the penalties. Thereafter, we utilize the CTE in the main part
-- Where we do more joins to find the User and the Car. We also to concatenate
-- various variables as well as ordering it by the t.scoreTime. We also utilize
-- a dense rank (DENSE_RANK) over the same order by nesuring that the positions are numbered
-- and if there are any ties, that they recieve the same number.
-- ----------------------------------------------------------------------------

WITH time_cte (userID, carID, scoreTime, rawTime, penaltyTime, runNumber) AS (
    SELECT r.userID, rg.carID, r.runTime-sum(p.time), r.runTime, sum(p.time), r.runNumber
    FROM Registration rg
    INNER JOIN Run r ON rg.registrationID = r.registrationID
    INNER JOIN RunPenalty rp ON r.runID = rp.runID
    INNER JOIN Penalty p on rp.penaltyID = p.penaltyID
    WHERE eventID = 1
    group by r.runID
)

SELECT DENSE_RANK() OVER (ORDER BY t.scoreTime ASC) AS 'Position', u.firstName || ' ' || u.lastName AS 'Name', c.year || ' '|| c.model AS 'Car', t.scoreTime AS 'Time', t.rawTime AS 'Raw Time', t.penaltyTime AS 'Time Deductions', t.runNumber AS 'Attempt Number'
FROM time_cte AS t
INNER JOIN User AS u on t.userID = u.userID
INNER JOIN Car AS c on t.carID = c.carID
ORDER BY t.scoreTime ASC;

-- ----------------------------------------------------------------------------
-- Statement xx: Drivers that are better then average.
-- Explanation: This statement uses three CTEs, the first one finds the run scoreTime,
-- The second finds the users avg time, the third finds the average based off each
-- user's avg. Then We take the distinct users that have runs greater then the avg_cte.
-- ----------------------------------------------------------------------------

WITH run_cte (runID, userID, scoreTime) AS (
    SELECT r.runID, rg.userID, r.runTime - SUM(p.time)
    FROM Run AS r
    INNER JOIN RunPenalty rp ON r.runID = rp.runID
    INNER JOIN Penalty p on rp.penaltyID = p.penaltyID
    INNER JOIN Registration AS rg ON rg.registrationID = r.registrationID
    WHERE rg.eventID = 1
    GROUP BY r.runID
),

user_avg_cte (userID, avgTime) AS (
    SELECT r.userID, AVG(r.scoreTime)
    FROM run_cte AS r
    GROUP BY r.userID
),

avg_cte (avgTime) AS (
    SELECT AVG(a.avgTime)
    FROM user_avg_cte AS a
)

Select DISTINCT u.firstName || ' ' || u.lastName AS 'Faster Then Avg'
FROM run_cte AS a
INNER JOIN User as u ON a.userID = u.userID
WHERE a.scoreTime > (
    SELECT avg.avgTime
    FROM avg_cte AS avg
);

-- ----------------------------------------------------------------------------
-- Statement xx: Drivers that are better then average.
-- Explanation: 
-- ----------------------------------------------------------------------------



-- ----------------------------------------------------------------------------



-- Francisco's (DELETE THIS LATER)

-- ----------------------------------------------------------------------------
-- Statement xx: [Brief Title]
-- Explanation: [1 to 2 sentences explaining the complex query/trigger logic].
-- ----------------------------------------------------------------------------
-- Statement xx: Find drivers with runs but no penalties
-- Explanation: The cte collects completed runs with driver and event
-- information. NOT EXISTS excludes drivers who have received penalties,
-- while COUNT calculates their completed runs for each event.

WITH DriverRuns AS (
    SELECT u.userID, u.firstName, u.lastName, e.eventID, e.title, ru.runID
    FROM User AS u INNER JOIN Registration AS r ON u.userID = r.userID
    INNER JOIN Event AS e ON r.eventID = e.eventID
    INNER JOIN Run AS ru ON r.registrationID = ru.registrationID
    WHERE u.isDriver = 1 AND ru.runTime IS NOT NULL
)

SELECT d.title AS "Event Title", d.firstName || ' ' || d.lastName AS "Driver Name", COUNT(d.runID) AS "Total Runs Completed"
FROM DriverRuns AS d
WHERE NOT EXISTS (
    SELECT 1
    FROM Run AS ru2 INNER JOIN Registration AS r2 ON ru2.registrationID = r2.registrationID
    INNER JOIN RunPenalty AS rp ON ru2.runID = rp.runID
    WHERE r2.userID = d.userID
)
GROUP BY d.eventID, d.userID, d.title, d.firstName, d.lastName;

-- ----------------------------------------------------------------------------
-- Statement xx: Generate event statistics using CTE
-- Explanation: The cte joins events with their registrations and completed
-- runs, then calculates driver counts and run statistics for each event.
-- The main query displays the calculated statistics for every event.

WITH EventStats AS (
    SELECT e.eventID, e.title, COUNT(DISTINCT r.userID) AS driverCount, COUNT(ru.runID) AS totalRuns, MIN(ru.runTime) AS fastestTime, AVG(ru.runTime) AS averageTime, MAX(ru.runTime) AS slowestTime
    FROM Event AS e LEFT JOIN Registration AS r ON e.eventID = r.eventID
    LEFT JOIN Run AS ru ON r.registrationID = ru.registrationID AND ru.runTime IS NOT NULL
    GROUP BY e.eventID, e.title
)
SELECT title AS "Event Title", driverCount AS "Driver Count", totalRuns AS "Total Runs", fastestTime AS "Fastest Time", averageTime AS "Average Time", slowestTime AS "Slowest Time"
FROM EventStats;

-- ----------------------------------------------------------------------------
-- Statement xx: Rank driver runs by speed for an event
-- Explanation: The CTE joins runs with driver and event information
-- for a specific driver and event. ROW_NUMBER ranks the completed
-- runs from fastest to slowest based on their raw run times.

WITH DriverRuns AS (
    SELECT e.title, u.firstName, u.lastName, ru.runNumber, ru.runTime, ru.runID
    FROM Run AS ru INNER JOIN Registration AS r ON ru.registrationID = r.registrationID
    INNER JOIN User AS u ON r.userID = u.userID
    INNER JOIN Event AS e ON r.eventID = e.eventID
    WHERE r.userID = 1 AND e.eventID = 1 AND ru.runTime IS NOT NULL
)
SELECT title AS "Event Title", firstName || ' ' || lastName AS "Driver Name", runNumber AS "Run Number", runTime AS "Raw Time",ROW_NUMBER() OVER ( ORDER BY runTime ASC, runID ASC) AS "Speed Ranking"
FROM DriverRuns
ORDER BY "Speed Ranking";
