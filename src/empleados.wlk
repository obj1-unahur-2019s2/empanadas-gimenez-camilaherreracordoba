object galvan {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000
	var totalDinero = 0
	var totalDeuda = 0
	var dinero = 0 
	var sueldo = 15000
	method totalDinero(){
		return totalDinero += dinero.max(0)-totalDeuda.min(0)
	} 
	method totalDeuda(){
		return totalDeuda -= dinero.min(0)+ totalDinero.max(0) 
	}
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo(){
		dinero += sueldo
	} 
	method gastar(cuanto){
		dinero -= cuanto
	}
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var totalCobrado = 0
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	method cobrarSueldo(){
		totalCobrado += self.sueldo()
	}
	
}

object gimenez {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA(empleado) {
    	dinero -= empleado.sueldo()
    	empleado.cobrarSueldo()
}
	/*method pagarA( empleado ) { dinero -= empleado.sueldo() }*/
}


/*
 * 1- si quiero agregar un nuevo empleado Susini, ¿qué método le tengo que poner para que Giménez le pueda pagar el sueldo?
 * 	R: método sueldo
 * 2- dónde aparece el polimórfismo. O sea: qué objetos son polimórficos para qué otro objeto.
 * 	R: todos los empleados son polimórficos al dueño.
 */