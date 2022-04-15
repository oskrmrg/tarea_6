# Crear un aplicación en Ruby que permita almacenar la información de contacto de varios usuarios, los datos requeridos serán el nombre y la edad.
# En caso de que los usuarios sean menores de 18 años, deberán almacenarse por separado.
# Una vez finalizado el ingreso se deberá mostrar ambos listados por pantalla.

listmay = []
listmen = []

loop do
  dat = {}
  print "\nPor favor, ingresa el nombre de la persona: "
    nom = gets.chomp
    dat[:nom] = nom

  print "\nAhora ingresa la edad: "
    edad = gets.chomp.to_i
    dat[:edad] = edad

  if dat [:edad] >= 18
        listmay << dat
  else
        listmen << dat
  end

print "\n¿Desea seguir ingresando datos? (Si: Y / No: N): "
    resp = gets.chomp
    break if resp == "N"
end


puts "\nListado de Personas Mayores de 18 años: "
    p listmay

puts "\nListado de Personas Menores de 18 años: "
    p listmen
