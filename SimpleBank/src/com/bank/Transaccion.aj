package com.bank;

public aspect Transaccion {
	pointcut success() : call(* moneyMake*(..) );
    after() : success() {
    	String linea = "Tipo de transaccion: Transaccion - Hora: " + java.time.LocalTime.now();
    	System.out.println(linea);
    	Bank.escribirArchivo("src/com/bank/Log.txt", linea);
    	
        
    }
}


