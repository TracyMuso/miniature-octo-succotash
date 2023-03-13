# MOS

## How it works

The application is a simple search engine that allows users to search for articles in the database. The search results are displayed in a list with the title, and body.
The user is able to search for articles by title or body. Upon searching the search query is saved in the database and the search results are displayed, this allows the user specific log of their searches. Because queries are unique to specific users, query history is specific to each user.

## Live Demo

## Setup and run

The application is built with ruby 3.1.3 and rails 7.0.4 utilizing the following technologies:

- [Ruby](https://www.ruby-lang.org/en/)
- [Ruby on Rails](https://rubyonrails.org/)
- [PostgreSQL](https://www.postgresql.org/)
- [Stimulus](https://stimulus.hotwired.dev/)

## Setup & Development

To setup the application, you need to have the following installed on your machine:

- [Ruby](https://www.ruby-lang.org/en/)
- [PostgreSQL](https://www.postgresql.org/)
- [Git](https://git-scm.com/)
- [Rails](https://rubyonrails.org/)

### Clone the repository

```bash
git clone https://github.com/TracyMuso/miniature-octo-succotash.git

```

### Install dependencies

```bash
bundle install
```

### Setup database

```bash
rails db:create db:migrate db:seed
```

### Start the server

```bash
rails s
```

## Testing

### Ruby specs

1. Install [rspec-rails](https://github.com/rspec/rspec-rails) to run tests.
2. Now you can run tests with following command:

```
bundle exec rspec spec/
```

### Javascript tests

1. Install necessary modules

```
yarn install
```

2. Now you can run tests with following command:

```
yarn test
```
