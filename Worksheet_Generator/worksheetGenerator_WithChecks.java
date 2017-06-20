import java.io.*;
import java.util.*;

public class worksheetGenerator_WithChecks
{
    public static int max;
    public static String operator;
    public static String operator_String;
    public static String[] operations = {"+", "-", "x", "%"};
    public static String defineRange;
    public static int lowerLimit;
    public static int upperLimit;
    //Declare array for numerators for 1st set
    public static int[] nums1 = new int[5];
    //Declare array for denomonators for 1st set
    public static String[] operators1 = new String[5];
    public static int[] denoms1 = new int[5];
    //Declare array for numerators for 2nd set
    public static int[] nums2 = new int[10];
    //Declare array for denomonators for 2nd set
    public static String[] operators2 = new String[10];
    public static int[] denoms2 = new int[10];
    //Initilize Arrays to hold solutions
    public static int[] solutions1 = new int[5];
    public static int[] solutions2 = new int[10];
    public static String fileName;
    public static Random rand = new Random();
    public static int staticNum;
    //End declaring varriables

    public static void main(String[] args) throws FileNotFoundException
    {
        //Prompts user and scans parameters in
        Scanner scan = new Scanner(System.in);
    	System.out.printf("Enter the higest number to use: \n");
    	max = scan.nextInt();
    	System.out.printf("Enter the operation to use (enter 'rand' or 'r' for random operations): \n");
        scan.nextLine();
        operator = scan.nextLine();
        operator_String = (String)operator;
        System.out.printf("Is the denomonator a static number or static range? Provide 'Y' or 'N' or 'Range': \n");
        defineRange = scan.nextLine();
        if(defineRange.equalsIgnoreCase("range")){
            System.out.printf("Enter the lower limit of the range: \n");
            lowerLimit = scan.nextInt();
            System.out.printf("Enter the higher limit of the range: \n");
            upperLimit = scan.nextInt();
        }
        if(defineRange.equalsIgnoreCase("y")){
            System.out.printf("Enter the static number: \n");
            staticNum = scan.nextInt();
        }
        //Determine operation to use
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

        fileName = operator_String.concat("_") + max + "_" + lowerLimit + "-" + upperLimit + "_" + staticNum + "_vertical.csv";
        PrintWriter fileWriter = new PrintWriter("/mnt/c/Users/Clayton/Documents/GitHub/SchoolAids/Worksheet_Generator/Worksheets/".concat(fileName));

        //Generate top problem set and soltuions
        for(int i = 0; i < 5; i++){
            generateProblemSet(nums1, denoms1, operators1, 5);
            preformChecks(nums1, denoms1, operators1);
            //Print statment for testing
            System.out.printf("solveProblemSet() called from main.\n solutions1[] = %s\n", Arrays.toString(solutions1));
            solveProblemSet(nums1, denoms1, operators1, solutions1);
            writeTopProblemSet(nums1, denoms1, operators1, solutions1, fileWriter);
        }

        //Generate bottom problem set and soltuions
        for(int i = 0; i < 7; i++){
            generateProblemSet(nums2, denoms2, operators2, 10);
            preformChecks(nums2, denoms2, operators2);
            solveProblemSet(nums2, denoms2, operators2, solutions2);
            writeBotProblemSet(nums2, denoms2, operators2, solutions2, fileWriter);
        }
        fileWriter.close();
        System.out.printf("%s created!\n", fileName);
    }

    //Method that generates one row of problem sets with specified length
    public static void generateProblemSet(int[] nums, int[] denoms, String[] operators, int numProblems){
        for(int i = 0; i < numProblems; i++){
            nums[i] = rand.nextInt(max) + 1;
            if(defineRange.equalsIgnoreCase("range")){
                int rangeLength = upperLimit - lowerLimit;
                denoms[i] = rand.nextInt(lowerLimit) + rangeLength;
            }
            if(defineRange.equalsIgnoreCase("y")){
                denoms[i] = staticNum;
            }
            else{
                denoms[i] = rand.nextInt(max) + 1;
            }
            //Fill operations array based on user input
            if(operator_String.equalsIgnoreCase("random")){
                operators[i] = operations[rand.nextInt(4)];
            }
            else{
                operators[i] = operator;
            }
        }
        //Print statment for debugging
        System.out.printf("New problem set generated!\n");
        System.out.printf("Nums: %s \n", Arrays.toString(nums));
        System.out.printf("Denoms: %s \n", Arrays.toString(denoms));
        System.out.printf("Operators: %s \n", Arrays.toString(operators));
    }

    //Method to preform checks for viable problems
    public static void preformChecks(int[] nums, int[] denoms, String[] operators){
        //Print statment for debugging
        System.out.printf("PreformChecks(%s, %s, %s) called!\n", Arrays.toString(nums), Arrays.toString(denoms), Arrays.toString(operators));
        for(int i = 0; i < nums.length; i++){
            //Print statment for debugging
            System.out.printf("PreformChecks itteration %d has begun!\n", i);
            if(operators[i].equalsIgnoreCase("-")){
                if(nums[i] - denoms[i] <= 0){
                    //Print statment for debugging
                    System.out.printf("fixSubtraction(%s, %s, %d) called from preformChecks.\n", Arrays.toString(nums), Arrays.toString(denoms), i);
                    fixSubtraction(nums, denoms, i);
                }
            }
            else if(operators[i].equalsIgnoreCase("%")){
                if(nums[i] % denoms[i] != 0){
                    fixDivision(nums, denoms, i);
                }
            }
        }
    }

    //Method that regenerates subtraction problems until a non negitve solution is created
    public static void fixSubtraction(int[] nums, int[] denoms, int index){
        while(nums[index] - denoms[index] <= 0){
            nums[index] = rand.nextInt(max) + 1;
            if(defineRange.equalsIgnoreCase("range")){
                int rangeLength = upperLimit - lowerLimit;
                denoms[index] = rand.nextInt(lowerLimit) + rangeLength;
            }
            if(defineRange.equalsIgnoreCase("y")){
                denoms[index] = staticNum;
            }
            else{
                denoms[index] = rand.nextInt(max) + 1;
            }
        }
    }

    //Method that regenerates division problems until a problem with no remainder is created
    public static void fixDivision(int[] nums, int[] denoms, int index){
        while(nums[index] % denoms[index] != 0){
            nums[index] = rand.nextInt(max) + 1;
            if(defineRange.equalsIgnoreCase("range")){
                int rangeLength = upperLimit - lowerLimit;
                denoms[index] = rand.nextInt(lowerLimit) + rangeLength;
            }
            if(defineRange.equalsIgnoreCase("y")){
                denoms[index] = staticNum;
            }
            else{
                denoms[index] = rand.nextInt(max) + 1;
            }
        }
    }

    //Method to solve problems and store answers in solutions array
    public static void solveProblemSet(int[] nums, int[] denoms, String[] operators, int[] solutions){
        //Print statment for debugging
        System.out.printf("solveProblemSet(%s, %s, %s, %s) called!\n", Arrays.toString(nums), Arrays.toString(denoms), Arrays.toString(operators), Arrays.toString(solutions));
        for(int i = 0; i < nums.length; i++){
            if(operators[i].equalsIgnoreCase("+")){
                solutions[i] = nums[i] + denoms[i];
                System.out.printf("solutions[%d] calculated, it is: %d\n", i, solutions[i]);
                System.out.printf("nums[%d] = %d; denoms[%d] = %d\n", i, nums[i], i, denoms[i]);
            }
            if(operators[i].equalsIgnoreCase("-")){
                solutions[i] = nums[i] - denoms[i];
                System.out.printf("solutions[%d] calculated, it is: %d\n", i, solutions[i]);
                System.out.printf("nums[%d] = %d; denoms[%d] = %d\n", i, nums[i], i, denoms[i]);
            }
            if(operators[i].equalsIgnoreCase("x")){
                solutions[i] = nums[i] * denoms[i];
                System.out.printf("solutions[%d] calculated, it is: %d\n", i, solutions[i]);
                System.out.printf("nums[%d] = %d; denoms[%d] = %d\n", i, nums[i], i, denoms[i]);
            }
            else if(operators[i].equalsIgnoreCase("%")){
                solutions[i] = nums[i] / denoms[i];
                System.out.printf("solutions[%d] calculated, it is: %d\n", i, solutions[i]);
                System.out.printf("nums[%d] = %d; denoms[%d] = %d\n", i, nums[i], i, denoms[i]);
            }
            //Print statment for debugging
            System.out.printf("new solutions array: %s\n", Arrays.toString(solutions));
        }
    }

    //Method to write data to .CSV file for top set of problems
    public static void writeTopProblemSet(int[] nums, int[] denoms, String[] operators, int[] solutions, PrintWriter fileWriter){
        //Print statment for debugging
        System.out.printf("writeTopProblemSet() called!\n");
        fileWriter.printf(",%d,,,%d,,,%d,,,%d,,,%d\n",nums[0], nums[1], nums[2], nums[3], nums[4]);
        fileWriter.printf("%s,%d,,%s,%d,,%s,%d,,%s,%d,,%s,%d\n",operators[0], denoms[0], operators[1], denoms[1], operators[2], denoms[2], operators[3], denoms[3], operators[4], denoms[4]);
        fileWriter.printf(",%d,,,%d,,,%d,,,%d,,,%d\n", solutions[0], solutions[1], solutions[2], solutions[3], solutions[4]);
        fileWriter.printf("\n");
    }

    //Method to write data to .CSV file for bottom set of problems
    public static void writeBotProblemSet(int[] nums, int[] denoms, String[] operators, int[] solutions, PrintWriter fileWriter){
        System.out.printf("writeBotProblemSet() called!\n");
        fileWriter.printf(",%d,,,%d,,,%d,,,%d,,,%d,,,%d,,,%d,,,%d,,,%d,,,%d\n", nums[0], nums[1], nums[2], nums[3], nums[4], nums[5], nums[6], nums[7], nums[8], nums[9]);
        fileWriter.printf("%s,%d,,%s,%d,,%s,%d,,%s,%d,,%s,%d,,%s,%d,,%s,%d,,%s,%d,,%s,%d,,%s,%d\n", operators[0], denoms[0], operators[1], denoms[1], operators[2], denoms[2], operators[3], denoms[3], operators[4], denoms[4], operators[5], denoms[5], operators[6], denoms[6], operators[7], denoms[7], operators[8], denoms[8], operators[9], denoms[9]);
        fileWriter.printf(",%d,,,%d,,,%d,,,%d,,,%d,,,%d,,,%d,,,%d,,,%d,,,%d\n", solutions[0], solutions[1], solutions[2], solutions[3], solutions[4], solutions[5], solutions[6], solutions[7], solutions[8], solutions[9]);
        fileWriter.printf("\n");
    }
}