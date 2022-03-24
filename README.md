PRUEBA 1

Se evaluará el uso de algoritmos, funciones, bucles, etc., para la resolución de los problemas presentados. Puede usar pseudocódigo así como también cualquier lenguaje de programación como ruby, php, java, etc.

1) La empresa IBM necesita saber cuanto pagar a cada uno de sus empleados, para ello necesita un algoritmo que calcule el salario a pagar, semanalmente, en base a las horas trabajadas y el salario por hora. Si el empleado trabajó mas de 48 horas en la semana, el restante de horas debe calcularse con 50% mas, dado que son horas extras.

2) En una escuela necesitan saber cual es la media de notas de grado de cada sección de alumnos. Para ello, necesitan un algoritmo al cual le pasen la lista de notas y el mismo indique cual es la media de notas de esa sección.

3) Desarrollar un algoritmo que pida el nombre del usuario, la fecha actual y la fecha de nacimiento del usuario. En base a estos datos, el algoritmo debe indicar el signo zodiacal, la edad en años, meses y días y el número de la suerte. El número de la suerte se calcula sumando los dígitos de su año de nacimiento, si el número es mayor a nueve, se resta nueve de manera que el valor esté entre 1 y 9. El signo zodiacal se calcula en base a la siguiente información:

Aries: 21/Marzo - 20/Abril
Tauro: 21/Abril - 20/Mayo
Géminis: 21/Mayo - 20/Junio
Cáncer: 21/Junio - 20/Julio
Leo: 21/Julio - 20/Agosto
Virgo: 21/Agosto - 20/Septiembre
Libra: 21/Septiembre - 20/Octubre
Escorpio: 21/Octubre - 20/Noviembre
Sagitario: 21/Noviembre - 20/Diciembre
Capricornio: 21/Diciembre - 20/Enero
Acuario: 21/Enero - 20/Febrero
Piscis: 21/Febrero - 20/Marzo

4) La financiera Préstamos Corp., necesita saber la probabilidad de que un cliente quede desempleado. Sus analistas lograron calcular la siguiente información: a. Por cada 100 personas que tienen hijos, solo 10 tienen mas de dos hijos, y la mitad de estos queda desempleado un año despues de contratados. b. Por cada 100 personas casadas, el 15% renuncia 3 meses despues de contratados. c. Por cada 100 personas solteras, el 10% renuncia 6 meses despues de contratados. d. Por cada 100 personas que tienen menos de 35 años, 30 quedan desempleados luego de pasar 6 meses. e. Por cada 100 personas mayores de 35 años, 5 quedan desempleados al pasar 6 meses, 20 quedan desempleados despues de 1 año. Desarrolle un algoritmo que permita a los analistas calcular cual es la probabilidad de que una persona quede desempleada. Como parámetros de entrada: edad, estado civil (soltero/casado), cantidad_hijos, fecha_de_cotratacion, tiempo_a_calcular (en meses, por ejemplo: 12) El algoritmo debe calcular la probabilidad de que la persona renuncie o quede desempleada al pasar el tiempo_a_calcular. Ejemplo: calcular_probabilidad(20, soltero, 4, 01/01/2019, 6) => 40% probabilidad

5) La misma financiera del caso anterior, ahora quiere utilizar esa probabilidad para tomar decisiones con respecto a los clientes nuevos. Desarrolle un algoritmo que, en base a los mismos parámetros anteriores, indique si un cliente debe ser aprobado o rechazado.
Si el cliente tiene menos de 20% de probabilidades de quedar desempleado, imprimir que "El cliente debe ser aprobado".
Si el cliente tiene entre 20% y 40% de probabilidades, imprimir "El cliente debe ser revisado manualmente".
Si el cliente tiene mas de 40% de probabilidades de quedar desempleado, imprimir "El cliente debe ser rechazado".
Imprimir adicionalmente las razones del porcentaje, por ejemplo: "Tiene 3 hijos, por lo que tiene 10% de probabilidad"




PRUEBA 2

TweetSec
Intro
Our newest client, TweetSec Ltd., has developed a proprietary method for evaluating password strength. As part of a marketing initiative they'd like us to develop a Twitter bot that will apply the algorithm to any message it receives, and reply with the result.
Enter @YouShallNotPassword
Our product is a Twitter bot written in Ruby. It should:
    • Capture tweets sent to its account
    • Evaluate the 'password strength' of each message
    • Post a reply tweet with the result
The TweetSec Password Strength Evaluator
TweetSec's patented password strength evaluation algorithm consists of three steps. Beginning with the text of the tweet, we must:
    1. Replace any complete English words in the text with any lower-case letter, preferring longer replacements. For example, given 12password34 we should replace the full word 'password' rather than replacing 'pass' or 'sword'.
    2. Find the number of 'character types' represented in the updated text. Character types include:
    • alphabet (A-Z, a-z)
    • digits (0-9)
    • whitespace (spaces, tabs, newline characters)
    • other (punctuation, unicode characters, etc.)
    1. Multiply the number of represented character types by the length of the updated text to arrive at a numerical 'strength' value.
For example, here are some passwords and their strength rating:
    • password1 --> 4
    • passwordfun1 --> 6
    • goat m4n --> 15
    • s0_0per 5nak3 --> 52
Responses
Based on the strength rating of a password, it should be placed into one of three categories:
    • Strong - for strength >= 50
    • Weak - for strength > 10 and strength < 50
    • Unacceptable - for strength =< 10
Strong passwords should receive a congratulatory tweet in response.
Weak passwords should receive a modified version of the original tweet which has been strengthened enough to qualify as strong. The modified version should be no longer than the original, unless it must be lengthened to qualify as strong.
Unacceptable passwords should receive a response suggesting that the sender try again with a better password.
The icebox
While not a requirement at this stage, TweetSec is interested in maintaining the memorability of passwords for their potential clients. If you find yourself with extra time, consider optimizing the way passwords are strengthened to prefer changes that maintain the essence of the original password (for example, foo might become f00 rather than f^o or 6oo).

Deliverables
    • A Github repository containing all code/documentation for the app
Guidelines
    • Feel free to develop any type of Ruby app. A command-line script and a Rails app are both perfectly acceptable, business logic is the priority.
    • Leave a detailed commit history -- no need to write novel-length commit messages, but be descriptive enough that we can follow your progress.
    • We hope this will take 2-4 hours to complete. If you hit 5 hours, stop and push what you have. If you finish much earlier you can try the non-required features above, but keep in mind the client will want to see completed functionality.
