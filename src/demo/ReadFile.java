package demo;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

/**
 * Created by mingfei.net@gmail.com
 * 2016/10/30.
 */
public class ReadFile {
    public static void main(String[] args) throws IOException {
        try (BufferedReader bufferedReader = new BufferedReader(new FileReader("data/ip.txt"))){
            String line;
            while ((line = bufferedReader.readLine()) != null) {
                System.out.println(line);
            }
        }
    }
}
