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
    cost DECIMAL(10, 2) NOT NULL,
    owner_id INT REFERENCES Person(id)
);

-- Шаг 3
-- JOIN-запрос для получения информации о студентах с их факультетами
SELECT Student.name, Student.age, Faculty.name AS faculty_name
FROM Student
INNER JOIN Faculty ON Student.faculty_id = Faculty.id;

-- JOIN-запрос для получения студентов с аватарками
SELECT Student.name, Student.age
FROM Student
INNER JOIN Avatar ON Student.id = Avatar.student_id;

