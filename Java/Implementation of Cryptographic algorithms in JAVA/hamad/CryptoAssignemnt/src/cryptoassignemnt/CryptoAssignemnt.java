/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cryptoassignemnt;

import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Base64;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import javax.xml.bind.DatatypeConverter;

/**
 *
 * @author Hammad
 */
public class CryptoAssignemnt {

    /**
     * @param args the command line arguments
     */
     public static String decrypt(String key, String initVector, String encrypted) {
        try {
            IvParameterSpec iv = new IvParameterSpec(initVector.getBytes("UTF-8"));
            SecretKeySpec skeySpec = new SecretKeySpec(key.getBytes("UTF-8"), "AES");

            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5PADDING");
            cipher.init(Cipher.DECRYPT_MODE, skeySpec, iv);
            System.out.println("length : "+encrypted.length());
            
            byte[] decordedValue = DatatypeConverter.parseBase64Binary(encrypted);
            byte[] original = cipher.doFinal(decordedValue);

            return new String(original);
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return null;
    }
    public static String encrypt(String key, String initVector, String value) {
        try {
            IvParameterSpec iv = new IvParameterSpec(initVector.getBytes("UTF-8"));
            SecretKeySpec skeySpec = new SecretKeySpec(key.getBytes("UTF-8"), "AES");

            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5PADDING");
            cipher.init(Cipher.ENCRYPT_MODE, skeySpec, iv);

            byte[] encrypted = cipher.doFinal(value.getBytes());
            String encryptedValue = DatatypeConverter.printBase64Binary(encrypted);
            String s = new String(encryptedValue);
            System.out.println("encrypted string: "+ s);
            return s;
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return null;
    }
    public static void main(String[] args) {
        SecureRandom random;
        try {
            random = SecureRandom.getInstance("SHA1PRNG");
            byte bytes[] = new byte[20];
            random.nextBytes(bytes);
            String s = new String(bytes);
            System.out.println("Text Decryted : " + s +" length : "+s.length());
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(CryptoAssignemnt.class.getName()).log(Level.SEVERE, null, ex);
        }
        String key = "Bar12345Bar12345"; // 128 bit key
        String initVector = "RandomInitVector"; // 16 bytes IV
        //encrypt(key, initVector, "Hello World");
        System.out.println(decrypt(key, initVector,encrypt(key, initVector, "Hello World")));

}
    
}
