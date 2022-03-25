require "date"

def validarFecha(fecha)
  DateTime.parse fecha rescue nil
end

def leerFecha(msj, default)
  fecha = ""

  loop do
    puts msj
    fecha = gets.chomp

    if fecha.eql? ""
      fecha = default
      break
    end

    break if !validarFecha(fecha).nil?
  end

  return DateTime.parse fecha
end

def buscarSigno(fecha)
  signos = { aries: 3, tauro: 4, geminis: 5, cancer: 6, leo: 7, virgo: 8, libra: 9,
             escorpio: 10, sagitario: 11, capricornio: 12, acuario: 1, piscis: 2 }

  begin
    if fecha.day >= 21
      signo = signos.key fecha.month
    else
      signo = signos.key((fecha.month - 1) == 0 ? 12 : (fecha.month - 1))
    end

    return signo
  rescue
    puts "La fecha es Incorrecta"
  end
end

def calcularEdad(nac, act)
  edad = act.year - nac.year

  edad = edad - ((act.month > nac.month || (act.month == nac.month && act.day >= nac.day)) ? 0 : 1)
end

def calcularNumeroSuerte fechaNac
    año = fechaNac.year
    vectAño = año.to_s.split("").drop(2).map {|e| e.to_i}
    
    suma = vectAño.sum
    suma = suma -9 if suma > 9
end

##############     MAIN     ##################

def main
  puts "Bienvenido a Astrodamus"

  loop do
    puts "Presione Enter para comenzar o la letra s para salir"
    menu = gets.chomp

    return if menu.capitalize.eql? "S"

    break if menu.capitalize.eql? ""
  end

  puts "Introduzca por favor su Nombre: default (jesus)"
  nombre = gets.chomp
  nombre = "jesus" if nombre.eql? ""

  fechaNac = leerFecha "Ahora escriba su Fecha de Nacimiento (dd/mm/aaaa), o enter para tomar la de Jesus:", "25/12/0000"

  fechaAct = leerFecha "Indique la Fecha Actual (dd/mm/aaaa) o la letra s tomar la del sistema:", DateTime.now.strftime("%d/%m/%Y")

  signo = buscarSigno(fechaNac)

  return if signo.nil?

  puts ""
  puts "################################"
  puts "####    Astrodamus Dice:   #####"
  puts "...ummmmm #{nombre}, su signo sodiacal es #{signo}"

  edad = calcularEdad fechaNac, fechaAct

  puts "y por lo que veo tiene #{edad} años..."

  numeroSue = calcularNumeroSuerte fechaNac
  
  puts "Si quiere fortura, #{numeroSue} es su número de la suerte."

  puts "Gracias por confiar en Astrodamus!!!"
end

main
