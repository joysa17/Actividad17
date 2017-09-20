class Dog
	attr_reader :nombre
	def initialize(object)
		@nombre = object[:nombre]
	end 

	def ladrar
		puts "#{nombre} esta ladrando"
	end

end

propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
	
perro1 = Dog.new(propiedades)
perro1.ladrar