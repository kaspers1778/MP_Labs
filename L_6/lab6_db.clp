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