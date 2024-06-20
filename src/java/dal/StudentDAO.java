package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Student;

public class StudentDAO extends DBContext {

    //CRUD c-creat (insert) R-read, u-update, d-delete
    //doc du lieu tu StudentDB
    public List<Student> getAll() {
        List<Student> list = new ArrayList<>();

        String sql = "select * from Student";
        try {
            //thuc thi cau truy van
            PreparedStatement pre = connection.prepareStatement(sql);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                String roll = rs.getString("rollNo");
                String name = rs.getString("name");
                float mark = rs.getFloat("mark");
                list.add(new Student(roll, name, mark));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    //insert student
    public void insert(Student st) {
        String sql = "INSERT INTO Student (RollNo,Name,Mark) VALUES (?,?,?)";
        try {
            PreparedStatement pre = connection.prepareStatement(sql);
            pre.setString(1, st.getRollNo());
            pre.setString(2, st.getName());
            pre.setFloat(3, st.getMark());
            pre.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    //get stutend by rollno
    public Student getStudentByRollNo(String rollNo) {
        String sql = "select * from Student where RollNo = ?";
        try {
            //thuc thi cau truy van
            PreparedStatement pre = connection.prepareStatement(sql);
            pre.setString(1, rollNo);
            ResultSet rs = pre.executeQuery();
            if (rs.next()) {
                String roll = rs.getString("rollNo");
                String name = rs.getString("name");
                float mark = rs.getFloat("mark");
                Student sv = new Student(roll, name, mark);
                return sv;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return null;
    }

    //update
    public void update(Student st) {
        String sql = "update Student set Name = ?, mark = ? where RollNo = ?";
        try {
            PreparedStatement pre = connection.prepareStatement(sql);
            pre.setString(1, st.getName());
            pre.setFloat(2, st.getMark());
            pre.setString(3, st.getRollNo());
            pre.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }

    }

    //delete
    public void delete(String rollNo) {
        String sql = "delete from Student where RollNo = ?";
        try {
            PreparedStatement pre = connection.prepareStatement(sql);
            pre.setString(1, rollNo);
            pre.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        StudentDAO dao = new StudentDAO();
        List<Student> list = dao.getAll();
        System.out.println(list.get(1).getName());
        System.out.println(list.get(1).getRollNo());
    }

}
