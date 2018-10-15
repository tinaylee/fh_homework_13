# Homework 13

## Due Date

Wednesday, October 17, 2018 @ 3:00 PM

## Goals

- The purpose of this homework is to document your process of applying TDD to implement the following methods:

  - Person class

    - full_name

      - return a string consisting of the person's first name and last name
      - e.g.
        ```ruby
        person = Person.new(first_name: 'John', last_name: 'Doe')
        puts person.full_name
        => "John Doe"
        ```

    - full_name_reversed

      - return a string consisting of the person's first name and last name
      - e.g.
        ```ruby
        person = Person.new(first_name: 'John', last_name: 'Doe')
        puts person.full_name_reversed
        => "Doe, John"
        ```

    - age

      - returns a integer consisting the person's age
      - e.g.
        ```ruby
        person = Person.new(first_name: 'John', last_name: 'Doe', age: 25)
        puts person.age
        => 25
        ```

    - age=(new_age)

      - sets the person's age to the passed in `new_age`
      - e.g.
        ```ruby
        person = Person.new(first_name: 'John', last_name: 'Doe', age: 25)
        person.age = 21
        puts person.age
        => 21
        ```

    - first_name=(new_first_name)

      - sets the person's first name to the passed in `new_first_name`
      - e.g.
        ```ruby
        person = Person.new(first_name: 'John', last_name: 'Doe', age: 25)
        person.first_name = 'Jane'
        puts person.first_name
        => "Jane"
        ```

    - last_name=(new_last_name)
      - sets the person's last name to the passed in `new_last_name`
      - e.g.
        ```ruby
        person = Person.new(first_name: 'John', last_name: 'Doe', age: 25)
        person.last_name = 'Smith'
        puts person.last_name
        => "Smith"
        ```

## Readings and Resources

N/A

## Guidelines

- Please record the step as well as the action performed. For example,

  - Call your shot

    ```text
    all examples will pass
    ```

  - Run RSpec

    ```bash
    rspec
    ```

    <Output Of RSpec>

  - Add example for full name

    ```text
    it '#full_name should have a full name' do
      # arrange
      person = Person.new(first_name: 'John', last_name: 'Doe')

      # act
      result = person.full_name
    end
    ```

  - Call your shot

    ```text
    this example will fail
    ```

  - Implement the `full_name` method definition

    ```ruby
    def full_name
    end
    ```

  - Call your shot

    ```text
    all examples will pass
    ```

  - Run RSpec

    ```bash
    rspec
    ```

    <Output Of RSpec>

  - add so on...

## Setup

- copy the repo for Homework #12

  ```bash
  cp -r /path/to/homework-12-repo  fh-homework-13
  ```

- remove all the code pertaining to linked list

  ```bash
  cd /path/to/fh-homework-13
  ```

  Note: Just edit the contents of the files for now.

- rename `linked_list_spec.rb`

  ```bash
  mv spec/linked_list.rb spec/person.rb
  ```

- remove files

  ```bash
  rm -rf lib/linked_list.rb
  rm -rf lib/node.rb
  rm -rf spec/node_spec.rb
  ```

## Deliverables

- push changes to Github, `fh-homework-13`

## Have Questions

Please make a reasonable effort to complete the homework prior to our next session. If you have any questions regarding this homework, please do send me a message via Slack.
