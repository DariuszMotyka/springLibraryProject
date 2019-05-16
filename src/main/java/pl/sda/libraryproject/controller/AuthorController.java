package pl.sda.libraryproject.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.sda.libraryproject.model.Author;
import pl.sda.libraryproject.service.AuthorService;

import java.util.List;

@Controller
public class AuthorController {

    private AuthorService authorService;

    @Autowired
    public AuthorController(AuthorService authorService) {
        this.authorService = authorService;
    }

    @RequestMapping(value = "/authors",method = RequestMethod.GET)
    public String getAuthorList(Model model){
        List<Author> authorList = authorService.getAllAuthor();
        model.addAttribute("authorList",authorList);
        return "author-list";
    }
}
