package net.codejava;
 
import java.io.*;
import java.sql.*;
import java.util.*;
 
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.*;
 
public class exceldataimport {
 
    public static void main(String[] args) {
        String jdbcURL = "jdbc:mysql://localhost:3306/sales";
        String username = "user";
        String password = "password";
 
        String filepath_excel = "jewel_loan_applicants.xlsx";
	int batchSize = 20;
 
        Connection connection = null;
 
        try {
            long start = System.currentTimeMillis();
             
            FileInputStream inputStream = new FileInputStream(filepath_excel);
 
            Workbook workbook = new XSSFWorkbook(inputStream);
 
            Sheet firstSheet = workbook.getSheetAt(0);
            Iterator<Row> rowIterator = firstSheet.iterator();
 
            connection = DriverManager.getConnection(jdbcURL, username, password);
            connection.setAutoCommit(false);
  
            String sql = "INSERT INTO jewel_loan_applicants (name, approvalDate, loan_amount, id_used, address, payment_dues, defaulter_status) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);    
             
            int count = 0;
             
            rowIterator.next(); // skip the header row
             
            while (rowIterator.hasNext()) {
                Row nextRow = rowIterator.next();
                Iterator<Cell> cellIterator = nextRow.cellIterator();
 
                while (cellIterator.hasNext()) {
                    Cell nextCell = cellIterator.next();
 
                    int columnIndex = nextCell.getColumnIndex();
 
                    switch (columnIndex) {
                    case 0:
                        String name = nextCell.getStringCellValue();
                        statement.setString(1, name);
                        break;
		    case 1:
                        Date approvalDate = nextCell.getDateCellValue();
                        statement.setTimestamp(2, new Timestamp(ApprovalDate.getTime()));
                    case 2:
                        int loan_amount = nextCell.getNumericalCellValue();
                        statement.setInt(3, loan_amount);
			break;
                    case 3:
                        String id_used = nextCell.getStringCellValue();
                        statement.setString(4, id_used);
                        break;
		    case 4:
                        String address = nextCell.getStringCellValue();
                        statement.setString(5, address);
                        break;
		    case 5:
                        int payment_dues = nextCell.getNumericalCellValue();
                        statement.setInt(6, payment_dues);
			break;
		    case 4:
                        String defaulters_status = nextCell.getStringCellValue();
                        statement.setString(7, defaulters_status);
                        break;


                    }
 
                }
                 
                statement.addBatch();
                 
                if (count % batchSize == 0) {
                    statement.executeBatch();
                }              
 
            }
 
            workbook.close();
             
            // execute the remaining queries
            statement.executeBatch();
  
            connection.commit();
            connection.close();
             
            long end = System.currentTimeMillis();
            System.out.printf("Import done in %d ms\n", (end - start));
             
        } catch (IOException ex1) {
            System.out.println("Error reading file");
            ex1.printStackTrace();
        } catch (SQLException ex2) {
            System.out.println("Database error");
            ex2.printStackTrace();
        }
 
    }
}
