import java.io.File;
public class SetExecuteTest{
    public static void main(String[] args)throws SecurityException {

        File file = new File("C:/setExecuteTest.txt");

        if (file.exists()) {
            boolean bval = file.setExecutable(true);
            System.out.println("set the owner's execute permission: "+ bval);
        } else {
            System.out.println("File cannot exists: ");
        }

        if (file.exists()) {
            boolean bval = file.setExecutable(true,false);
            System.out.println("set the everybody execute permission: "+ bval);
        } else {
            System.out.println("File cannot exists: ");
        }

        //set read-only permissions
        if (file.exists()) {
        boolean bval_1 = file.setReadable(true);
        System.out.println("set the Owner Read permission: "+ bval_1);
    } else {
        System.out.println("File cannot exists: ");
    }

       if (file.exists()) {
        boolean bval_2 = file.setReadable(true,false);

        System.out.println("set the every user Read permission: "+ bval_2);
    } else {
        System.out.println("File cannot exists: ");
    }

        //Set write permission on File for all.
        if (file.exists()) {
            boolean bval = file.setWritable(true,false);
            System.out.println("set the every user write permission: "+ bval);
        } else {
            System.out.println("File cannot exists: ");
        }

    }
}
