package com.bookShoppingSite.controller;

import com.bookShoppingSite.dto.BookDto;
import com.bookShoppingSite.service.BookService;
import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.util.List;


@Controller
@RequestMapping("/")
public class BooksController {

    @Autowired
    private BookService bookService;

    private static Logger logger = LogManager.getLogger(BooksController.class);

    //Adding the book
    @RequestMapping(value = "/addBook", method = RequestMethod.GET)
    public String addBookData(Model model) {
        BasicConfigurator.configure();
        model.addAttribute("bookDto", new BookDto());
        logger.info(" Inside addBookData method at BooksController class");
        return "addBookForm";
    }

    //Save book details inside database
    @RequestMapping(value = "/saveBook", method = RequestMethod.POST)
    public String saveProduct(@Valid @ModelAttribute("bookDto") BookDto bookDto, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "addBookForm";
        } else {
            bookService.saveBook(bookDto);
            logger.info(" Inside saveBook method at BooksController class");
            return "redirect:/allBooksData";
        }
    }

    //Retrieving  AllBookData in DB
    @RequestMapping(value = "/allBooksData", method = RequestMethod.GET)
    public String getAllDataOfBook(Model model) {
        try {
            List<BookDto> allBooksData = bookService.allBooksData();
            logger.info(" Inside getAllDataOfBook method at BooksController class" + allBooksData);
            model.addAttribute("allBooksData", allBooksData);
        } catch (EmptyResultDataAccessException e) {
            logger.error("error Inside getAllDataOfBook method at BooksController class" + e);
        }
        return "productListPage";
    }

    //get the single Book by using BookId
    @RequestMapping(value = "/getSingleBook/{bookId}", method = RequestMethod.GET)
    public String oneProduct(@PathVariable("bookId") String bookId, Model model) {
        BookDto bookDto = bookService.getBook(bookId);
        logger.info(" Inside oneProduct method at BooksController class" + bookDto);
        model.addAttribute("singleBook", bookDto);
        return "productDetailsPage";
    }

    //get the Single Book by using sellerName
    @RequestMapping(value = "/getBooksBySellerName/{sellerName}", method = RequestMethod.GET)
    public String getSingleBookBySellerName(@PathVariable("sellerName") String sellerName, Model model) {
        try {
            List<BookDto> getSellerNameBookList = bookService.getBookBySellerName(sellerName);
            logger.info(" Inside getBooksBySellerName method at BooksController class" + getSellerNameBookList);
            model.addAttribute("getSellerNameBookList", getSellerNameBookList);
        } catch (EmptyResultDataAccessException e) {
            logger.error("error Inside getAllDataOfBook method at BooksController class" + e);
        }
        return "sellerNameBookList";
    }

    //edit Book by BookId
    @RequestMapping(value = "/updateBook/{bookId}", method = RequestMethod.GET)
    public String edit(@PathVariable("bookId") String bookId, Model model) {
        BookDto bookDto = bookService.getBook(bookId);
        logger.info(" Inside Edit method at BooksController class" + bookDto);
        model.addAttribute("bookDto", bookDto);
        return "updateBookForm";
    }

    //Save the Book Update Data
    @RequestMapping(value = "/bookSave", method = RequestMethod.POST)
    public String productSave(@ModelAttribute("product") BookDto bookDto) {
        bookService.updateBook(bookDto);
        logger.info(" Inside getBooksBySellerName method at BooksController class" + bookDto);
        return "redirect:/allBooksData";
    }

    //Deleting the BookData by using BookID
    @RequestMapping(value = "/deleteBook/{bookId}", method = RequestMethod.GET)
    public String delete(@PathVariable("bookId") String bookId, Model model) {
        bookService.deleteBook(bookId);
        logger.info(" Inside getBooksBySellerName method at BooksController class" + bookId);
        return "redirect:/allBooksData";
    }
}
