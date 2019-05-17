package pl.sda.libraryproject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.sda.libraryproject.model.Author;
import pl.sda.libraryproject.repository.AuthorRepository;

import java.util.List;
import java.util.Optional;

@Service
public class AuthorService {

    private AuthorRepository authorRepository;

    @Autowired
    public AuthorService(AuthorRepository authorRepository) {
        this.authorRepository = authorRepository;
    }

    public List<Author> getAllAuthor(){
        return authorRepository.findAll();
    }

    public Optional<Author> getAuthorById(long authorId){
        return authorRepository.findById(authorId);
    }

    public void saveAuthor(Author author){
        authorRepository.save(author);
    }
}
