# Assignment
Create a contact list app. Users should be able to create, edit, update, and destroy contacts. 

Via API AND UI, you should be able to:
- CRUD contacts
- Request contacts with sorts:
  - in alphabetical order
  - in reverse alphabetical order
  - by creation date
  - by creation date in reverse order

UI should offer an index page, a show page, and forms to edit a Contact. There should also be a delete button.

A `Contact` is:
- First name, required
- Last name, optional
- Phone Number, required

## Validations
- A name can contain letters or a dash or a space
- Must be a phone number with optional country code
- Phone number cannot contain spaces, dashes, or parens
- No uniqueness validation for phone number or name

## Bonus
- User can input phone number with parens, spaces, dash but it is stored as a flat number string with country code.
- If you try to enter two users with the same phone number, show a warning message.