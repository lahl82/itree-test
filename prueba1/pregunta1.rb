puts "Bienvenido a la Calculadora de Pagos de Nómina Semanal"
puts "Presione Enter para comenzar o la letra s para salir"
menu = gets.chomp

if menu.capitalize.eql?"S"
    return
end

horasBase = 48
bonoHoraExtra = 1.5

puts "Introduzca por favor el valor del Salario x Hora:"
salarioXH = gets.chomp.to_f

puts "Introduzca ahora la cantidad total de horas laboradas en la semana:"
horasRegular = totalHoras = gets.chomp.to_f

if totalHoras > horasBase
    extras = totalHoras - horasBase
    horasRegular = horasBase
    pagoExtras = (extras * salarioXH * bonoHoraExtra).to_f
end

totalPago = (horasRegular * salarioXH).to_f

puts "El monto a pagar por horas en jornada regular es: #{totalPago}"

if !extras.nil?
    puts "El monto a pagar por #{extras} horas extras es: #{pagoExtras}"
    puts "El monto Total del pago es: #{totalPago + pagoExtras}"
end
    
