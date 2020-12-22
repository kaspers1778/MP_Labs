# LAB_6

1.Create database.
Code:
```
(deftemplate student
	(slot name)	
	(slot age)
	(slot year)
	(slot spec)
	(slot aver_mark))


(deffacts students
	(student (name Vasyan) (age 20) (year 2) (spec "hard") (aver_mark 3.5))
	(student (name Dima) (age 19) (year 2) (spec "ai") (aver_mark 4.2))
	(student (name Dasha) (age 17) (year 2) (spec "soft") (aver_mark 3.0))
	(student (name Nikita) (age 21) (year 3) (spec "hard") (aver_mark 4.8))
	(student (name Nastya) (age 22) (year 5) (spec "soft") (aver_mark 3.9))
	(student (name Vlad) (age 22) (year 1) (spec "ai") (aver_mark 4.0))
	(student (name Evgeniy) (age 22) (year 5) (spec "hard") (aver_mark 3.8))
	(student (name Julia) (age 18) (year 2) (spec "soft") (aver_mark 4.5))
	(student (name Oleg) (age 21) (year 4) (spec "ai") (aver_mark 3.2))
	(student (name Ann) (age 21) (year 4) (spec "soft") (aver_mark 5.0)))
```
2.Solve problems of 3rd(My number in group list) variant.
Code:
```
(defrule task2.1
	(student (name ?name) (age ?age) (year ?year) (spec "ai") (aver_mark ?aver_mark)) =>
	(printout t crlf "Student " ?name " learn "ai" on " ?year " course" crlf))
```
Result:
```
Student Oleg learn ai on 4 course

Student Vlad learn ai on 1 course

Student Dima learn ai on 2 co
```
2.2 Code:
```
(defrule task2.2
	(student (name ?name) (age ?age) (year ?year) (spec "ai") (aver_mark ?aver_mark))
	(test (>= ?age 20)) =>
	(printout t crlf "Student " ?name " is " ?age " years old" crlf))
```
Result:
```
Student Oleg is 21 years old

Student Vlad is 22 years 
```
2.3 Code:
```
(defrule taskk2.3
	(student (name ?name) (age ?age) (year ?year) (spec "ai") (aver_mark ?aver_mark))
	(test (>= ?age 20))
	(test (eq (type ?name) SYMBOL))
	(test (eq (type ?age) INTEGER)) =>
	(printout t crlf "Student " ?name " is " ?age " years old" crlf))
```
Result:
```
Student Oleg is 21 years old

Student Vlad is 22 years
```

2.4 Code:
```
(defrule task2.4
	(student (name ?name) (age ?age) (year ?year) (spec "ai") (aver_mark ?aver_mark))
	(test (>= ?age 20))
	(test (eq (type ?name) SYMBOL))
	(test (eq (type ?age) INTEGER)) 
	(test (>= (+ ?age (- 5 ?year)) 25)) =>
	(printout t crlf "Stident " ?name " is " ?age " years old" crlf))
```
Result:
```
Stident Vlad is 22 years o
```

