import java.util.Scanner;

/**
 * Realice un programa que saque el promedio de 3 numeros enteros
 */
public class Ej2 {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Dame el valor...");
        System.out.print("1:");
        byte primerValor = scanner.nextByte();
        System.out.print("2:");
        byte segundoValor = scanner.nextByte();
        System.out.print("3:");
        byte tercerValor = scanner.nextByte();

        float promedio = (primerValor + segundoValor + tercerValor) / 3f;
        System.out.print("El promedio de los tres valores es " + promedio);

        scanner.close();

    }
}