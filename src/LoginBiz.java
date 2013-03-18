
import vo.User;
import java.sql.*;
import dao.LoginDao;
import static util.DbUtil.*;
public class LoginBiz {
	public User getUserLogin(String id, String passwd) {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		LoginDao loginDao = new LoginDao(con);
		User user = loginDao.getUserLogin(id,passwd);
		close(con);
		return user;
	}
}
