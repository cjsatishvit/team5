package jewelloan
import java.sql.*; 
import java.sql.Connection;
import java.sql.DriverManager; 
import java.sql.SQLException;                                               

public class DB2_connection 
{
  public static void main(String[] args) 
  {
    	private String Customer_ID;
	private String Name;
	private int Loan_Amt;
	private String Address;
	private String contact;
	private String DefaulterId;

DB2_Connection obj_DB2_Connection=new DB2_Connection();
		
		System.out.println(obj_DB2_Connection.get_connection());
	}
	
	
	
	public Connection get_connection(){
		Connection connection=null;
		try {
			
		
		Class.forName("com.mysql.jdbc.Driver");
		connection = DriverManager.getConnection("jdbc:mysql://localhost:6097/jewel_loan","root", "");
 		
		} catch (Exception e) {
			System.out.println(e);
		}
		return connection;
		}


	public String getCustomer_Id() {
		return Customer_Id;
	}
	public void setCustomer_Id(String Customer_Id) {
		this.Customer_Id = Customer_Id;
	}

	public String getName() {
		return Name;
	}
	public void setName(String Name) {
		this.Name = Name;
	}
	public int getLoan_Amt() {
		return Loan_Amt;
	}
	public void setLoan_Amt(int Loan_Amt) {
		this.Loan_Amt = Loan_Amt;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String Address) {
		this.Address = Address;
	}
	public String getcontact() {
		return contact;
	}
	public void setcontact(String contact) {
		this.contact = contact;
	}
	public String getDefaulterId() {
		return DefaulterId;
	}
	public void setDefaulterId(String DefaulterId) {
		this.DefaulterId = DefaulterId;
	}

}
}
   