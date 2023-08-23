-- Шаг 2
-- Создание таблицы Person
CREATE TABLE Person (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    has_license BOOLEAN NOT NULL
);

-- Создание таблицы Car
CREATE TABLE Car (
    id SERIAL PRIMARY KEY,
    brand VARCHAR(255) NOT NULL,
    model VARCHAR(255) NOT NULL,
    cost DECIMAL(10, 2) NOT NULL
);

-- Создание таблицы для связи между Person и Car (многие-ко-многим)
CREATE TABLE PersonCar (
    person_id INT REFERENCES Person(id),
    car_id INT REFERENCES Car(id),
    PRIMARY KEY (person_id, car_id)
);

-- Шаг 3
-- JOIN-запрос для получения информации о студентах с их факультетами
SELECT s.name AS student_name, s.age AS student_age, f.name AS faculty_name
FROM Student s
JOIN Faculty f ON s.faculty_id = f.id;

-- JOIN-запрос для получения студентов с аватарками
SELECT s.name AS student_name, s.age AS student_age
FROM Student s
JOIN Avatar a ON s.id = a.student_id;