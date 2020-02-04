# 1. What's a relational database?




# 2. What are the different table relationships you know?




# 3. Consider this e-library service. An author, defined by his
#     name have several books. A book, defined by its title and
#     publishing year, has one author only. What’s this simple
#     database scheme. Please draw it!




# 4. A user, defined by his email, can read several books. A
#    book (e-book!!) can be read by several user. We also want
#    to keep track of reading dates. Improve your e-library DB
#     scheme with relevant tables and relationships.




# 5. What's the language we use to make queries to the database?




# 6. GO TO SQL FILE




# 7. GO TO SQL FILE




# 8. What's the prupose of activeRecord?




# 9. What's a migration? How do you run a migration?




# 10. Complete the migrations

class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|


    end
  end
end

class CreateBooks < ActiveRecord::Migration[5.2]
  def change

  end
end

class CreateUsers < ActiveRecord::Migration[5.2]
  def change

  end
end

class CreateReadings < ActiveRecord::Migration[5.2]
  def change

  end
end


# 11. Write migration to add category to books

class AddCategoryToBooks < ActiveRecord::Migration[5.2]
  def change



  end
end

# 12. Define the models for each table in your database

class ClassName



end

class ClassName



end

class ClassName



end

class ClassName



end

# 13. Complete following code using relevant ActiveRecord methods

#   1. Add your favourite author to the db


#   2. Get all authors


#   3. Get author with the id=8


#   4. Get author with name="Jules Verne", store in a variable: jules


#   5. Get Lujes Verne's books


#   6. Create a new book "20000 Leagues under the sea", it's missing
#      in the DB. Store it in a variable: twenty_thousand


#   7. Add Jules Verne as this book's author


#   8. Now save this book in the DB.



# 14. Add validations of your choice to the Author class. Can we save
#     an object in the DB if the validations do not pass?

class Author < ActiveRecord::Base



end
















