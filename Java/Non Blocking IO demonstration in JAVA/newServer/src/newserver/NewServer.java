package newserver;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import  java.nio.*;
import java.nio.channels.*;
import java.util.*;

public class NewServer {
    private static Selector selector;
    
    private static void accept(SelectionKey key) throws IOException{
       
        ServerSocketChannel serverSocketChannel = (ServerSocketChannel) key.channel();
        SocketChannel socketChannel = serverSocketChannel.accept();
        socketChannel.configureBlocking(false);
         
        SelectionKey kk= socketChannel.register(selector, SelectionKey.OP_WRITE);
        System.out.println("In accept : "+kk);
    }
    
    private static void write(SelectionKey key) throws IOException{
        SocketChannel channel = (SocketChannel) key.channel();
        byte[] h = new String("Hello from server").getBytes();
        ByteBuffer bbf=ByteBuffer.wrap(h);
        channel.write(bbf);  
        key.interestOps(SelectionKey.OP_READ);
    }
    private static void read(SelectionKey key) throws IOException{
        SocketChannel channel = (SocketChannel) key.channel();
        ByteBuffer readBuffer = ByteBuffer.allocate(1024);
        readBuffer.clear();
        int read;
        try {
            read = channel.read(readBuffer);
        } catch (IOException e) {
            System.out.println("Reading problem, closing connection");
            key.cancel();
            channel.close();
            return;
        }
        if (read == -1){
            System.out.println("Nothing was there to be read, closing connection");
            channel.close();
            key.cancel();
            return;
        }
        readBuffer.flip();
        byte[] data = new byte[1000];
        readBuffer.get(data, 0, read);
        System.out.println("Received: "+new String(data));
 
    }
    public static void main(String[] args) throws IOException {
        int portNo=4444;
        selector= Selector.open();
        ServerSocketChannel ssc = ServerSocketChannel.open();
        ssc.configureBlocking( false );
        ServerSocket ss = ssc.socket();  
        InetSocketAddress address = new InetSocketAddress(portNo);
        ss.bind(address);
        ssc.register( selector, SelectionKey.OP_ACCEPT );
        
        System.out.println( "Server Started at : "+portNo);
    
        while (true) {    
           int num = selector.select();

            Set selectedKeys = selector.selectedKeys();
            Iterator it = selectedKeys.iterator();
            
            while(it.hasNext()){
                
                SelectionKey key = (SelectionKey) it.next();
                it.remove();
                   
                if (!key.isValid()){
                        continue;
                 }
                if (key.isAcceptable()){
                    System.out.println("Accepting connection");
                    accept(key);
                 }
                if (key.isWritable()){
                    System.out.println("Writing...");
                    write(key);
                }
                if (key.isReadable()){
                    System.out.println("Reading connection");
                    read(key);
                }
            }
        }
    }
    
}
