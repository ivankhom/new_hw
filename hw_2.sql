create table if not exists employee(
id SERIAL primary key,
name VARCHAR not null,
department VARCHAR not null,
chief INTEGER references employee(id) 
);