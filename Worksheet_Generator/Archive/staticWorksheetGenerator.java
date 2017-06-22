import java.io.*;
import java.util.*;

public class staticWorksheetGenerator
{
    public static void main(String[] args) throws FileNotFoundException
    {
        Scanner scan = new Scanner(System.in);
    	System.out.printf("Enter the higest number to use: \n");
    	int max = scan.nextInt() - 1;
    	System.out.printf("Enter the operation to use (enter 'rand' or 'r' for random operations: \n");
        scan.nextLine();
        String operator = scan.nextLine();
        System.out.printf("Enter the static number: \n");
        int staticNum = scan.nextInt();
        String operator_String = (String)operator;
        String[] operations = {"+", "-", "x", "%"};
        if("*".equalsIgnoreCase(operator) || "x".equalsIgnoreCase(operator)){
            operator_String = "multiplication";
            operator = "x";
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
        else if("r".equalsIgnoreCase(operator) || "rand".equalsIgnoreCase(operator)){
            operator_String = "Random";
        }
        System.out.printf("operator = %s\n", operator);
        System.out.printf("operator_String = %s\n", operator_String);
        // scan.nextLine();
        Random rand = new Random();
        int limit = max + 1;
        String fileName = operator_String.concat("_") + limit + "_" + staticNum + "_vertical_static.csv";
        PrintWriter fileWriter = new PrintWriter("/mnt/c/Users/Clayton/Documents/GitHub/SchoolAids/Worksheet_Generator/Worksheets/".concat(fileName));
        if("Random".equalsIgnoreCase(operator_String)){
            for(int i = 0; i < 5; i++){
            fileWriter.printf(",%d,,,%d,,,%d,,,%d,,,%d\n",rand.nextInt(max) + 1, rand.nextInt(max) + 1, rand.nextInt(max) + 1, rand.nextInt(max) + 1, rand.nextInt(max) + 1);
            fileWriter.printf("%s,%d,,%s,%d,,%s,%d,,%s,%d,,%s,%d\n",operations[rand.nextInt(4)], rand.nextInt(max) + 1, operations[rand.nextInt(4)], rand.nextInt(max) + 1, operations[rand.nextInt(4)], rand.nextInt(max) + 1, operations[rand.nextInt(4)], rand.nextInt(max) + 1, operations[rand.nextInt(4)], rand.nextInt(max) + 1);
            fileWriter.printf("\n\n");
            }
            for(int i = 0; i < 7; i++){
                fileWriter.printf(",%d,,,%d,,,%d,,,%d,,,%d,,,%d,,,%d,,,%d,,,%d,,,%d\n", rand.nextInt(max) + 1, rand.nextInt(max) + 1, rand.nextInt(max) + 1, rand.nextInt(max) + 1, rand.nextInt(max) + 1, rand.nextInt(max) + 1, rand.nextInt(max) + 1, rand.nextInt(max) + 1, rand.nextInt(max) + 1, rand.nextInt(max) + 1);
                fileWriter.printf("%s,%d,,%s,%d,,%s,%d,,%s,%d,,%s,%d,,%s,%d,,%s,%d,,%s,%d,,%s,%d,,%s,%d\n", operations[rand.nextInt(4)], rand.nextInt(max) + 1, operations[rand.nextInt(4)], rand.nextInt(max) + 1, operations[rand.nextInt(4)], rand.nextInt(max) + 1, operations[rand.nextInt(4)], rand.nextInt(max) + 1, operations[rand.nextInt(4)], rand.nextInt(max) + 1, operations[rand.nextInt(4)], rand.nextInt(max) + 1, operations[rand.nextInt(4)], rand.nextInt(max) + 1, operations[rand.nextInt(4)], rand.nextInt(max) + 1, operations[rand.nextInt(4)], rand.nextInt(max) + 1, operations[rand.nextInt(4)], rand.nextInt(max) + 1);
                fileWriter.printf("\n\n");
            }
        }
        else{
            for(int i = 0; i < 5; i++){
            fileWriter.printf(",%d,,,%d,,,%d,,,%d,,,%d\n",rand.nextInt(max) + 1, rand.nextInt(max) + 1, rand.nextInt(max) + 1, rand.nextInt(max) + 1, rand.nextInt(max) + 1);
            fileWriter.printf("%s,%d,,%s,%d,,%s,%d,,%s,%d,,%s,%d\n",operator, staticNum, operator, staticNum, operator, staticNum, operator, staticNum, operator, staticNum);
            fileWriter.printf("\n\n");
            }
            for(int i = 0; i < 7; i++){
                fileWriter.printf(",%d,,,%d,,,%d,,,%d,,,%d,,,%d,,,%d,,,%d,,,%d,,,%d\n", rand.nextInt(max) + 1, rand.nextInt(max) + 1, rand.nextInt(max) + 1, rand.nextInt(max) + 1, rand.nextInt(max) + 1, rand.nextInt(max) + 1, rand.nextInt(max) + 1, rand.nextInt(max) + 1, rand.nextInt(max) + 1, rand.nextInt(max) + 1);
                fileWriter.printf("%s,%d,,%s,%d,,%s,%d,,%s,%d,,%s,%d,,%s,%d,,%s,%d,,%s,%d,,%s,%d,,%s,%d\n", operator, staticNum, operator, staticNum, operator, staticNum, operator, staticNum, operator, staticNum, operator, staticNum, operator, staticNum, operator, staticNum, operator, staticNum, operator, staticNum);
                fileWriter.printf("\n\n");
            }
        }
        fileWriter.close();
        System.out.printf("%s created!\n", fileName);
    }
}