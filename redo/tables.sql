-- Create the student table
CREATE TABLE student (
    stuid SERIAL PRIMARY KEY,
    name VARCHAR(100),
    total INT,
    rank INT
);
-- Create the subject table
CREATE TABLE subject (
    subid SERIAL PRIMARY KEY,
    name VARCHAR(100)qid
);
-- Create the question table (assuming you need a separate table for questions)
CREATE TABLE question (
    qid SERIAL ,
    subid INT,
    PRIMARY KEY(qid, subid),
);
-- Create the marks table
CREATE TABLE marks (
    stuid INT,
    subid INT,
    qid INT,
    marks INT,
    PRIMARY KEY (stuid, subid, qid),
    FOREIGN KEY (stuid) REFERENCES student(stuid),
    FOREIGN KEY (subid) REFERENCES subject(subid),
    FOREIGN KEY (qid) REFERENCES question(qid)
);
-- Create the rank table
CREATE TABLE rank (
    stuid INT,
    subid INT,
    rank INT,
    PRIMARY KEY (stuid, subid),
    FOREIGN KEY (stuid) REFERENCES student(stuid),
    FOREIGN KEY (subid) REFERENCES subject(subid)
);