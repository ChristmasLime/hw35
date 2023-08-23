-- Шаг 1
-- Создание ограничения на минимальный возраст студента
ALTER TABLE student
ADD CONSTRAINT age_constraint CHECK (age >= 16);

-- Создание ограничения на уникальность имени студента и ненулевого значения
ALTER TABLE student
ADD CONSTRAINT name_unique UNIQUE (name) WHERE (name IS NOT NULL);

-- Создание ограничения на уникальность пары "имя факультета" - "цвет факультета"
ALTER TABLE faculty
ADD CONSTRAINT name_color_unique UNIQUE (name, color);

-- Добавление значения "20" по умолчанию для столбца возраста студента при вставке без указания возраста
ALTER TABLE student
ALTER COLUMN age SET DEFAULT 20;