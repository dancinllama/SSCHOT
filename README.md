Standard Set Controller Hands On Training
======

Hands on Training Tutorial for the Standard Set Controller

This training assumes you have already signed up for a developer organization, and have a project created in an IDE for modifying Apex and Visualforce.

1.  Copy the classes in src/classes to your src/classes directory in your project.
2.  Copy the component in src/components to your src/components directory.
3.  Copy the visualforce page in src/pages to your src/pages directory.
4.  Save the files to salesforce.
5.  Log in to your developer org.  Find a test account with more than 10 related contacts, or create them if they don't exist.  Write down or copy the account Id.
6.  Get familiar with the code.
7.  Go to http://<salesforcedomain>/apex/pages/AccountContactRelatedList?id=<your_account_id> and you should see a Visualforce page displayed with your Account's related contacts.
8.  Add the AccountContactRelatedList to your Account's page layout.
9.  Dive into the AccountContactRelatedList Visualforce page and add pagination buttons (First, Last, Previous, Next).
10.  Bonus: Add filtering around the related list
11.  Bonus: Uncomment the getRelatedFieldsArray method in MyCustomRelatedListCtrl, and the commented out component in the AccountContactRelatedList visualforce page.  Apply this component using a different page layout / related list.


