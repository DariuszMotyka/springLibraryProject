package pl.sda.libraryproject.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.sda.libraryproject.model.Author;

@Repository
public interface AuthorRepository extends JpaRepository<Author, Long> {
}
