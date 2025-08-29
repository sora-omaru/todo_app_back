package dev.omaru.tools;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class PrintBcrypt {
    public static void main(String[] args) {
        String raw = (args.length > 0) ? args[0] : "ChangeMe123!";
        System.out.println(new BCryptPasswordEncoder().encode(raw));
    }
}
