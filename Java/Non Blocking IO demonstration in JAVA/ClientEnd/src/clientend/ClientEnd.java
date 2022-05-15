/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package clientend;


import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import  java.nio.*;
import java.nio.channels.*;
import java.util.*;


public class ClientEnd {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {

        String string1 = "Sending a test message";
        SocketTest test1 = new SocketTest(string1);
        Thread thread = new Thread(test1);
        thread.start();
        
    }
    
     static class SocketTest implements Runnable {
 
        private String message = "I am inside SocketTest od Client";
        private Selector selector;
 
        public SocketTest(String message){
            this.message = message;
        }
 
        @Override
        public void run() {
            SocketChannel channel;
            try {
                selector = Selector.open();
                channel = SocketChannel.open();
                channel.configureBlocking(false);
 
                channel.register(selector, SelectionKey.OP_CONNECT);
                channel.connect(new InetSocketAddress("127.0.0.1", 4444));
 
                while (!Thread.interrupted()){
 
                    selector.select(1000);
                     
                    Iterator<SelectionKey> keys = selector.selectedKeys().iterator();
 
                    while (keys.hasNext())
                    {
//                        System.out.println("");
                          
                        SelectionKey key = keys.next();
                        
                        System.out.println("In client inside while : "+key);
                        keys.remove();
 
                        if (!key.isValid()) continue;
 
                        if (key.isConnectable()){
                            System.out.println("Key is Connectable in client end");
                            connect(key);
                        }   
                        if (key.isWritable()){
                          System.out.println("in client writeable");                   
                            //in client writeable
                           write(key);
                        }
                        if (key.isReadable()){
                            
                          System.out.println("in client Readable");
                             read(key);
                        }
                    }   
                }
            } catch (IOException e1) {
            } finally {
              //  close();
            }
        }
         private void read (SelectionKey key) throws IOException {
            SocketChannel channel = (SocketChannel) key.channel();
            ByteBuffer readBuffer = ByteBuffer.allocate(1000);
            readBuffer.clear();
            int length;
            try{
            length = channel.read(readBuffer);
            } catch (IOException e){
                System.out.println("Reading problem, closing connection");
                key.cancel();
                channel.close();
                return;
            }
            if (length == -1){
                System.out.println("Nothing was read from server");
                channel.close();
                key.cancel();
                return;
            }
            readBuffer.flip();
            byte[] buff = new byte[1024];
            readBuffer.get(buff, 0, length);
            
            System.out.println("Server said: "+new String(buff));
            channel.register(selector, SelectionKey.OP_WRITE);
         }
 
        private void write(SelectionKey key) throws IOException {          
            SocketChannel channel = (SocketChannel) key.channel();
            channel.write(ByteBuffer.wrap(message.getBytes()));
            // lets get ready to read.
            key.interestOps(SelectionKey.OP_READ);
        }
         private void connect(SelectionKey key) throws IOException {
            SocketChannel channel = (SocketChannel) key.channel();
            if (channel.isConnectionPending()){
                channel.finishConnect();
            }
            channel.configureBlocking(false);
         // SelectionKey kr= channel.register(selector, SelectionKey.OP_WRITE);
            SelectionKey kr= channel.register(selector, SelectionKey.OP_READ);
            
         // System.out.println("I am connected to the server with key : "+kr);
        }
     }
}
