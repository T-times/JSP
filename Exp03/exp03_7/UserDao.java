package Dao;

import com.po.Users;

public class UserDao {
    //�жϵ�¼���
    public boolean userLogin(Users user){
        if("tady".equals(user.getUsername()) && "123456".equals(user.getPassword())){
            return true;
        }else{
            return false;
        }
    }
}