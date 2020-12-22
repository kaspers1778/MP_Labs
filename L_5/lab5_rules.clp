(defrule time1
(Last 7 days)
(0%) =>
(printout t crlf "Not a lot of time to rest" crlf)
(assert (free time is 50%)))

(defrule time2
(Last 7 days)
(50%) =>
(printout t crlf "You have some time to rest" crlf)
(assert (free time is 75%)))

(defrule time3
(Last 7 days)
(100%) =>
(printout t crlf "You have a lot of time to rest" crlf)
(assert (free time is 100%)))

(defrule time4
(Last 1 day)
(0%) =>
(printout t crlf "You have no time to rest" crlf)
(assert (free time is 0%)))

(defrule time5
(Last 1 day)
(50%) =>
(printout t crlf "You have a little time to rest" crlf)
(assert (free time is 5%)))

(defrule time6
(Last 1 day)
(100%) =>
(printout t crlf "You have a couple houres to rest" crlf)
(assert (free time is 15%)))


(defrule weatherWarmDry
(warm)
(sun) =>
(printout t crlf "It's dry and warm outside" crlf)
(assert (weather is warm_and_dry)))

(defrule weatherWarmRainy
(warm)
(rain) =>
(printout t crlf "Is's warm but rainy outside" crlf)
(assert (weather is warm_and_rainy)))

(defrule weatherColdRainy
(cold)
(rain) =>
(printout t crlf "It's cold and rainy outside" crlf)
(assert (weather is cold_and_rainy)))

(defrule weatherColdDry
(cold)
(son) =>
(printout t crlf "It's dry but cold outside" crlf)
(assert (weather is cold_and_dry)))




(defrule ToDo100_1
(free time is 100%)
(weather is warm_and_dry) =>
(printout t crlf "Go to camp" crlf)
(assert (rest)))

(defrule ToDo100_2
(free time is 100%)
(weather is warm_and_rainy) =>
(printout t crlf "Go play under rain" crlf)
(assert (rest)))

(defrule ToDo100_3
(free time is 100%)
(weather is cold_and_dry) =>
(printout t crlf "Go play videogames" crlf)
(assert (rest)))

(defrule ToDo100_4
(free time is 100%)
(weather is cold_and_rain) =>
(printout t crlf "Go make snowman" crlf)
(assert (rest)))





(defrule ToDo75_1
(free time is 75%)
(weather is warm_and_dry) =>
(printout t crlf "Go to camp" crlf)
(assert (rest)))

(defrule ToDo75_2
(free time is 75%)
(weather is warm_and_rainy) =>
(printout t crlf "Go make your homework" crlf)
(assert (study)))

(defrule ToDo75_3
(free time is 75%)
(weather is cold_and_dry) =>
(printout t crlf "Go play videogames" crlf)
(assert (rest)))

(defrule ToDo75_4
(free time is 75%)
(weather is cold_and_rain) =>
(printout t crlf "Go make snowman" crlf)
(assert (rest)))





(defrule ToDo50_1
(free time is 50%)
(weather is warm_and_dry) =>
(printout t crlf "Go to camp" crlf)
(assert (rest)))

(defrule ToDo50_2
(free time is 50%)
(weather is warm_and_rainy) =>
(printout t crlf "Go make some labs" crlf)
(assert (study)))

(defrule ToDo50_3
(free time is 50%)
(weather is cold_and_dry) =>
(printout t crlf "Go make a coursework" crlf)
(assert (study)))

(defrule ToDo50_4
(free time is 50%)
(weather is cold_and_rain) =>
(printout t crlf "Go make snowman" crlf)
(assert (rest)))





(defrule ToDo15_1
(free time is 15%)
(weather is warm_and_dry) =>
(printout t crlf "Go to cinema" crlf)
(assert (rest)))

(defrule ToDo15_2
(free time is 15%)
(weather is warm_and_rainy) =>
(printout t crlf "Go make some labs" crlf)
(assert (study)))

(defrule ToDo15_3
(free time is 15%)
(weather is cold_and_dry) =>
(printout t crlf "Go make a coursework" crlf)
(assert (study)))

(defrule ToDo15_4
(free time is 15%)
(weather is cold_and_rain) =>
(printout t crlf "Go read some book" crlf)
(assert (study)))





(defrule ToDo5_1
(free time is 5%)
(weather is warm_and_dry) =>
(printout t crlf "Go to cinema" crlf)
(assert (rest)))

(defrule ToDo5_2
(free time is 5%)
(weather is warm_and_rainy) =>
(printout t crlf "Go make some labs" crlf)
(assert (study)))

(defrule ToDo5_3
(free time is 5%)
(weather is cold_and_dry) =>
(printout t crlf "Go make a coursework" crlf)
(assert (study)))

(defrule ToDo5_4
(free time is 5%)
(weather is cold_and_rain) =>
(printout t crlf "Go read some book" crlf)
(assert (study)))





(defrule ToDo0_1
(free time is 0%)
(weather is warm_and_dry) =>
(printout t crlf "Go to study at the park" crlf)
(assert (study)))

(defrule ToDo0_2
(free time is 0%)
(weather is warm_and_rainy) =>
(printout t crlf "Go make some labs" crlf)
(assert (study)))

(defrule ToDo0_3
(free time is 0%)
(weather is cold_and_dry) =>
(printout t crlf "Go make a coursework" crlf)
(assert (study)))

(defrule ToDo0_4
(free time is 0%)
(weather is cold_and_rain) =>
(printout t crlf "Go read some book" crlf)
(assert (study)))





