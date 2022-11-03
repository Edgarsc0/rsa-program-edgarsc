package code;
import java.math.BigInteger;
import java.util.ArrayList;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author esanc
 */
public class rsacoder {
    private int p;
    private int q;
    private int publicKey=0;
    private String abc="___ABCDEFGHIJKLMNÑOPQRSTUVWXYZ1234567890 ";
    public rsacoder(){
    }
    public rsacoder(int p,int q){
        this.p=p;
        this.q=q;
    }

    public int getN(){
        return this.p*this.q;
    }
    public int getFi(){
        return (this.p-1)*(this.q-1);
    }
    public int mcd(int a, int b){
        if(b==0){
            return a;
        }else{
            return mcd(b,a%b);
        }
    }
    //calcula a "e"
    public int getPublicKey(){
        if(this.publicKey!=0){
            return this.publicKey;
        }else{
            ArrayList <Integer> publicKeys=new ArrayList<>();
            for(int i=1;i<=this.getFi();i++){
                if(this.mcd(this.getFi(), i)==1 && i!=1){
                    publicKeys.add(i);
                }
            }
            System.out.println(publicKeys);
            this.publicKey=publicKeys.get((int) Math.floor(Math.random() * (publicKeys.size())));
            return this.publicKey;
        }
    }
    //calcula a "d"
    public int getPrivateKey(){
        for(int i=0;i<=this.getFi();i++){
            if(Math.floorMod(i*this.getPublicKey(), this.getFi())==1){
                return i;
            }
        }
        return 0;
    }
    public BigInteger code(int number){
        BigInteger m=new BigInteger(Integer.toString(number));
        BigInteger e=new BigInteger(Integer.toString(this.getPublicKey()));
        BigInteger n=new BigInteger(Integer.toString(this.getN()));
        return  m.modPow(e, n);
    }
    public String encrypt(String txt){
        String coded="";
        char caracter;
        for(int i=0;i<txt.length();i++){
            caracter=txt.toUpperCase().charAt(i);
            coded+=this.code(abc.indexOf(caracter))+" ";
        }
        return coded;
        
    }
    public BigInteger decode(BigInteger d, BigInteger c, BigInteger n){
        return c.modPow(d, n);
    }
    public String decrypt(BigInteger d,String txt,BigInteger n){
        String decoded="";
        String[] numeros=txt.split(" ");
        for(String numero:numeros){
            BigInteger c=new BigInteger(numero);
            decoded+=abc.charAt(this.decode(d,c,n).intValueExact());
        }
        return decoded;
    }
}
