package project.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import project.vo.ProductVo;

public class TblProductDao {
    private static final String URL ="jdbc:oracle:thin:@//localhost:1521/xe";
    private static final String USERNAME = "c##idev";
    private static final String PASSWORD = "1234";

    private Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USERNAME, PASSWORD);
    }

    ////////////////////////////
    public List<ProductVo> selectAllProduct() {
        String sql = "select * from tbl_product";
        List<ProductVo> list = new ArrayList<ProductVo>();

        try (
            Connection connection = getConnection();
            PreparedStatement ps = connection.prepareStatement(sql);
        ) {
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ProductVo(
                    rs.getString("pcode"),
                    rs.getString("category"),
                    rs.getString("name"), 
                    rs.getInt("price")
                ));
            }
        } catch (SQLException e) {
            System.out.println("select 쿼리 실행 실패 : " + e.getMessage());
        }

        return list;
    }

    ///////////////////////////////////////////////

    public List<ProductVo> selectByCategory(String category) {
        String sql = "SELECT * FROM TBL_PRODUCT WHERE CATEGORY = ? ORDER BY PNAME";
        List<ProductVo> list = selectByOneString(sql, category);

        return list;
    }

    public List<ProductVo> selectByPname(String pname) {
        String sql = "SELECT * FROM TBL_PRODUCT WHERE PNAME LIKE '%' || ? || '%' ORDER BY CATEGORY";
        List<ProductVo> list = selectByOneString(sql, pname);

        return list;
    }

    //////////////////////////////////////////////

    public List<ProductVo> selectByOneString(String sql, String field) {
        List<ProductVo> list = new ArrayList<ProductVo>();

        try (
            Connection connection = getConnection();
            PreparedStatement ps = connection.prepareStatement(sql)
        ) {
            ps.setString(1, field);
            ResultSet result = ps.executeQuery();

            while (result.next()) {
                list.add(new ProductVo(
                    result.getString("pcode"),
                    result.getString("category"),
                    result.getString("pname"),
                    result.getInt("price")
                ));
            }
        } catch (SQLException e) {
            System.out.println("select 쿼리 실행 실패 : " + e.getMessage());
        }

        return list;
    }

    // 상품 가격표 Map에 저장하기
    public Map<String, Integer> getPriceTable(){
        Map<String, Integer> map = new HashMap<>();
        String sql = "select pcode, price from tbl_product";
        try(
            Connection conn = getConnection();
            PreparedStatement psmt = conn.prepareStatement(sql))
        {
            ResultSet rs = psmt.executeQuery();
            while(rs.next()){
                map.put(rs.getString(1),
                        rs.getInt(2));
            }
            
            }catch(SQLException e){
                System.out.println("getPriceTable 예외 발생: " +  e.getMessage());
            }
        return map;
        }
    

    }

