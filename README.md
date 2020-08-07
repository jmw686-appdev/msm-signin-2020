# Refactoring MSM Queries with Methods

[This Chapter contains detailed notes](https://chapters.firstdraft.com/chapters/843) for this project.

## Setup

1. Start the web server by running `bin/server`.
1. Navigate to your live application preview.
1. As you work, remember to navigate to `/git` and **commit often as you work.**
1. `rails grade` to ensure everything still works.

## Specs
<details>
  <summary>Click here to see names of each test</summary>

User has an column called 'password_digest' of type 'string'

User model does not have a password column

User model has the 'has_secure_password' helper in in the User model

Bookmark model has 'user_id' column

Bookmark model has 'movie_id' column

/user_sign_in has form to sign in a User

/user_sign_in has a &lt;label&gt; with the text 'Email'

/user_sign_in has a label 'Email' with a matching input tag.

/user_sign_in has a &lt;label&gt; with the text 'Password'

/user_sign_in has a label 'Password' with a matching input tag.

/user_sign_in redirects you to the homepage when form is submitted

/user_sign_in displays the 'Sign out' link when user is signed in

/user_sign_up has form to sign up a User

/user_sign_up has a &lt;label&gt; with the text 'Email'

/user_sign_up has a label 'Email' with a matching input tag.

/user_sign_up has a &lt;label&gt; with the text 'First name'

/user_sign_up has a label 'First name' with a matching input tag.

/user_sign_up has a &lt;label&gt; with the text 'Last name'

/user_sign_up has a label 'Last name' with a matching input tag.

/user_sign_up has a &lt;label&gt; with the text 'Password'

/user_sign_up has a label 'Password' with a matching input tag.

/user_sign_up has a &lt;label&gt; with the text 'Password Confirmation'

/user_sign_up has a label 'Password Confirmation' with a matching input tag.

/user_sign_up displays the 'Sign out' link when a user signs up

/user_sign_up creates a new user record when the form is submitted

/bookmarks has a form to create bookmarks

/bookmarks has a form to create bookmarks

/bookmarks has a dropdown to select Movies by title

/bookmarks form creates a bookmark record

/bookmarks displays a list of the signed in user's bookmarks

/bookmarks has a link to delete each bookmark

/bookmarks has a link, 'Un-bookmark', that removes a Bookmark record

</details>
