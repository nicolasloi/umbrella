CREATE TABLE t_activity (
                          activity_id serial PRIMARY KEY NOT NULL ,
                          name_activity VARCHAR ( 30 ) UNIQUE NOT NULL
);



CREATE TABLE t_weather (
                          weather_id serial PRIMARY KEY NOT NULL ,
                          name_weather VARCHAR ( 30 ) UNIQUE NOT NULL
);



CREATE TABLE t_temperature (
                            temp_id serial PRIMARY KEY NOT NULL ,
                            temp_name VARCHAR ( 30 ) UNIQUE NOT NULL
);



CREATE TABLE t_environ (
                           environ_id serial PRIMARY KEY NOT NULL ,
                           environ_name  VARCHAR ( 30 ) UNIQUE NOT NULL
);



CREATE TABLE t_season (
                            season_id serial PRIMARY KEY NOT NULL ,
                            season_name VARCHAR ( 30 ) UNIQUE NOT NULL
);



CREATE TABLE t_activity_weather (
                                    weather_id INT NOT NULL ,
                                    activity_id INT NOT NULL ,
                                    score int NOT NULL,
                                    PRIMARY KEY (weather_id, activity_id),
                                    FOREIGN KEY (weather_id) REFERENCES  t_weather (weather_id),
                                    FOREIGN KEY (activity_id) REFERENCES  t_activity (activity_id)
);



CREATE TABLE t_activity_temperature (
                                    temp_id INT NOT NULL ,
                                    activity_id INT NOT NULL ,
                                    PRIMARY KEY (temp_id, activity_id),
                                    FOREIGN KEY (temp_id) REFERENCES  t_temperature (temp_id),
                                    FOREIGN KEY (activity_id) REFERENCES  t_activity (activity_id)
);



CREATE TABLE t_activity_season (
                                        season_id INT NOT NULL ,
                                        activity_id INT NOT NULL ,
                                        PRIMARY KEY (season_id, activity_id),
                                        FOREIGN KEY (season_id) REFERENCES  t_season (season_id),
                                        FOREIGN KEY (activity_id) REFERENCES  t_activity (activity_id)
);



CREATE TABLE t_activity_environ (
                                    environ_id INT NOT NULL ,
                                    activity_id INT NOT NULL ,
                                    PRIMARY KEY (environ_id, activity_id),
                                    FOREIGN KEY (environ_id) REFERENCES  t_environ (environ_id),
                                    FOREIGN KEY (activity_id) REFERENCES  t_activity (activity_id)
);



INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Badminton');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Basketball');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Bowling');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Cinéma');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Course à pied');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Cyclisme');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Equitation');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Escalade');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Escape Game');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Football');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Hockey sur glace');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Laser Game');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Mini-Golf');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Musée');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Natation');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Paint-Ball');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Parcours');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Patinage');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Peau de Phoque');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Pedalo');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Planche à voile');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Pétanque');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Rafting');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Randonnée');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Rugby');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Saut à l’ élastique');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Ski');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Ski de fond');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Ski nautique');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Snow');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Squash');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Stande de tir');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Surf');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Tennis');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Tennis de table');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Tir à l’arc');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Tour Hélicoptère');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Trampoline');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Uni-Hockey');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Volley');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'VTT');
INSERT INTO public.t_activity (activity_id, name_activity) VALUES (DEFAULT, 'Piscine-ext');



INSERT INTO public.t_season (season_id, season_name) VALUES (DEFAULT, 'Autumn');
INSERT INTO public.t_season (season_id, season_name) VALUES (DEFAULT, 'Summer');
INSERT INTO public.t_season (season_id, season_name) VALUES (DEFAULT, 'Spring');
INSERT INTO public.t_season (season_id, season_name) VALUES (DEFAULT, 'Winter');



INSERT INTO public.t_weather (weather_id, name_weather) VALUES (DEFAULT, 'Orageux');
INSERT INTO public.t_weather (weather_id, name_weather) VALUES (DEFAULT, 'Enneigé');
INSERT INTO public.t_weather (weather_id, name_weather) VALUES (DEFAULT, 'Nuageux');
INSERT INTO public.t_weather (weather_id, name_weather) VALUES (DEFAULT, 'Pluvieux');
INSERT INTO public.t_weather (weather_id, name_weather) VALUES (DEFAULT, 'Ensoleillée');



INSERT INTO public.t_temperature (temp_id, temp_name) VALUES (DEFAULT, 'Hot');
INSERT INTO public.t_temperature (temp_id, temp_name) VALUES (DEFAULT, 'Cold');
INSERT INTO public.t_temperature (temp_id, temp_name) VALUES (DEFAULT, 'Medium');



INSERT INTO public.t_environ (environ_id, environ_name) VALUES (DEFAULT, 'inside');
INSERT INTO public.t_environ (environ_id, environ_name) VALUES (DEFAULT, 'outside');



INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 1, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 1, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 1, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (4, 1, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 1, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 2, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 2, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 2, 2);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (4, 2, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 2, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 3, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 3, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 3, 4);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (4, 3, 4);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 3, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 4, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 4, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 4, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (4, 4, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 4, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 5, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 5, 2);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 5, 3);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (4, 5, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 5, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 6, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 6, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 6, 3);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (4, 6, 2);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 6, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 7, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 7, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 7, 2);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (4, 7, 2);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 7, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 8, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 8, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 8, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (4, 8, 4);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 8, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 9, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 9, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 9, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (4, 9, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 9, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 10, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 10, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 10, 3);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (4, 10, 2);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 10, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 11, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 11, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 11, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (4, 11, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 11, 3);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 12, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 12, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 12, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (4, 12, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 12, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 13, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 13, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 13, 2);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (4, 13, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 13, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 14, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 14, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 14, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (4, 14, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 14, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 15, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 15, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 15, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 15, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 15, 2);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 16, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 16, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 16, 2);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (4, 16, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 16, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 17, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 17, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 17, 3);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (4, 17, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 17, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 18, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 18, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 18, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (4, 18, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 18, 2);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 19, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 19, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 19, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (4, 19, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 19, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 20, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 20, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 20, 2);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (4, 20, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 20, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 21, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 21, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 21, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (4, 21, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 21, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 23, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 23, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 23, 2);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (4, 23, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 23, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 24, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 24, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 24, 2);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (4, 24, 2);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 24, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 25, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 25, 3);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 25, 3);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (4, 25, 3);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 25, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 26, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 26, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 26, 2);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (4, 26, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 26, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 27, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 27, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 27, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (4, 27, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 27, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 28, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 28, 2);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 28, 3);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (4, 28, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 28, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 29, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 29, 2);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 29, 3);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (4, 29, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 29, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 30, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 30, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 30, 2);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (4, 30, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 30, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 31, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 31, 2);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 31, 3);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (4, 31, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 31, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 32, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 32, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 32, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (4, 32, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 32, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 33, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 33, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 33, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (4, 33, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 33, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 34, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 34, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 34, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (4, 34, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 34, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 35, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 35, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 35, 2);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (4, 35, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 35, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 36, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 36, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 36, 3);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (4, 36, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 36, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 37, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 37, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 37, 2);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (4, 37, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 37, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 38, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 38, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 38, 3);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (4, 38, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 38, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 39, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 39, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 39, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (4, 39, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 39, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 41, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 41, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 41, 2);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (4, 41, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 41, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 42, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 42, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 42, 3);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (4, 42, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 42, 5);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (1, 43, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (2, 43, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (3, 43, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (4, 43, 1);
INSERT INTO public.t_activity_weather (weather_id, activity_id, score) VALUES (5, 43, 5);



INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (3, 1);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (3, 2);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (3, 3);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (3, 4);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (2, 4);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (3, 5);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (3, 6);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (3, 7);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (3, 8);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (3, 9);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (2, 9);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (3, 10);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (2, 11);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (3, 12);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (2, 12);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (3, 13);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (3, 14);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (2, 14);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (3, 15);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (2, 15);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (3, 16);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (2, 16);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (3, 17);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (2, 18);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (2, 19);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (1, 20);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (3, 20);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (1, 21);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (3, 21);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (1, 23);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (3, 23);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (1, 24);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (3, 24);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (1, 25);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (3, 25);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (2, 25);;
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (1, 27);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (3, 27);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (2, 28);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (3, 28);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (2, 29);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (3, 29);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (1, 30);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (3, 30);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (2, 31);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (3, 31);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (2, 32);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (3, 32);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (2, 33);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (3, 33);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (1, 34);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (1, 35);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (3, 35);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (1, 36);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (3, 36);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (1, 37);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (3, 37);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (1, 38);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (2, 39);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (3, 39);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (1, 41);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (3, 41);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (1, 42);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (3, 42);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (1, 43);
INSERT INTO public.t_activity_temperature (temp_id, activity_id) VALUES (3, 43);



INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (1, 1);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (2, 1);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (3, 1);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (4, 1);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (1, 2);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (3, 2);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (1, 3);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (2, 3);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (3, 3);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (4, 3);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (1, 4);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (2, 4);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (3, 4);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (4, 4);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (1, 5);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (2, 5);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (3, 5);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (4, 5);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (1, 6);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (2, 6);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (3, 6);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (1, 7);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (2, 7);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (3, 7);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (1, 8);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (2, 8);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (3, 8);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (1, 9);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (2, 9);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (3, 9);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (4, 9);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (1, 10);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (2, 10);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (3, 10);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (4, 11);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (1, 12);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (2, 12);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (3, 12);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (4, 12);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (1, 13);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (2, 13);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (3, 13);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (1, 14);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (2, 14);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (3, 14);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (4, 14);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (1, 15);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (2, 15);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (3, 15);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (4, 15);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (1, 16);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (2, 16);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (3, 16);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (1, 17);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (2, 17);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (3, 17);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (4, 18);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (4, 19);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (1, 20);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (2, 20);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (2, 21);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (3, 21);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (1, 23);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (2, 23);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (3, 23);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (1, 24);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (2, 24);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (1, 25);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (2, 25);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (3, 25);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (4, 25);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (2, 26);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (3, 26);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (1, 27);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (2, 27);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (3, 27);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (4, 28);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (4, 29);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (2, 30);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (3, 30);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (4, 31);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (1, 32);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (2, 32);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (3, 32);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (4, 32);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (1, 33);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (2, 33);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (3, 33);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (4, 33);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (2, 34);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (1, 35);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (2, 35);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (3, 35);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (1, 36);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (2, 36);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (3, 36);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (1, 37);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (2, 37);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (3, 37);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (1, 38);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (2, 38);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (3, 38);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (1, 39);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (2, 39);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (3, 39);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (4, 39);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (1, 41);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (2, 41);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (3, 41);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (1, 42);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (2, 42);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (3, 42);
INSERT INTO public.t_activity_season (season_id, activity_id) VALUES (2, 43);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (1, 1);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (2, 1);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (2, 2);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (1, 3);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (1, 4);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (2, 5);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (2, 6);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (2, 7);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (1, 8);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (2, 8);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (1, 9);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (2, 10);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (1, 11);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (1, 12);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (2, 13);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (1, 14);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (1, 15);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (1, 16);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (2, 17);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (1, 18);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (2, 19);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (2, 20);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (2, 21);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (2, 23);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (2, 24);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (2, 25);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (2, 26);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (2, 27);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (2, 28);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (2, 29);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (2, 30);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (2, 31);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (1, 32);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (1, 33);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (2, 34);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (2, 35);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (2, 36);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (2, 37);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (2, 38);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (1, 39);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (2, 41);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (2, 42);
INSERT INTO public.t_activity_environ (environ_id, activity_id) VALUES (2, 43);
