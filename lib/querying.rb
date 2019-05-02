def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year FROM books WHERE series_id = 1 ORDER BY year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters ORDER BY LENGTH(motto) DESC LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) FROM characters GROUP BY species ORDER BY COUNT(species) DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT Authors.name, Subgenres.name
  FROM Authors INNER JOIN Subgenres
  ON Authors.id = Subgenres.id;"
end

def select_series_title_with_most_human_characters
  "SELECT Series.title
  FROM Characters INNER JOIN Series 
  ON Characters.series_id = Series.id
  WHERE Characters.species = 'human'
  GROUP BY Series.title
  ORDER BY COUNT(Characters.species) DESC
  LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT Characters.name, COUNT(Characters.id)
  FROM Character_books INNER JOIN Characters
  ON Character_books.character_id = Characters.id
  GROUP BY Characters.id
  ORDER BY COUNT(Characters.id) DESC, Characters.name;"
end
