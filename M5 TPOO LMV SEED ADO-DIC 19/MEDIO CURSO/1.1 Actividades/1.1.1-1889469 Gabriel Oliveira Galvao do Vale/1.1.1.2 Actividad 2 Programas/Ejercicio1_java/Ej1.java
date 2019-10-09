import java.util.Scanner;

/**
 * Programa que realiza la suma de dos numeros enteros
 */
public class Ej1 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Dame el 1er valor");
        byte primer = scanner.nextByte();
        System.out.println("Dame el 2do valor");
        byte segundo = scanner.nextByte();
        int resultado = primer + segundo;
        System.out.println("La suma de " + primer + " + " + segundo + " = " + resultado);

        scanner.close();
    }
}