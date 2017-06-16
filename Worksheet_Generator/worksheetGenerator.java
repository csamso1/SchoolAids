import java.io.*;
import java.util.*;

public class worksheetGenerator
{
    public static void main(String[] args) throws FileNotFoundException
    {
        Scanner scan = new Scanner(System.in);
    	System.out.printf("Enter the higest number to use: \n");
    	int max = scan.nextInt() - 1;
    	System.out.printf("Enter the operation to use: \n");
        scan.nextLine();
        String operator = scan.nextLine();
        String operator_String = (String)operator;
        if("*".equalsIgnoreCase(operator)){
            operator_String = "multiplication";
        }
        else if("%".equalsIgnoreCase(operator)){
            operator_String = "division";
        }
        else if("+".equalsIgnoreCase(operator)){
            operator_String = "addition";
        }
        else if("-".equalsIgnoreCase(operator)){
            operator_String = "subtraction";
        }
        // else if("r".equalsIgnoreCase(operator)){
        //     operator_String = "Random";
        // }
        System.out.printf("operator = %s\n", operator);
        System.out.printf("operator_String = %s\n", operator_String);
        // scan.nextLine();
        Random rand = new Random();
        int limit = max + 1;
        String fileName = operator_String.concat("_") + limit + ".csv";
        PrintWriter fileWriter = new PrintWriter("/mnt/c/Users/Clayton/Desktop/WorksheetGenerator/".concat(fileName));
    	for(int i = 0; i < 10; i++){
    		for(int j = 0; j < 3; j++){
    			// fileWriter.write(rand.nextInt() + ",".concat(operator).concat(",").concat(rand.nextInt()));
                // fileWriter.write(rand.nextInt(max) + "," + operator + "," + rand.nextInt(max));
                fileWriter.printf("%d,%s,%d,=,,", rand.nextInt(max) + 1, operator, rand.nextInt(max) + 1);
                System.out.printf("Itteration i = %d, j = %d \n", i, j);
    		}
            fileWriter.printf("\n");
            // fileWriter.newLine();
    	}
        fileWriter.close();
        System.out.printf("%s created!\n", fileName);
    }
}