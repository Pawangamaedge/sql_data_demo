use demo;

CREATE TABLE events (
    event_id INT AUTO_INCREMENT PRIMARY KEY,
    event_name VARCHAR(50),
    event_date DATE,
    event_time TIME,
    event_date_time DATETIME,
    event_time_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO events (event_name, event_date, event_time, event_date_time) VALUES
('Valentine\'s Day', '2025-02-14', '18:30:00', '2025-02-14 18:30:00'),
('Spring Festival', '2025-04-01', '10:00:00', '2025-04-01 10:00:00'),
('Company Retreat', '2025-05-25', '08:00:00', '2025-05-25 08:00:00'),
('Music Concert', '2025-06-20', '20:00:00', '2025-06-20 20:00:00'),
('Tech Conference', '2025-09-15', '09:30:00', '2025-09-15 09:30:00'),
('Art Exhibition', '2025-10-10', '16:00:00', '2025-10-10 16:00:00'),
('Thanksgiving Dinner', '2025-11-27', '19:00:00', '2025-11-27 19:00:00'),
('Black Friday Sale', '2025-11-29', '00:00:00', '2025-11-29 00:00:00'),
('Winter Solstice', '2025-12-21', '05:00:00', '2025-12-21 05:00:00'),
('Easter Celebration', '2025-04-20', '12:00:00', '2025-04-20 12:00:00'),
('Graduation Ceremony', '2025-06-30', '15:00:00', '2025-06-30 15:00:00'),
('Diwali Festival', '2025-11-12', '20:00:00', '2025-11-12 20:00:00'),
('Boxing Day', '2025-12-26', '13:00:00', '2025-12-26 13:00:00'),
('Cyber Monday', '2025-12-01', '00:00:00', '2025-12-01 00:00:00'),
('Autumn Fair', '2025-09-25', '10:00:00', '2025-09-25 10:00:00'),
('Charity Run', '2025-03-15', '06:00:00', '2025-03-15 06:00:00'),
('Book Fair', '2025-07-10', '11:00:00', '2025-07-10 11:00:00'),
('Science Expo', '2025-08-05', '14:00:00', '2025-08-05 14:00:00'),
('New Year\'s Resolution', '2025-12-31', '08:00:00', '2025-12-31 08:00:00');

select * from events;

