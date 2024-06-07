package controller.database;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.LoginModel;
import model.PasswordEncryptionWithAes;
import model.UserModel;
import utils.StringUtils;

public class DBController {

	/**
	 * Establishes a connection to the database using pre-defined credentials and
	 * driver information.
	 * 
	 * @return A `Connection` object representing the established connection to the
	 *         database.
	 * @throws SQLException           if a database access error occurs.
	 * @throws ClassNotFoundException if the JDBC driver class is not found.
	 */
	public Connection getConnection() throws SQLException, ClassNotFoundException {

		// Load the JDBC(Java Database Connectivity) driver class specified by the StringUtils.DRIVER_NAME constant
		Class.forName(StringUtils.DRIVER_NAME);

		// Create a connection to the database using the provided credentials
		return DriverManager.getConnection(StringUtils.LOCALHOST_URL, StringUtils.LOCALHOST_USERNAME, StringUtils.LOCALHOST_PASSWORD);
	}

	/**
	 * This method attempts to register a new student in the database.
	 * 
	 * @param student A `StudentModel` object containing the student's information.
	 * @return An integer value indicating the registration status: - 1:
	 *         Registration successful - 0: Registration failed (no rows affected) -
	 *         -1: Internal error (e.g., ClassNotFound or SQLException)
	 * @throws SQLException           if a database access error occurs.
	 * @throws ClassNotFoundException if the JDBC driver class is not found.
	 */
	public int registerUser(UserModel User) {

		try {
			// Prepare a statement using the predefined query for student registration
			PreparedStatement stmt = getConnection().prepareStatement(StringUtils.QUERY_REGISTER_USER);

			// Set the student information in the prepared statement
			stmt.setString(1, User.getUsername());
			stmt.setDate(2, Date.valueOf(User.getDob()));
			stmt.setString(3, User.getGender());
			stmt.setString(4, User.getEmail());
			stmt.setString(5, User.getPhoneNumber());
			stmt.setString(6, User.getLocation());
			stmt.setString(7, PasswordEncryptionWithAes.encrypt(User.getUsername(), User.getPassword()));
			stmt.setString(8, User.getImageUrlFromPart());
			
			System.out.println(User.getUsername());
			System.out.println(Date.valueOf(User.getDob()));
			System.out.println(User.getGender());
			System.out.println(User.getEmail());
			System.out.println(User.getPhoneNumber());
			System.out.println(User.getLocation());
			System.out.println(User.getPassword());
			System.out.println(User.getImageUrlFromPart());
			// Execute the update statement and store the number of affected rows
			int result = stmt.executeUpdate();

			// Check if the update was successful (i.e., at least one row affected)
			if (result > 0) {
				return 1; // Registration successful
			} else {
				return 0; // Registration failed (no rows affected)
			}

		} catch (ClassNotFoundException | SQLException ex) {
			// Print the stack trace for debugging purposes
			ex.printStackTrace();
			return -1; // Internal error	
		}
	}

	/**
	 * This method attempts to validate a student login by checking the username and
	 * password against a database.
	 * 
	 * @param username The username provided by the user attempting to log in.
	 * @param password The password provided by the user attempting to log in.
	 * @return An integer value indicating the login status: - 1: Login successful -
	 *         0: Username or password mismatch - -1: Username not found in the
	 *         database - -2: Internal error (e.g., SQL or ClassNotFound exceptions)
	 * @throws SQLException           if a database access error occurs.
	 * @throws ClassNotFoundException if the JDBC driver class is not found.
	 */
	public int getUserLoginInfo(LoginModel loginModel) {
		// Try-catch block to handle potential SQL or ClassNotFound exceptions
		try {
			// Prepare a statement using the predefined query for login check
			PreparedStatement st = getConnection().prepareStatement(StringUtils.QUERY_LOGIN_USER_CHECK);

			// Set the username in the first parameter of the prepared statement
			st.setString(1, loginModel.getUsername());

			// Execute the query and store the result set
			ResultSet result = st.executeQuery();

			// Check if there's a record returned from the query
			if (result.next()) {
				// Get the username from the database
				String userDb = result.getString(StringUtils.USERNAME);

				// Get the password from the database
				String encryptedPwd = result.getString(StringUtils.PASSWORD);

				String decryptedPwd = PasswordEncryptionWithAes.decrypt(encryptedPwd, userDb);
				// Check if the username and password match the credentials from the database
				if (userDb.equals(loginModel.getUsername()) && decryptedPwd.equals(loginModel.getPassword())) {
					// Login successful, return 1
					return 1;
				} else {
					// Username or password mismatch, return 0
					return 0;
				}
			} else {
				// Username not found in the database, return -1
				return -1;
			}

			// Catch SQLException and ClassNotFoundException if they occur
		} catch (SQLException | ClassNotFoundException ex) {
			// Print the stack trace for debugging purposes
			ex.printStackTrace();
			// Return -2 to indicate an internal error
			return -2;
		}
	}

	public Boolean checkEmailIfExists(String email) {
		// TODO: Implement logic to check if the provided email address exists in the
		// database
		// This method should likely query the database using DBController and return
		// true if the email exists, false otherwise.
		return false;
	}

	public Boolean checkNumberIfExists(String number) {
		// TODO: Implement logic to check if the provided phone number exists in the
		// database
		// This method should likely query the database using DBController and return
		// true if the phone number exists, false otherwise.
		return false;
	}

	public Boolean checkUsernameIfExists(String username) {
		// TODO: Implement logic to check if the provided username exists in the
		// database
		// This method should likely query the database using DBController and return
		// true if the username exists, false otherwise.
		return false;
	}

	
	
	public ArrayList<UserModel> getAllUserInfo(){
		try {
			PreparedStatement stmt = getConnection().prepareStatement(StringUtils.QUERY_GET_ALL_USERS);
			ResultSet result = stmt.executeQuery();
		
			ArrayList<UserModel> users = new ArrayList<UserModel>();
			
			while (result.next()) {
				UserModel user = new UserModel();
				user.setUsername(result.getString("user_name"));				
				user.setDob(result.getDate("birthday").toLocalDate());
				user.setEmail(result.getString("email"));
				user.setGender(result.getString("gender"));
				user.setPhoneNumber(result.getString("number"));
				user.setLocation(result.getString("location"));
				user.setImageUrlFromDB(result.getString("image"));
				users.add(user);
			}
			return users;
		}	catch (SQLException | ClassNotFoundException ex) {
			ex.printStackTrace();
			return null;
		}
	}
	
	

	public int deleteUserInfo(String username) {
		try (Connection con = getConnection()) {
			PreparedStatement st = con.prepareStatement(StringUtils.QUERY_DELETE_USER);
			st.setString(1, username);
			return st.executeUpdate();
		} catch (SQLException | ClassNotFoundException ex) {
			ex.printStackTrace(); // Log the exception for debugging
			return -1;
		}
	}
}