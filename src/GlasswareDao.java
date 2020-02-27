import java.sql.Connection;
import java.sql.PreparedStatement;

public class GlasswareDao {
public static int save(String callno,String name,String category,String description,int quantity){
	int status=0;
	try{
		Connection con=DB.getConnection();
		PreparedStatement ps=con.prepareStatement("insert into inventories(callno,name,category,description,quantity) values(?,?,?,?,?)");
		ps.setString(1,callno);
		ps.setString(2,name);
		ps.setString(3,category);
		ps.setString(4,description);
		ps.setInt(5,quantity);
		status=ps.executeUpdate();
		con.close();
	}catch(Exception e){System.out.println(e);}
	return status;
}
}
