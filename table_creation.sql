CREATE TABLE employee (
  	emp_no INTEGER PRIMARY KEY,
  	birth_date DATE NOT NULL,
  	first_name VARCHAR(30) NOT NULL,
  	last_name VARCHAR(30) NOT NULL,
	gender VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL
);

CREATE TABLE titles (
	emp_no INTEGER NOT NULL,
	title VARCHAR(30) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no)
);

CREATE TABLE salaries (
	emp_no INTEGER NOT NULL,
	salary INTEGER NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no)
);

CREATE TABLE departments (
	dept_no VARCHAR(8) PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE dept_emp (
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR(8) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR(8) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
