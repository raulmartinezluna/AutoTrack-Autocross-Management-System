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







-- ============================================================================
-- SECTION 2: INTERMEDIATE STATEMENTS (Roughly 10 Statements)
-- Focus: Multi-table inner joins, left outer joins, aggregation with GROUP BY
-- and HAVING, scalar subqueries, table aliasing, and conditional updates.
-- ============================================================================
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

SELECT u.userID AS "Manager ID", u.firstName AS "First Name", u.lastName AS "Last Name", COUNT(m.eventID) AS "Managed Event Count"
FROM User AS u LEFT JOIN ManagesEvent AS m ON u.userID = m.userID
WHERE u.isManager = 1
GROUP BY u.userID, u.firstName, u.lastName;

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
-- ----------------------------------------------------------------------------
-- Statement 22: [Brief Title]
-- Explanation: [1 to 2 sentences explaining the complex query/trigger logic].
-- ----------------------------------------------------------------------------
-- [Insert SQL Statement 22 Here];
-- [Continue 