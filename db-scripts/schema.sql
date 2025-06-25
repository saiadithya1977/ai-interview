
-- list the current database
SELECT current_database();

-- list all tables
SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'public'
  AND table_type = 'BASE TABLE'
ORDER BY table_name;

CREATE TABLE "user1" (
    name VARCHAR(255) NOT NULL,
    current_job VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE
);

-- INSERT INTO "user" (name, current_job) VALUES
-- ('Alice Smith', 'Software Engineer'),
-- ('Bob Johnson', 'Data Scientist'),
-- ('Charlie Brown', 'Product Manager');
--
-- -- select *
-- -- from "user";
--
-- TRUNCATE TABLE "user" RESTART IDENTITY;
--
-- select * from "user";

INSERT INTO "user1" (name, current_job, email)
VALUES ('Alice Smith', 'Software Engineer', 'alice.smith@example.com'),
       ('Bob Johnson', 'Data Scientist', 'bob.j@example.com'),
       ('Charlie Brown', 'Product Manager', 'charlie.brown@example.com'),
       ('Diana Prince', 'UX Designer', 'diana.p@example.com'),
       ('Ethan Hunt', 'DevOps Specialist', 'ethan.hunt@example.com');

select * from "user1"

-- DROP TABLE "user"
--
-- select * from "user"

CREATE TABLE applied_jobs (
    application_id SERIAL PRIMARY KEY,
    user_name VARCHAR(255) NOT NULL,
    company VARCHAR(255) NOT NULL,
    job_title VARCHAR(255) NOT NULL
);

INSERT INTO applied_jobs (user_name, company, job_title)
VALUES ('Alice Smith', 'Tech Solutions Inc.', 'Senior Software Engineer'),
       ('Bob Johnson', 'Data Insights Corp.', 'Lead Data Scientist'),
       ('Charlie Brown', 'Innovate Co.', 'Senior Product Manager'),
       ('Diana Prince', 'Creative Designs LLC', 'Lead UX Designer'),
       ('Ethan Hunt', 'Global Tech Systems', 'Principal DevOps Engineer');

select * from applied_jobs
