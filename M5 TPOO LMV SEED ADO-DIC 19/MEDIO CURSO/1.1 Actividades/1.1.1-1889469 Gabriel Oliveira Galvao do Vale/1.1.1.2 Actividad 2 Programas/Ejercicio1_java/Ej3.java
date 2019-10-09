import java.util.Scanner;

/**
 * Programa que, al recibir como datos la clave del empleado y los seis primeros
 * sueldos del año, calcule el ingreso total semestral y el promedio mensual, e
 * imprima la clave del empleado, el ingreso total y el promedio mensual.
 */
public class Ej3 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        String num_empl;

        float promedioMensual, ingresoTotal = 0;

        System.out.print("Numero de empleado:");
        num_empl = scanner.next();

        for (int i = 0; i < 6; i++) {
            System.out.print("Ingreso mes " + (i + 1) + ":");
            ingresoTotal += scanner.nextFloat();
        }
        promedioMensual = ingresoTotal / 6;
        System.out.println("# Empleado:\t\t" + num_empl);
        System.out.println("Ingreso total:\t\t$" + ingresoTotal);
        System.out.println("# Promedio mensual:\t$" + promedioMensual);

        scanner.close();
    }
}