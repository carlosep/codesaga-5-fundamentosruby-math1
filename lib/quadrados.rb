class Quadrados
	require 'prime'

	def initialize(n)
		@primos = Prime.first n
	end

	def quadrado_da_soma
		@resultado = @primos.sum ** 2
	end

	def soma_dos_quadrados
		resultado = Array.new
		@primos.each do |p|
			resultado.push(p ** 2)
		end
		@resultado = resultado.sum
	end

	def diferenca
		@resultado = quadrado_da_soma - soma_dos_quadrados
	end
end
