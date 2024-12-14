# **Ensolvers - QA Challenge - Website **

---

## **1. Login**

### Positive Test Cases
- Verify login with valid username and password.
- Verify login with case-sensitive username and password (if applicable).
- Verify login functionality for a newly registered user.
- Verify login using copy-pasted credentials from another source.
- Verify "Remember Me" functionality (if available).
- Verify successful login redirects the user to the welcome page.

### Negative Test Cases
- Attempt login with invalid username or password.
- Attempt login with empty username and/or password fields.
- Attempt login with SQL injection or special characters in input fields.
- Attempt login using expired or blocked user accounts.
- Test account lockout after multiple failed login attempts (e.g., 5).
- Test login functionality after cookies or session expiration.

---

## **2. Forgot Password**

### Positive Test Cases
- Verify the "Forgot Password" link is visible and redirects correctly.
- Verify entering a valid email address sends a password reset link.
- Verify the password reset link works and redirects to the reset form.
- Verify the ability to set a new password and login successfully.

### Negative Test Cases
- Attempt to reset the password with an unregistered or invalid email address.
- Attempt to reset the password using an expired reset link.
- Test the reset form with mismatched new password and confirmation fields.
- Test the reset form with weak passwords (if password strength is enforced).

---

## **3. Welcome Page**

### Positive Test Cases
- Verify the welcome page displays correctly after successful login.
- Verify the user-specific data (e.g., profile picture, name) is displayed accurately.

### Negative Test Cases
- Access the welcome page directly without login (should redirect to login).
- Test page functionality with invalid or corrupted session cookies.

---

## **4. Manage To-Do Items**

### Positive Test Cases
- Verify the ability to add a new to-do item with valid data.
- Verify editing the title or description of an existing to-do item.
- Verify marking a to-do item as complete or incomplete.
- Verify deleting a to-do item and confirming it no longer appears in the list.

### Negative Test Cases
- Attempt to add a to-do item with an empty title.
- Attempt to edit a to-do item with invalid characters or exceeding the character limit.
- Attempt to delete a to-do item without confirmation (if a confirmation prompt exists).

---

## **5. Manage Folders**

### Positive Test Cases
- Verify creating a new folder with a valid name.
- Verify renaming an existing folder.
- Verify organizing to-do items by moving them into a folder.
- Verify deleting a folder and its impact on associated to-do items (e.g., reassignment or deletion).

### Negative Test Cases
- Attempt to create a folder with an empty name.
- Attempt to create folders with duplicate names (if not allowed).
- Attempt to move items to a non-existent or deleted folder.

---

## **6. Account Settings**

### Positive Test Cases
- Verify updating profile information like name, email, or phone number.

### Negative Test Cases
- Attempt to update profile information with invalid data (e.g., invalid email format).
- Test saving changes when mandatory fields are left blank.

---

## **7. Logout**

### Positive Test Cases
- Verify clicking the logout button successfully logs the user out.
- Verify the user is redirected to the login page after logout.
- Verify session data is cleared after logout.

### Negative Test Cases
- Attempt to access restricted pages after logout (should redirect to login).
- Test multiple simultaneous logins and logout from one session to see its effect on others.

---
