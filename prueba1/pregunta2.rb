require "json"

puts "Bienvenido a la Calculadora de Promedio de Notas"
puts "El programa leerá un archivo llamado notas.json"
puts "ubicado en la misma carpeta de este programa"
puts "EL FORMATO DEL ARCHIVO DEBE SER:"
puts "[nota1, nota2, nota3, ..., notaN]"
puts ""
puts "Presione Enter para comenzar o la letra s para salir"
menu = gets.chomp

if menu.capitalize.eql? "S"
  return
end

begin
  file = File.open "notas.json"

  notasJS = JSON.parse file.read

  cantidad = notasJS.count

  promedio = (notasJS.sum.to_f / cantidad)

  puts "El promedio de #{cantidad} notas es: #{promedio}"
rescue
  puts "Se produjo un error en la lectura del archivo."
end