package com.focus.controller;

import com.focus.beans.EmployeeBean;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by admin on 05-12-2018.
 */
public class MainController extends ActionSupport {
    EmployeeBean eb=null;

    public EmployeeBean getEb() {
        return eb;
    }

    public void setEb(EmployeeBean eb) {
        this.eb = eb;
    }

    public String getAddDetails(){
        return SUCCESS;
    }
    public String register() throws Exception
    {
        HttpServletResponse response = ServletActionContext.getResponse();

        int result=0;
        String insert_Query="insert into emp values(?,?,?,?,?)";
        Connection con=null;
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "ranjan");
            PreparedStatement ps=con.prepareStatement(insert_Query);
            ps.setString(1, eb.getName());
            ps.setString(2, eb.getMobile());
            ps.setString(3, eb.getEmail());
            ps.setString(4, eb.getAddress());
            ps.setString(5, eb.getZipcode());
            result=ps.executeUpdate();


        }catch(Exception e){
            System.out.println(e);
        }
        if(result!=0)
        {
            response.getOutputStream().print("Registered Successfully");
        }
        else
        {
            response.getOutputStream().print("Failed ! Try again");
        }

        return null;

    }
    public String editDetails()
    {
        HttpServletRequest request=ServletActionContext.getRequest();
        List<EmployeeBean> list=new ArrayList<EmployeeBean>();
        String EDIT1_QUERY="SELECT *FROM EMP WHERE NAME=?";
        String name=request.getParameter("name");
        Connection con=null;
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "ranjan");
            PreparedStatement ps=con.prepareStatement(EDIT1_QUERY);
            ps.setString(1, name);
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
                EmployeeBean ep=new EmployeeBean();
                ep.setName(rs.getString(1));
                ep.setMobile(rs.getString(2));
                ep.setEmail(rs.getString(3));
                ep.setAddress(rs.getString(4));
                ep.setZipcode(rs.getString(5));
                list.add(ep);
            }


        }catch(Exception e){
            System.out.println(e);
        }
        request.setAttribute("list",list);
        return SUCCESS;
    }
    public String viewDetails()
    {
        HttpServletRequest request=ServletActionContext.getRequest();

        List<EmployeeBean> l=new ArrayList<EmployeeBean>();
        String Fetch_Query="select *from emp";
        Connection con=null;
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "ranjan");
            PreparedStatement ps=con.prepareStatement(Fetch_Query);
            ResultSet rs=ps.executeQuery();
            while (rs.next())
            {
                EmployeeBean eb1=new EmployeeBean();
                eb1.setName(rs.getString(1));
                eb1.setMobile(rs.getString(2));
                eb1.setEmail(rs.getString(3));
                eb1.setAddress(rs.getString(4));
                eb1.setZipcode(rs.getString(5));
                l.add(eb1);
            }
        }catch(Exception e){
            System.out.println(e);
        }
        if(l!=null && l.size()>0)
            request.setAttribute("data",l);
            return SUCCESS;

    }
    public String deleteDetails()
    {
        HttpServletRequest request=ServletActionContext.getRequest();
        HttpServletResponse response=ServletActionContext.getResponse();
        String name=request.getParameter("name");
        String DELETE_QUERY="DELETE FROM EMP WHERE NAME=?";
        Connection con=null;
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "ranjan");
            PreparedStatement ps=con.prepareStatement(DELETE_QUERY);
            ps.setString(1, name);
            int ret = ps.executeUpdate();
            if(ret>0)
            {
                /*response.getOutputStream().print(1);*/
            }
            else
            {
              /*  response.getOutputStream().print(0);*/

            }

        }catch(Exception e){
            System.out.println(e);
        }

        return  null;
    }
   public String updateDetails()
   {
       HttpServletRequest request=ServletActionContext.getRequest();
       HttpServletResponse response=ServletActionContext.getResponse();
       String name=request.getParameter("name");
       String UPDATE_QUERY="UPDATE EMP SET MOBILE=?,EMAIL=?,ADDRESS=?,ZIPCODE=? WHERE NAME=?";
       Connection con=null;
       try{
           Class.forName("oracle.jdbc.driver.OracleDriver");
           con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "ranjan");
           PreparedStatement ps=con.prepareStatement(UPDATE_QUERY);
           ps.setString(1, eb.getName());
           ps.setString(2, eb.getMobile());
           ps.setString(3, eb.getEmail());
           ps.setString(4, eb.getAddress());
           ps.setString(5, eb.getZipcode());
           int ret = ps.executeUpdate();
           System.out.println(ret);
           if(ret>0)
           {
               response.getOutputStream().print(1);
           }
           else
           {
               response.getOutputStream().print(0);

           }
       }catch(Exception e){
           System.out.println(e);
       }
       return null;
   }
}
