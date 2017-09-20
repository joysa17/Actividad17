class Product
attr_reader :name, :sizes
	 def initialize(name, *sizes)
	 @name = name
	 @sizes= sizes.map(&:to_i)
	 end

	 

#La tienda desea generar un nuevo catálogo que no incluya el último precio
#correspondiente a cada producto debido a que ya no comercializa productos de talla
#XS.

file = File.open('catalogo.txt','r')
	data = file.readlines
	catalogo = []
	precio = []
	data.each {|line| catalogo.push(line.split(', ').map(&:chomp))}
	catalogo.each do |info| 
	name = info.shift
	#precio = name(1..3)
	
	puts "#{name} tiene los siguientes valores: "

	file = File.open('nuevo_catalogo.txt','a+')

	file.puts "#{name}: tiene los siguientes valores: "
	file.close	
	end #do
 
   
end #clase