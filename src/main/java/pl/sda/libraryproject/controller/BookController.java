package pl.sda.libraryproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.sda.libraryproject.model.Book;
import pl.sda.libraryproject.service.BookService;

import java.util.List;

@Controller
public class BookController {

    private BookService bookService;

    @Autowired
    public BookController(BookService bookService) {
        this.bookService = bookService;
    }

    @RequestMapping(value = "/books",method = RequestMethod.GET)
    public String getBookList(Model model){
        List<Book> bookList = bookService.getAllBooks();
        model.addAttribute("bookList",bookList);
        return "book-list";
    }

}
