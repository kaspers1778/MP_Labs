(defrule task2.2
	(student (name ?name) (age ?age) (year ?year) (spec "ai") (aver_mark ?aver_mark))
	(test (>= ?age 20)) =>
	(printout t crlf "Student " ?name " is " ?age " years old" crlf))