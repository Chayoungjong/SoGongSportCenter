package persistence.dao;

import persistence.dto.TeacherDTO;

import java.sql.*;
import java.util.List;
import util.DBConnection;

public class TeacherDAO {
    Connection conn = DBConnection.getConnection();

    private static TeacherDAO instance;

    private TeacherDAO(){}

    public static TeacherDAO getInstance(){
        if(instance == null)
            instance=new TeacherDAO();
        return  instance;
    }

   public void Create(TeacherDTO teacherDTO){
       String sql = "INSERT INTO teacher VALUES (?,?,?)";
       try {
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, teacherDTO.TeacherId);
            pstmt.setString(2, teacherDTO.TeacherName);
            pstmt.setString(3, teacherDTO.TeacherPassWord);
            pstmt.executeUpdate();
       }catch (Exception e){
           e.printStackTrace();
       }
   }

    public List<TeacherDTO> selectAll(TeacherDTO TeacherDTO){
        Connection conn = null;
        PreparedStatement pstmt;

        try{
            String sql = "SELECT * FROM teahcer";

            pstmt = conn.prepareStatement(sql.toString());

            ResultSet rs = pstmt.executeQuery();

            TeacherDTO teacherDTO;

            while(rs.next()){
                String TeacherId = rs.getString("TeacherId");
                String TeacherName = rs.getString("TeacherName");
                String TeacherPassWord = rs.getString("TeacherPassWord");
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
        return null;
    }
}
