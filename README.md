### Introduction
The address book application is a web-based tool built using Java Server Pages (JSP) and a MySQL database. It allows users to manage contacts by performing CRUD (Create, Read, Update, Delete) operations. The application consists of multiple JSP files, each serving a specific purpose. The design features a sticky header and a side navigation menu to enhance usability. Below is an explanation of each JSP file in the application.

### Code Explanation

1. **header.jsp**
   - **Purpose**: Displays the header of the application, including the title "ADDRESS BOOK."
   - **Styling**: The header has a pink background with white text and a decorative border at the bottom.

2. **link.jsp**
   - **Purpose**: Provides a vertical menu with hyperlinks to different sections of the application (home, create, read, update, delete, and new forms).
   - **Styling**: The links are styled with hover effects to improve user experience. The menu is fixed on the left side.

3. **home.jsp**
   - **Purpose**: Serves as the landing page for the application, welcoming users and providing an overview of features.
   - **Content**: Contains descriptions of each operation available in the address book.
   - **Styling**: The background image is set to cover the entire content area, and a magenta border is added for emphasis.

4. **create.jsp**
   - **Purpose**: Provides a form for users to create a new contact by entering their name, contact information, and address.
   - **Form Handling**: The form submits data to `create_action.jsp` for processing.
   - **Styling**: A clean design with a white background for the form to improve readability.

5. **create_action.jsp**
   - **Purpose**: Handles the action of creating a new contact in the database.
   - **Functionality**: Connects to the MySQL database, executes an insert query, and provides feedback on success or failure.
   - **Error Handling**: Catches and displays exceptions that may occur during database operations.

6. **read.jsp**
   - **Purpose**: Displays a list of all contacts stored in the database in a tabular format.
   - **Functionality**: Fetches data from the database and includes links for deleting or updating contacts.
   - **Styling**: The table is styled for clarity, with a colored header to differentiate column names.

7. **update.jsp**
   - **Purpose**: Allows users to update an existing contact’s details by providing a form where users can enter the current and new information.
   - **Form Handling**: Submits data to `update_action.jsp` for processing.
   - **Styling**: Similar to `create.jsp`, it maintains a consistent look and feel across the application.

8. **update_action.jsp**
   - **Purpose**: Processes the update request from `update.jsp`.
   - **Functionality**: Executes an update query on the database based on user input and redirects to `home.jsp` upon success.
   - **Error Handling**: Catches exceptions and displays any errors that may occur.

9. **up1.jsp**
   - **Purpose**: Provides a form to find a contact by name for updating their details.
   - **Form Handling**: Submits the entered name to `up2.jsp` to retrieve the contact’s existing details.
   - **Styling**: Consistent design with other forms in the application.

10. **up2.jsp**
    - **Purpose**: Displays a prefilled form with the contact's existing details, allowing the user to update their information.
    - **Functionality**: Fetches the current details of the specified contact from the database to pre-fill the form fields.
    - **Styling**: Follows the same styling as other forms for uniformity.
    
This address book application serves as a practical example of using JSP to create a web-based interface for managing contacts. Each JSP file plays a crucial role in the overall functionality, from presenting the user interface to handling database operations. The application is structured to ensure a smooth user experience while adhering to web design principles. 
