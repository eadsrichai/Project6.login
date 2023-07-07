package model;

import java.sql.*;

public class DAOAccount {
	private Account account;
	private Connection con;

	public DAOAccount() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String dbURL = "jdbc:mysql://localhost/account?characterEncoding=utf-8";
			con = DriverManager.getConnection(dbURL, "root", "");
			System.out.println("Connect DB OK");

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

//	method สำหรับการปิดการเชื่อมต่อฐานข้อมูล
	public void closeConnection() throws SQLException {
		con.close();
	}

//	ตรวจสอบว่า username และ password ถูกต้องหรือไม่
	public boolean Auth(Account account) {
		PreparedStatement pStatement;
		try {
			String sql = "SELECT username, password FROM account WHERE username = ? AND password LIKE ?";
			pStatement = con.prepareStatement(sql);

			pStatement.setString(1, account.getUsername());
			pStatement.setString(2, account.getPassword());

			ResultSet resultSet = pStatement.executeQuery();
			Account acc = new Account();
			if (resultSet.next()) {
				acc.setUsername(resultSet.getString("username"));
				acc.setPassword(resultSet.getString("password"));
				System.out.println(acc.getUsername());
			}
			if (acc.getUsername() != null) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public Boolean CheckAccount(Account account) {
		PreparedStatement pStatement;
		Boolean ans = false;
		try {
			String sql = "SELECT username FROM account WHERE username = ?";
			pStatement = con.prepareStatement(sql);

			pStatement.setString(1, account.getUsername());
			

			ResultSet resultSet = pStatement.executeQuery();
			
			if (resultSet.next()) {
				ans = true;
			}else {
				ans = false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ans;
	}
	public Boolean AddAccount(Account account) {
		Boolean ans = false;
		if (!CheckAccount(account)) {
			PreparedStatement pStatement;
			try {
				String sql = "INSERT INTO account(username,password) VALUES(?,?)";
				pStatement = con.prepareStatement(sql);

				pStatement.setString(1, account.getUsername());
				pStatement.setString(2, account.getPassword());
				System.out.println(account.getUsername());
				int row = pStatement.executeUpdate();
				System.out.println(row);
				ans = true;
			} catch (SQLException e) {	e.printStackTrace();	}
		}else { 
		ans = false;
		}
		return ans;
	}

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	public DAOAccount(String username, String password) {
		account = new Account(username, password);

	}

}
