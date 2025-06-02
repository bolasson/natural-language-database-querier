DROP TABLE IF EXISTS WorkSession;
DROP TABLE IF EXISTS PersonProject;
DROP TABLE IF EXISTS ProjectTag;
DROP TABLE IF EXISTS Tag;
DROP TABLE IF EXISTS Project;
DROP TABLE IF EXISTS Person;

CREATE TABLE Person (
    id BIGINT PRIMARY KEY,
    firstName VARCHAR,
    lastName VARCHAR,
    email VARCHAR UNIQUE,
    hashedPassword VARCHAR
);

CREATE TABLE Project (
    id BIGINT PRIMARY KEY,
    projectTitle VARCHAR,
    ownerId BIGINT,
    addCode CHAR,
    FOREIGN KEY (ownerId) REFERENCES Person(id)
);

CREATE TABLE Tag (
    id BIGINT PRIMARY KEY,
    value VARCHAR UNIQUE
);

CREATE TABLE ProjectTag (
    projectId BIGINT,
    tagId BIGINT,
    PRIMARY KEY (projectId, tagId),
    FOREIGN KEY (projectId) REFERENCES Project(id),
    FOREIGN KEY (tagId) REFERENCES Tag(id)
);

CREATE TABLE PersonProject (
    personId BIGINT,
    projectId BIGINT,
    role TEXT CHECK(role IN ('Owner', 'Contributor', 'Viewer')),
    hourlyRate BIGINT,
    PRIMARY KEY (personId, projectId),
    FOREIGN KEY (personId) REFERENCES Person(id),
    FOREIGN KEY (projectId) REFERENCES Project(id)
);

CREATE TABLE WorkSession (
    id BIGINT PRIMARY KEY,
    startTime DATETIME,
    endTime DATETIME,
    projectId BIGINT,
    personId BIGINT,
    FOREIGN KEY (projectId) REFERENCES Project(id),
    FOREIGN KEY (personId) REFERENCES Person(id)
);