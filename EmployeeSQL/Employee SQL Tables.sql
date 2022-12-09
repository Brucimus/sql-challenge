CREATE TABLE titles (
  title_id VARCHAR PRIMARY KEY NOT NULL,
  title VARCHAR
);

CREATE TABLE department (
  dept_no VARCHAR PRIMARY KEY NOT NULL,
  dept_name VARCHAR NOT NULL
);

CREATE TABLE employees (
  emp_no int PRIMARY KEY NOT NULL,
  emp_title_id VARCHAR NOT NULL,
  birth_date date,
  first_name VARCHAR,
  last_name VARCHAR,
  sex VARCHAR,
  hire_date date NOT NULL,
  FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE deptmanager (
  dept_no VARCHAR NOT NULL,
  emp_no int NOT NULL,
  PRIMARY KEY(dept_no, emp_no),
  FOREIGN KEY (dept_no) REFERENCES department(dept_no),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salary (
  emp_no int NOT NULL,
  salary int NOT NULL,
  PRIMARY KEY(emp_no, salary),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE deptemp (
  emp_no int NOT NULL,
  dept_no VARCHAR NOT NULL,
  PRIMARY KEY(emp_no, dept_no),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES department(dept_no)
);