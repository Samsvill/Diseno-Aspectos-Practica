package com.bank;
 
public aspect Retiro {

	pointcut success() : call(* moneyWithdrawal*(..) );
    after() : success() {
    	String linea = "Tipo de transaccion: Retiro de dinero - Hora: " + java.time.LocalTime.now();
    	System.out.println(linea);
    	Bank.escribirArchivo("src/com/bank/Log.txt", linea);
	
    }
}
