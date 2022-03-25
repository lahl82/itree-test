require "json"

def varCantHijos(var, lapso)
  if var > 2
    return 50 if lapso >= 12
  end
  
  return 0
end

def varEstaCivil(var, lapso)
  if var.eql? "casado"
    return 15 if lapso >= 3
  elsif var.eql? "soltero"
    return 10 if lapso >= 6
  end

  return 0
end

def varEdad(var, lapso)
  if var < 35
    return 30 if lapso >= 6
  else
    return 20 if lapso >= 12

    return 5 if lapso >= 6
  end

  return 0
end

def main
  puts "Calculadora de Probabilidad de desempleo"
  puts "El programa leerá un archivo llamado variables.json"
  puts "ubicado en la misma carpeta de este programa"
  puts "EL FORMATO DEL ARCHIVO DEBE SER:"
  puts "{edad, estado civil, cant hijos, fecha contratacion, tiempo a calcular}"
  puts "Ejm:"
  puts "['edad':20, 'estado_civil':'soltero','cantidad_hijos':4, 'fecha_contratacion':'01/01/2019', 'tiempo_a_calcular':6]"

  loop do
    puts "Presione Enter para comenzar o la letra s para salir"
    menu = gets.chomp

    return if menu.capitalize.eql? "S"

    break if menu.capitalize.eql? ""
  end

  begin
    file = File.open "variables.json"

    variableJS = JSON.parse file.read, symbolize_names: true

    probabilidades = []

    lapso = variableJS[:tiempo_a_calcular].to_i

    probabilidades.push varEdad variableJS[:edad].to_i, lapso
    probabilidades.push varEstaCivil variableJS[:estado_civil], lapso
    probabilidades.push varCantHijos variableJS[:cantidad_hijos].to_i, lapso
    
    puts "Tiempo a Calcular : #{variableJS[:tiempo_a_calcular]} meses"
    puts "Probabilidad x Edad: #{variableJS[:edad]} => #{probabilidades[0]}%"
    puts "Probabilidad x Estado Civil: #{variableJS[:estado_civil]} => #{probabilidades[1]}%"
    puts "Probabilidad x Cantidad de Hijos: #{variableJS[:cantidad_hijos]} => #{probabilidades[2]}%"

    puts "La probabilidad es del #{probabilidades.sum}%"
  rescue
    puts "Se produjo un error en la lectura del archivo."
  end
end

main
