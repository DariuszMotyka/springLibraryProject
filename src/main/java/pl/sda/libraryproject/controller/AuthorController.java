package pl.sda.libraryproject.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.sda.libraryproject.model.Author;
import pl.sda.libraryproject.service.AuthorService;

import java.util.List;
import java.util.Optional;

@Controller
public class AuthorController {

    private AuthorService authorService;

    @Autowired
    public AuthorController(AuthorService authorService) {
        this.authorService = authorService;
    }

    @RequestMapping(value = "/authors")
    public String getAuthorList(Model model){
        List<Author> authorList = authorService.getAllAuthor();
        model.addAttribute("authorList",authorList);
        return "author-list";
    }

    @RequestMapping(value =  "/authorAddForm")
    public String showFormForAdd(){
        return "author-add";
    }

    @RequestMapping(value = "/authorEditForm", method = RequestMethod.GET)
    public String showFormForEdit(@RequestAttribute("authorId") long authorId, Model model){
        Optional<Author> author = authorService.getAuthorById(authorId);
        model.addAttribute("authorAttribute",author);
        return "author-add";
    }

    @RequestMapping(value = "/authorDelete", method = RequestMethod.GET)
    public String doAction(@RequestParam Long authorId) {
        authorService.delete(authorId);
        return "redirect:/authors";
    }

    @RequestMapping(value = "/saveAuthor")
    public String saveAuthor(@ModelAttribute("authorAttribute") Author theAuthor){
        authorService.saveAuthor(theAuthor);
        return "redirect:/authors";

    }


}
