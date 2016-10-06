# Regresa true si encuentra un numero de cuenta.

print "Proporcione su número de cuenta (deben ser 10 dígitos): "
string = gets.chomp

def format_validate(string)
  "VALIDATED" if string =~ (/^\d{4}-\d{3}-\d{3}$/)
end

# Regresa un numero de cuenta si existe dentro del string y nil en el caso contrario.

def number_acount(string)
  "Número de cuenta: #{string}" if string =~ /\d{4}-?\d{3}-?\d{3}/
end

# Regresa un array con los números de cuenta que existen dentro del string y un array vacío en el caso contrario.

def scan_counts(string)
  string.scan(/(\d{4}-?\d{3}-?\d{3})+/)
end

# Regresa un string donde si existen números de cuenta estos tendran remplazados por "X" los primeros siete numeros. ej. "XXXX-XXX-234"

def confirmacion_cuenta(string)
  string.gsub(/\d{4}-?\d{3}/, "XXXX-XXX-")
end

# Regresa un string formateado donde cualquier número de diez dígitos seguido o si tiene puntos en vez 
# de guiones lo regresa a su formato original donde usa guiones para dividir los diez dígitos. 
# Si encuentra un numero de menos dígitos no debería remplazarlo.


def formato_cuentas(string)
  formato = string.sub /(\d{4})\.?(\d{3})\.?(\d{3})/, '\1-\2-\3'
  if formato.length < 12 || formato.length > 12
    "Número incorrecto, verifique su número de cuenta"
  else
    formato
  end
end

p format_validate(string) == "VALIDATED"
p number_acount(string) 
p scan_counts(string)
p confirmacion_cuenta(string)
p formato_cuentas(string)