package com.bank;

import java.time.LocalDateTime;  
import java.time.format.DateTimeFormatter;  
import org.omg.PortableInterceptor.USER_EXCEPTION;

public aspect Transaccion {
	pointcut success() : call(* moneyMake*(..) );
    after() : success() {
    //Aspecto ejemplo: solo muestra este mensaje despu�s de haber creado un usuario 
    	String linea = "Tipo de transaccion: Transaccion Hora: " + java.time.LocalTime.now();
    	System.out.println(linea);
    	Bank.escribirArchivo("src/com/bank/Log.txt", linea);
    	
        
    }
}


