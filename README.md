# X-Sample
This repository contains the code based on the **Ruby on Rails Tutorial** by Michael Hartl.

## Table of Contents

- [Description](#description)
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Installation](#installation)
- [Usage](#usage)
- [Running Tests](#running-tests)
- [Acknowledgements](#acknowledgements)
- [Contact](#contact)

## Description
A Twitter-inspired Ruby on Rails web application built as part of the Hartl's Ruby on Rails Tutorial. The Sample App includes essential social media features such as user authentication, profile management, microblogging with posts, following/unfollowing users, and a dynamic feed. This application demonstrates best practices in Rails development, including RESTful design, MVC architecture and test-driven development (TDD).

## Features

- **User Authentication:** Secure sign-up, login, and logout functionalities with password encryption.
- **Profile Management:** Users can create and edit profiles, upload profile pictures, and view other users' profiles.
- **Microblogging:** Users can create, edit, and delete short posts (microposts) with character limits.
- **Following System:** Users can follow and unfollow other users, with follower/following counts displayed on profiles.
- **Dynamic Feed:** A personalized feed that displays the most recent posts from followed users.
- **Account Activation:** Email-based account activation to verify user emails.
- **Password Reset:** Users can reset their passwords via email if they forget them.
- **Pagination:** Posts and users are paginated to improve load times and user experience.

## Technologies Used
- **Backend:** Ruby on Rails
- **Frontend:** HTML5, CSS3, JavaScript, Bootstrap
- **Database:** SQLite, PostgreSQL
- **Testing:** Minitest, RSpec 
- **Deployment:** Heroku

## Installation
Follow these steps to set up the project locally:

1. **Clone the repository:**

    ```bash
    git clone https://github.com/yourusername/x-sample.git
    ```

2. **Navigate into the directory:**

    ```bash
    cd x-sample
    ```

3. **Install dependencies:**

    ```bash
    bundle install
    ```

4. **Set up the database:**

    ```bash
    rails db:create
    rails db:migrate
    rails db:seed
    ```
## Usage

1. **Start the server:**

    ```bash
    rails server
    ```

2. **Open your browser and go to:**

    ```
    http://localhost:3000
    ```

3. **Sign Up and Explore:**

    - Sign up with a new user account.
    - Create microposts, follow other users, and explore the feed.

## Running Tests
1. **Ensure dependencies are installed:**

   If you haven't already installed the gems, do so by running:

    ```bash
    bundle install
    ```

2. **Run all tests:**

   You can run the entire test suite with:

    ```bash
    rails test
    ```

3. **Run specific tests:**

   To run tests for a specific file:

    ```bash
    rails test test/models/example_model_test.rb
    ```

4. **Running tests with detailed output:**

   If you want more detailed test output, you can run:

    ```bash
    rails test -v
    ```

## Acknowledgements
- [Ruby on Rails](https://rubyonrails.org/)
- [Bootstrap](https://getbootstrap.com/)
- [Minitest](https://github.com/minitest/minitest)
- [RSpec](https://rspec.info/)
- [Heroku](https://www.heroku.com/)

## Contact
**Ivan Sharov**  
Email: [sharoviva@cvut.cz](mailto:sharoviva@cvut.cz)
LinkedIn: [Ivan Sharov](https://www.linkedin.com/in/ivan-sharov-964421282/)