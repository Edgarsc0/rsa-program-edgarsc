
import code.rsacoder;
import java.math.BigInteger;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */

/**
 *
 * @author esanc
 */
public class pruebas {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        rsacoder obj=new rsacoder(29,19);
        /*System.out.println(obj.getPublicKey());
        System.out.println(obj.getFi());
        System.out.println(obj.getPrivateKey());*/
        /*System.out.println("Llave publica: "+obj.getPublicKey());
        System.out.println("Llave privada: "+obj.getPrivateKey());
        System.out.println("Fi: "+obj.getFi());
        System.out.println("N: "+obj.getN());
        System.out.println("Cifrado: "+obj.code(1));**/
        System.out.println((float)17/(float)8);
        //System.out.println("Decodificar: "+obj.decode(obj.code(1)));
        //System.out.println(obj.decrypt(new BigInteger("499"),"205 512 269 363 30 325 512 289 30 197 9 80 363 432 30 363 278 363 278 363 278 363 278 363 278 363 363 278 30 289 30 310 197 112 80 512 30 112 512 256 68 363", new BigInteger("551")));

    }
    
}
