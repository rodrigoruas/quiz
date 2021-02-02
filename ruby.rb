# 1. What's a relational database?

## A set/group of tables that are linked to each other with foreign_keys


# 2. What are the different table relationships you know?


## 1 to many or 1 : N
## Many to Many or N : N relationship

# 3. Consider this e-library service. An author, defined by his
#     name have several books. A book, defined by its title and
#     publishing year, has one author only. What’s this simple
#     database schema?. Please draw it!

## DONE =)



# 4. A user, defined by his email, can read several books. A
#    book (e-book!!) can be read by several users. We also want
#    to keep track of reading dates. Improve your e-library DB
#     scheme with relevant tables and relationships.






# 5. What's the language we use to make queries to the database?

## SQL!!


# 6. GO TO SQL FILE




# 7. GO TO SQL FILE




# 8. What's the purpose of ActiveRecord?

## it gives us some nice pretty methods instead of writing
## those ugly joins and selecs and sql queries

## it helps us to build and to query relational databases


# 9. What's a migration? How do you run a migration?

## it creates/update/change the schema,
## it a script that modify our database

## rake db:migrate
## rails db:migrate


# 10. Complete the migrations

class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.timestamps
    end
  end
end

class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :publishing_year
      t.references :author, foreign_key: true
      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.timestamps
    end
  end
end

class CreateReadings < ActiveRecord::Migration[6.0]
  def change
     create_table :readings do |t|
      t.date :date
      t.references :user, foreign_key: true
      t.references :book, foreign_key: true
      t.timestamps
    end

  end
end


# 11. Write migration to add category to books

class AddCategoryToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :category, :string
  end
end

## let's pretend publishers table exist

class AddPublisherReferenceToBooks < ActiveRecord::Migration[6.0]
  def change
    add_reference :books, :publisher, foreign_key: true
  end
end

#1 Draw your schema
#2 Create migration files!
#3 Migrate
#4 Create the models!

# 12. Define the models for each table in your database


class Author < ActiveRecord::Base
  has_many :books
end

class Book < ActiveRecord::Base
  belongs_to :author
  has_many :readings
  has_many :users, through: :readings

  # it must have a title

  # validates :title, presence: true

  # it must have a publishing_year

  validates :title, :publishing_year, presence: true


end

class Reading < ActiveRecord::Base
  belongs_to :user
  belongs_to :book

end

class User < ActiveRecord::Base
  has_many :readings
  has_many :books, through: :readings
end

# 13. Complete following code using relevant ActiveRecord methods

#   1. Add your favourite author to the db

jules = Author.new(name: "")
jules.save

#   2. Get all authors

Author.all


#   3. Get author with the id=8

Author.find(8)


#   4. Get author with name="Jules Verne", store in a variable: jules

jules = Author.find_by(name: "Jules Verne")

jules = Author.where(name: "Jules Verne")

#   5. Get Jules Verne's books

jules.books

#   6. Create a new book "20000 Leagues under the sea", it's missing
#      in the DB. Store it in a variable: twenty_thousand

twenty_thousand = Book.new
twenty_thousand.title = "20000 Leagues under the sea"
twenty_thousand.publishing_year = 1872
twenty_thousand.author = jules
twenty_thousand.save

Book.create(title: "20000 Leagues under the sea",
              publishing_year: 1872,
              author: jules)


#   7. Add Jules Verne as this book's author


#   8. Now save this book in the DB.



# 14. Add validations of your choice to the Author class. Can we save
#     an object in the DB if the validations do not pass
