-- Creation of Tables
-- CREATE TABLE students (
--     student_id SERIAL PRIMARY KEY,
--     student_name VARCHAR(100),
--     student_number VARCHAR(10) UNIQUE,
-- 	student_email VARCHAR(100)

-- );


-- CREATE TABLE fees (
--     fees_id SERIAL PRIMARY KEY,
--     student_number VARCHAR(20) NOT NULL,
--     amount_paid DECIMAL(10, 2) NOT NULL,
--     total_fee DECIMAL(10, 2) NOT NULL,
-- 	   date_paid DATE,
--     status VARCHAR(20),
--     FOREIGN KEY (student_number) REFERENCES students(student_number)
-- );


-- CREATE TABLE courses (
--     course_code VARCHAR(20) PRIMARY KEY,
--     course_name VARCHAR(100) NOT NULL
-- );


-- CREATE TABLE enrollment (
--     enrollment_id SERIAL PRIMARY KEY,
--     student_number VARCHAR(20) NOT NULL,
--     course_code VARCHAR(20) NOT NULL,
--     enrollment_date DATE,
--     FOREIGN KEY (student_number) REFERENCES students(student_number),
--     FOREIGN KEY (course_code) REFERENCES courses(course_code)
-- );


-- CREATE TABLE lecturers (
--     lecturer_name VARCHAR(100) PRIMARY KEY
-- );


-- CREATE TABLE course_assignments (
--     assignment_id SERIAL PRIMARY KEY,
--     course_code VARCHAR(20) NOT NULL,
--     lecturer_name VARCHAR(100) NOT NULL,
--     FOREIGN KEY (course_code) REFERENCES courses(course_code),
--     FOREIGN KEY (lecturer_name) REFERENCES lecturers(lecturer_name)
-- );


-- CREATE TABLE teaching_assistants (
--     TA_name VARCHAR(100) PRIMARY KEY,  
--     lecturer_name VARCHAR(100)  , 
-- 	FOREIGN KEY (lecturer_name) REFERENCES lecturers(lecturer_name)
-- );


-- ALTER TABLE teaching_assistants
-- ALTER COLUMN lecturer_name DROP NOT NULL;


-- CREATE TABLE lectures_to_ta_assignment (
--     assignment_id SERIAL PRIMARY KEY,
--     course_code VARCHAR(20) NOT NULL,
--     TA_name VARCHAR(100) NOT NULL,
--     FOREIGN KEY (course_code) REFERENCES courses(course_code),
--     FOREIGN KEY (TA_name) REFERENCES teaching_assistants(TA_name)
-- );


-- Inserting Values into Tables
-- INSERT INTO students (student_name, student_number, student_email) VALUES
-- ('Daniel Akwetey Akunyumu-Tetteh', '10975105', 'danieltetteh@gmail.com'),
-- ('Ishaan Bhardwaj', '11004272', 'ishaanbhardwaj@gmail.com'),
-- ('Samia Soleimani', '11010910', 'samiasoleimani@gmail.com'),
-- ('Arthur Ebenezer', '11012330', 'ebenezerarthur@gmail.com'),
-- ('Kumi Kelvin Gyabaah', '11012343', 'kelvingyabaah@gmail.com'),
-- ('Annan Chioma Praise', '11014727', 'chiomaannan@gmail.com'),
-- ('Mohammed Salihu Hamisu', '11014977', 'mohammedhamisu@gmail.com'),
-- ('Daniel Agyin Manford', '11015506', 'danielmanford@gmail.com'),
-- ('Pius Oblie', '11018690', 'piusoblie@gmail.com'),
-- ('Iddrisu Tahiru', '11021544', 'iddrisutahiru@gmail.com'),
-- ('Nyavor Cyril Etornam', '11023595', 'cyrilnyavor@gmail.com'),
-- ('David Kwaku Ntow Anno', '11025159', 'davidanno@gmail.com'),
-- ('Agyepong Kwesi', '11038081', 'agyepongkwesi@gmail.com'),
-- ('Asare Marvin', '11049492', 'marvinasare@gmail.com'),
-- ('Peggy Esinam Somuah', '11049523', 'peggysomuah@gmail.com'),
-- ('Ampomah Samuel', '11053386', 'samuelampomah@gmail.com'),
-- ('Andrews Kwarteng Twum', '11105235', 'andrewstwum@gmail.com'),
-- ('Fiavor Isaac Sedem', '11112276', 'fiavorisaac@gmail.com'),
-- ('Yakubu Tanko Mohammed-Awal', '11116537', 'yakubuawal@gmail.com'),
-- ('Eririe Jeffery', '11116737', 'eririejeffrey@gmail.com'),
-- ('Kafu Kwame Kemeh', '11116804', 'kafukemeh@gmail.com'),
-- ('Nyarko Steven Abrokwah', '11117318', 'stevenabrokwah@gmail.com'),
-- ('Muhammad Nurul Haqq Munagah', '11117536', 'munagahmuhammed@gmail.com'),
-- ('Bernardine Adusei-Okrah', '11123762', 'benardineokrah@gmail.com'),
-- ('Maame Afua Ayisibea Ayisi', '11139245', 'maameayisi@gmail.com'),
-- ('Ansiogya Philemon Kwabena', '11139828', 'ansiogyaphilemon@gmail.com'),
-- ('Antwi Samuel Kojo Anafi', '11164744', 'samuelantwi@gmail.com'),
-- ('Nkansah Boadu Tabi', '11170350', 'nkansahtabi@gmail.com'),
-- ('Wenide Isaac Atta', '11172376', 'attaisaac@gmail.com'),
-- ('John Tenkorang Anim', '11208328', 'johnanim@gmail.com'),
-- ('Abubakar Latifah', '11209640', 'abubakarlatifah@gmail.com'),
-- ('Attu Samuel Idana', '11213307', 'attusamuel@gmail.com'),
-- ('Adorboe Prince Philips', '11218951', 'adorboeprince@gmail.com'),
-- ('Ninson Obed', '11238291', 'ninsonobed@gmail.com'),
-- ('Anewah Vincent', '11246366', 'anewahvincent@gmail.com'),
-- ('Quansah Jeffery', '11252855', 'quansahjeffery@gmail.com'),
-- ('Nuku-Tagbor Joshua', '11252857', 'joshuatagbor@gmail.com'),
-- ('Desmond Afelete Kamasah', '11253931', 'kamasahdesmond@gmail.com'),
-- ('Fordjour Edward John', '11254079', 'johnfordjour@gmail.com'),
-- ('Kudiabor Jonathan Kwabena Ewenam', '11254301', 'ewenamjonathan@gmail.com'),
-- ('Abena Nhyira Nsaako', '11254405', 'nsaakoabena@gmail.com'),
-- ('Dedoo Donatus Dodzi', '11262592', 'dodzidonatus@gmail.com'),
-- ('Ayertey Vanessa Esinam', '11264010', 'esinamneesa@gmail.com'),
-- ('Nyayun Prince', '11275876', 'princenyayun@gmail.com'),
-- ('David Tetteh Ankrah', '11285635', 'ankrahdavid@gmail.com'),
-- ('Sena Anyomi', '11292620', 'senaanyomi@gmail.com'),
-- ('Amponsah Jonathan Boadu', '11293871', 'amponsahboadu@gmail.com'),
-- ('Asare Baffour King David', '11296641', 'davidasare@gmail.com'),
-- ('Amevenku K. Mawuli', '11296662', 'mawuliameveku@gmail.com'),
-- ('Isaac Nii Nortey Barnor', '11297849', 'barnorisaac@gmail.com'),
-- ('Nana K. Fosu Asamoah', '11305528', 'asamoahfosu@gmail.com'),
-- ('Yasmeen Xoladem Korkor Doku', '11330446', 'dokuxoladem@gmail.com'),
-- ('Matthew Kotey Mensah', '11332163', 'mensahmatthew@gmail.com'),
-- ('Fall F. Galas', '11333321', 'galesfall@gmail.com'),
-- ('Awal Mohammed', '11334401', 'awalmohammed@gmail.com'),
-- ('Ahmed Fareed Opare', '11338323', 'ahmedfareed@gmail.com'),
-- ('Derrick Amponsah Amponsah', '11347946', 'amponsahderrick@gmail.com'),
-- ('Freda Elikplim Apetsi', '11348310', 'fredaelikplim@gmail.com'),
-- ('Dabanka Hayet Maame Adwoa Gyasiwaa', '11353826', 'dabankahayet@gmail.com'),
-- ('Edward Opoku Agyemang', '11356825', 'agyemangedward@gmail.com'),
-- ('Nana Kwasi Kwakye', '11358243', 'nanakwakye@gmail.com');


-- INSERT INTO fees (student_number, amount_paid, total_fee, date_paid) VALUES
-- ('10975105', 500.00, 2992.00, '2024-01-10'),
-- ('11004272', 300.00,  2992.00, '2024-02-15'),
-- ('11010910', 200.00,  2992.00, '2024-03-20'),
-- ('11012330', 400.00,  2992.00, '2024-04-10'),
-- ('11012343', 600.00,  2992.00, '2024-05-15'),
-- ('11014727', 450.00,  2992.00, '2024-01-20'),
-- ('11014977', 350.00,  2992.00, '2024-02-25'),
-- ('11015506', 500.00,  2992.00, '2024-03-30'),
-- ('11018690', 250.00,  2992.00, '2024-04-05'),
-- ('11021544', 300.00,  2992.00, '2024-05-10'),
-- ('11023595', 700.00,  2992.00, '2024-01-15'),
-- ('11025159', 200.00,  2992.00, '2024-02-20'),
-- ('11038081', 400.00,  2992.00, '2024-03-25'),
-- ('11049492', 600.00,  2992.00, '2024-04-30'),
-- ('11049523', 500.00, 2992.00,  '2024-05-05'),
-- ('11053386', 300.00, 2992.00, '2024-01-18'),
-- ('11105235', 200.00, 2992.00, '2024-03-28'),
-- ('11112276', 400.00, 2992.00, '2024-03-28'),
-- ('11116537', 600.00,  2992.00, '2024-04-02'),
-- ('11116737', 500.00,  2992.00, '2024-05-07'),
-- ('11116804', 300.00,  2992.00, '2024-01-20'),
-- ('11117318', 200.00,  2992.00, '2024-02-25'),
-- ('11117536', 400.00,  2992.00, '2024-03-30'),
-- ('11123762', 600.00,  2992.00, '2024-04-05'),
-- ('11139245', 500.00, 2992.00,  '2024-05-10'),
-- ('11139828', 300.00,  2992.00, '2024-01-22'),
-- ('11164744', 200.00, 2992.00,  '2024-02-27'),
-- ('11170350', 400.00,  2992.00, '2024-03-05'),
-- ('11172376', 600.00,  2992.00, '2024-04-10'),
-- ('11208328', 500.00,  2992.00, '2024-05-15'),
-- ('11209640', 300.00,  2992.00, '2024-01-25'),
-- ('11213307', 200.00,  2992.00, '2024-02-28'),
-- ('11218951', 400.00,  2992.00, '2024-03-10'),
-- ('11238291', 600.00, 2992.00,  '2024-04-15'),
-- ('11246366', 500.00,  2992.00, '2024-05-20'),
-- ('11252855', 300.00,  2992.00, '2024-01-28'),
-- ('11252857', 200.00,  2992.00, '2024-02-28'),
-- ('11253931', 400.00, 2992.00,  '2024-03-15'),
-- ('11254079', 600.00,  2992.00, '2024-04-20'),
-- ('11254301', 500.00, 2992.00,'2024-04-20'),
-- ('11254405', 300.00,  2992.00, '2024-01-30'),
-- ('11262592', 200.00,  2992.00, '2024-03-02'),
-- ('11264010', 400.00,  2992.00, '2024-03-17'),
-- ('11275876', 600.00,  2992.00, '2024-04-22'),
-- ('11285635', 500.00,  2992.00, '2024-05-27'),
-- ('11292620', 300.00,  2992.00, '2024-02-02'),
-- ('11293871', 200.00,  2992.00, '2024-03-04'),
-- ('11296641', 400.00,  2992.00, '2024-03-19'),
-- ('11296662', 600.00,  2992.00, '2024-04-24'),
-- ('11297849', 500.00,  2992.00, '2024-05-29'),
-- ('11305528', 300.00,  2992.00, '2024-02-04'),
-- ('11330446', 200.00,  2992.00, '2024-03-06'),
-- ('11332163', 400.00,  2992.00, '2024-03-21'),
-- ('11333321', 600.00,  2992.00, '2024-04-26'),
-- ('11334401', 500.00,  2992.00, '2024-05-31'),
-- ('11338323', 300.00,  2992.00, '2024-02-06'),
-- ('11347946', 200.00,  2992.00, '2024-03-08'),
-- ('11348310', 400.00,  2992.00, '2024-03-23'),
-- ('11353826', 600.00,  2992.00, '2024-04-28'),
-- ('11356825', 750.00,  2992.00, '2024-03-20'),
-- ('11356825', 750.00,  2992.00, '2024-03-20');


-- ALTER TABLE fees
-- DROP COLUMN status;


-- INSERT INTO courses (course_code, course_name) VALUES
-- ('CPEN 202', 'Computer system design'),
-- ('CPEN 204', 'Data structures and Algorithms'),
-- ('CPEN 206', 'Linear circuits'),
-- ('CPEN 208', 'Software Engineering'),
-- ('CPEN 212', 'Data Communications'),
-- ('SENG202', 'Differential equations'),
-- ('CBAS210', 'Academic Writing II');

-- SELECT * FROM courses


-- INSERT INTO enrollment (student_number, course_code, enrollment_date) VALUES
-- ('11049492', 'CBAS210', '2024-02-25'),
-- ('11049523', 'CBAS210', '2024-02-25'),
-- ('11170350', 'CBAS210', '2024-02-25'),
-- ('11172376', 'CBAS210', '2024-02-25'),
-- ('11262592', 'CBAS210', '2024-02-25'),
-- ('11264010', 'CBAS210', '2024-02-25'),
-- ('11338323', 'CBAS210', '2024-02-25'),
-- ('11347946', 'CBAS210', '2024-02-25'),
-- ('11254079', 'CPEN 212', '2024-05-15'),
-- ('11023595', 'CPEN 212', '2024-05-15'),
-- ('11123762', 'CPEN 212', '2024-05-15'),
-- ('11139245', 'CPEN 212', '2024-05-15'),
-- ('11253931', 'CPEN 212', '2024-05-15'),
-- ('11254079', 'CPEN 212', '2024-05-15'),
-- ('11330446', 'CPEN 212', '2024-05-15'),
-- ('11332163', 'CPEN 212', '2024-05-15'),
-- ('11014727', 'CPEN 206', '2024-03-20'),
-- ('11014977', 'CPEN 206', '2024-03-20'),
-- ('11116737', 'CPEN 206', '2024-03-20'),
-- ('11116804', 'CPEN 206', '2024-03-20'),
-- ('11238291', 'CPEN 206', '2024-03-20'),
-- ('11246366', 'CPEN 206', '2024-03-20'),
-- ('11296641', 'CPEN 206', '2024-03-20'),
-- ('11296662', 'CPEN 206', '2024-03-20'),
-- ('11015506', 'CPEN 208', '2024-04-10'),
-- ('11018690', 'CPEN 208', '2024-04-10'),
-- ('11117318', 'CPEN 208', '2024-04-10'),
-- ('11117536', 'CPEN 208', '2024-04-10'),
-- ('11252855', 'CPEN 208', '2024-04-10'),
-- ('11252857', 'CPEN 208', '2024-04-10'),
-- ('11297849', 'CPEN 208', '2024-04-10'),
-- ('11305528', 'CPEN 208', '2024-04-10'),
-- ('11012330', 'CPEN 204', '2024-02-15'),
-- ('11012343', 'CPEN 204', '2024-02-15'),
-- ('11112276', 'CPEN 204', '2024-02-15'),
-- ('11116537', 'CPEN 204', '2024-02-15'),
-- ('11213307', 'CPEN 204', '2024-02-15'),
-- ('11218951', 'CPEN 204', '2024-02-15'),
-- ('11292620', 'CPEN 204', '2024-02-15'),
-- ('11293871', 'CPEN 204', '2024-02-15'),
-- ('11356825', 'CPEN 204', '2024-02-15'),
-- ('11025159', 'SENG202', '2024-01-20'),
-- ('11038081', 'SENG202', '2024-01-20'),
-- ('11139828', 'SENG202', '2024-01-20'),
-- ('11164744', 'SENG202', '2024-01-20'),
-- ('11254301', 'SENG202', '2024-01-20'),
-- ('11254405', 'SENG202', '2024-01-20'),
-- ('11333321', 'SENG202', '2024-01-20'),
-- ('11334401', 'SENG202', '2024-01-20'),
-- ('10975105', 'CPEN 202', '2024-01-10'),
-- ('11004272', 'CPEN 202', '2024-01-10'),
-- ('11010910', 'CPEN 202', '2024-01-10'),
-- ('11053386', 'CPEN 202', '2024-01-10'),
-- ('11105235', 'CPEN 202', '2024-01-10'),
-- ('11208328', 'CPEN 202', '2024-01-10'),
-- ('11209640', 'CPEN 202', '2024-01-10'),
-- ('11275876', 'CPEN 202', '2024-01-10'),
-- ('11285635', 'CPEN 202', '2024-01-10'),
-- ('11348310', 'CPEN 202', '2024-01-10'),
-- ('11353826', 'CPEN 202', '2024-01-10');


-- INSERT INTO lecturers (lecturer_name) VALUES
-- ('Agyare Debrah'),
-- ('Dr. Margaret Ansah Richardson'),
-- ('Dr. Godfrey Augustus Mills'),
-- ('Mr. John Asiammah'),
-- ('Dr. Isaac Adjaye Aboagye'),
-- ('Dr. John Kutor'),
-- ('Dr. Percy Okae');


-- INSERT INTO course_assignments (course_code, lecturer_name) VALUES
-- ('CPEN 202', 'Agyare Debrah'),
-- ('CPEN 204', 'Dr. Margaret Ansah Richardson'),
-- ('CPEN 206', 'Dr. Godfrey Augustus Mills'),
-- ('CPEN 208', 'Mr. John Asiammah'),
-- ('CPEN 212', 'Dr. Isaac Adjaye Aboagye'),
-- ('SENG202', 'Dr. John Kutor'),
-- ('CBAS210', 'Dr. Percy Okae');


-- INSERT INTO teaching_assistants (TA_name) VALUES
-- ('Bamzy'),
-- ('Foster'),
-- ('Hakeem'),
-- ('Samed'),
-- ('Ben'),
-- ('Kevin');


-- INSERT INTO lectures_to_ta_assignment (course_code, ta_name) VALUES
-- ('CPEN 202', 'Bamzy'),
-- ('CPEN 204', 'Foster'),
-- ('CPEN 206', 'Hakeem'),
-- ('CPEN 208', 'Foster'),
-- ('CPEN 212', 'Samed'),
-- ('SENG202', 'Ben'),
-- ('CBAS210', 'Kevin');


CREATE OR REPLACE FUNCTION public.get_outstanding_fees()
RETURNS JSON AS $$
DECLARE
    result JSON;
BEGIN
    SELECT json_agg(
        json_build_object(
            'student_id', s.student_id,
            'student_name', s.name,
            'outstanding_fee', COALESCE(SUM(f.fee_amount) - SUM(p.payment_amount), 0)
        )
    ) INTO result
    FROM public.students s
    LEFT JOIN public.fees f ON s.student_id = f.student_id
    LEFT JOIN public.payments p ON s.student_id = p.student_id
    GROUP BY s.student_id, s.name;
    RETURN result;
END;
$$ LANGUAGE plpgsql;













