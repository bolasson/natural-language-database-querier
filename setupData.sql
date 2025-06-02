INSERT INTO Person (id, firstName, lastName, email, hashedPassword) VALUES
(1, 'Alice', 'Johnson', 'alice@pmtool.com', 'hashed_pw_1'),
(2, 'Bob', 'Lee', 'bob@pmtool.com', 'hashed_pw_2'),
(3, 'Clara', 'Nguyen', 'clara@pmtool.com', 'hashed_pw_3'),
(4, 'Derek', 'Stone', 'derek@pmtool.com', 'hashed_pw_4'),
(5, 'Emily', 'Clark', 'emily@pmtool.com', 'hashed_pw_5'),
(6, 'Frank', 'Lopez', 'frank@pmtool.com', 'hashed_pw_6'),
(7, 'Grace', 'Kim', 'grace@pmtool.com', 'hashed_pw_7'),
(8, 'Henry', 'Baker', 'henry@pmtool.com', 'hashed_pw_8'),
(9, 'Isla', 'Thomas', 'isla@pmtool.com', 'hashed_pw_9'),
(10, 'Jack', 'Wright', 'jack@pmtool.com', 'hashed_pw_10'),
(11, 'Karen', 'Adams', 'karen@pmtool.com', 'hashed_pw_11'),
(12, 'Leo', 'Burns', 'leo@pmtool.com', 'hashed_pw_12'),
(13, 'Maya', 'Chang', 'maya@pmtool.com', 'hashed_pw_13'),
(14, 'Noah', 'Diaz', 'noah@pmtool.com', 'hashed_pw_14'),
(15, 'Olivia', 'Evans', 'olivia@pmtool.com', 'hashed_pw_15');

INSERT INTO Project (id, projectTitle, ownerId, addCode) VALUES
(101, 'Website Redesign', 1, 'ABC123'),
(102, 'Mobile App Launch', 2, 'XYZ456'),
(103, 'Data Migration', 1, 'DEF789'),
(104, 'Inventory Tracker', 4, 'INV123'),
(105, 'AI Chatbot', 5, 'AI456'),
(106, 'Marketing Dashboard', 6, 'MKT789'),
(107, 'Campus Kiosk App', 7, 'KSK321'),
(108, 'Accessibility Audit', 8, 'ACC654'),
(109, 'Analytics Redesign', 9, 'ANL111'),
(110, 'Password Reset System', 10, 'PSS999'),
(111, 'E-Commerce Backend', 11, 'EC111'),
(112, 'Student Portal UI', 12, 'SP222'),
(113, 'Payment Gateway', 13, 'PG333'),
(114, 'Bug Tracker App', 14, 'BT444'),
(115, 'Server Uptime Monitor', 15, 'UM555');

INSERT INTO Tag (id, value) VALUES
(1, 'Database connection'),
(2, 'Styling'),
(3, 'Endpoints'),
(4, 'Design'),
(5, 'Security'),
(6, 'UX Review'),
(7, 'DevOps'),
(8, 'API Integration'),
(9, 'Mobile Optimization');

INSERT INTO ProjectTag (projectId, tagId) VALUES
(101, 2),  -- Website Redesign: Styling
(101, 4),  -- Website Redesign: Design
(102, 3),  -- Mobile App Launch: Endpoints
(103, 1),  -- Data Migration: Database connection
(103, 4),  -- Data Migration: Design
(104, 1),  -- Inventory Tracker: Database connection
(104, 8),  -- Inventory Tracker: API Integration
(105, 3),  -- AI Chatbot: Endpoints
(105, 5),  -- AI Chatbot: Security
(106, 6),  -- Marketing Dashboard: UX Review
(106, 4),  -- Marketing Dashboard: Design
(107, 2),  -- Campus Kiosk App: Styling
(107, 9),  -- Campus Kiosk App: Mobile Optimization
(108, 6),  -- Accessibility Audit: UX Review
(109, 7),  -- Analytics Redesign: DevOps
(110, 5),  -- Password Reset System: Security
(110, 1),  -- Password Reset System: Database connection
(111, 1),  -- Database connection
(111, 3),  -- Endpoints
(111, 5),  -- Security
(112, 2),  -- Styling
(112, 4),  -- Design
(112, 6),  -- UX Review
(113, 5),  -- Security
(113, 8),  -- API Integration
(114, 7),  -- DevOps
(114, 6),  -- UX Review
(115, 7),  -- DevOps
(115, 9);  -- Mobile Optimization

INSERT INTO PersonProject (personId, projectId, role, hourlyRate) VALUES
(1, 101, 'Owner', 100),
(2, 101, 'Contributor', 70),
(2, 102, 'Owner', 90),
(3, 102, 'Contributor', 65),
(1, 103, 'Owner', 100),
(3, 103, 'Contributor', 65),
(4, 104, 'Owner', 80),
(5, 105, 'Owner', 95),
(6, 106, 'Owner', 110),
(7, 107, 'Owner', 100),
(8, 108, 'Owner', 85),
(9, 109, 'Owner', 105),
(10, 110, 'Owner', 90),
(1, 105, 'Contributor', 100),
(2, 106, 'Contributor', 85),
(3, 107, 'Contributor', 75),
(4, 108, 'Contributor', 70),
(5, 109, 'Contributor', 95),
(6, 110, 'Contributor', 100),
(11, 111, 'Owner', 100),
(12, 112, 'Owner', 90),
(13, 113, 'Owner', 95),
(14, 114, 'Owner', 85),
(15, 115, 'Owner', 92),
(1, 111, 'Contributor', 110),
(2, 112, 'Contributor', 85),
(3, 113, 'Contributor', 75),
(4, 114, 'Contributor', 88),
(5, 115, 'Contributor', 93),
(6, 111, 'Viewer', 0),
(7, 113, 'Contributor', 100),
(8, 112, 'Viewer', 0);

INSERT INTO WorkSession (id, startTime, endTime, projectId, personId) VALUES
(1001, '2025-05-25 09:00:00', '2025-05-25 12:00:00', 101, 1),
(1002, '2025-05-25 13:00:00', '2025-05-25 15:00:00', 101, 2),
(1003, '2025-05-26 10:00:00', '2025-05-26 14:00:00', 102, 2),
(1004, '2025-05-26 15:00:00', '2025-05-26 18:00:00', 102, 3),
(1005, '2025-05-27 09:30:00', '2025-05-27 12:00:00', 103, 1),
(1006, '2025-05-27 12:30:00', '2025-05-27 14:00:00', 103, 3),
(1007, '2025-05-28 08:00:00', '2025-05-28 10:30:00', 104, 4),
(1008, '2025-05-28 11:00:00', '2025-05-28 13:00:00', 104, 4),
(1009, '2025-05-29 09:00:00', '2025-05-29 12:00:00', 105, 5),
(1010, '2025-05-29 13:00:00', '2025-05-29 15:00:00', 105, 1),
(1011, '2025-05-30 10:00:00', '2025-05-30 14:00:00', 106, 6),
(1012, '2025-05-30 14:30:00', '2025-05-30 17:00:00', 106, 2),
(1013, '2025-05-31 09:30:00', '2025-05-31 12:00:00', 107, 7),
(1014, '2025-05-31 12:30:00', '2025-05-31 14:00:00', 107, 3),
(1015, '2025-06-01 08:00:00', '2025-06-01 10:00:00', 108, 8),
(1016, '2025-06-01 10:30:00', '2025-06-01 12:30:00', 108, 4),
(1017, '2025-06-02 09:00:00', '2025-06-02 11:00:00', 109, 9),
(1018, '2025-06-02 11:30:00', '2025-06-02 14:00:00', 109, 5),
(1019, '2025-06-03 10:00:00', '2025-06-03 12:00:00', 110, 10),
(1020, '2025-06-03 12:30:00', '2025-06-03 15:00:00', 110, 6),
(1021, '2025-06-04 09:00:00', '2025-06-04 11:30:00', 111, 11),
(1022, '2025-06-04 12:00:00', '2025-06-04 14:00:00', 111, 1),
(1023, '2025-06-05 10:00:00', '2025-06-05 13:00:00', 112, 12),
(1024, '2025-06-05 13:30:00', '2025-06-05 15:00:00', 112, 2),
(1025, '2025-06-06 08:30:00', '2025-06-06 11:00:00', 113, 13),
(1026, '2025-06-06 11:15:00', '2025-06-06 13:45:00', 113, 3),
(1027, '2025-06-07 09:00:00', '2025-06-07 12:00:00', 114, 14),
(1028, '2025-06-07 13:00:00', '2025-06-07 15:30:00', 114, 4),
(1029, '2025-06-08 08:00:00', '2025-06-08 10:00:00', 115, 15),
(1030, '2025-06-08 10:15:00', '2025-06-08 12:45:00', 115, 5);