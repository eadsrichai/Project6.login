package model;

public class DAOAccount {
	private Account account;
	
	public  DAOAccount(String username, String password) {
		account = new Account(username, password);
	
	}
	public boolean Auth() {
		if(account.getUsername().equals("admin") && account.getPassword().equals("1234")) {
			return true;
		}
		return false;
	}
}
