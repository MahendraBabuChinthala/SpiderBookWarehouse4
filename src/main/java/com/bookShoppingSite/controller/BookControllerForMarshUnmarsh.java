package com.bookShoppingSite.controller;

import com.bookShoppingSite.RestService.BookRestService;
import com.bookShoppingSite.dto.BookDto;
import com.bookShoppingSite.service.BookService;
import com.mysql.cj.x.protobuf.MysqlxDatatypes;
import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@RestController
@RequestMapping("/")
public class BookControllerForMarshUnmarsh {

    @Autowired
    private BookRestService bookRestService;

    @Autowired
    private BookService bookService;

    private static Logger logger = LogManager.getLogger(BooksController.class);

    // Get data in JSON format
    @RequestMapping(value = "/getAllBooksDataInJson", method = RequestMethod.GET)
    @ResponseBody
    public String getAllBooksDataInJson() {
        BasicConfigurator.configure();
        logger.info(" Inside getAllBooksDataInJson method at BookControllerForMarshUnmarsh class");
        return bookRestService.convertAllBooksDataToJson();
    }

    //get the Data by ID in Json format
    @RequestMapping(value = "/getSingleBookJson/{bookId}", method = RequestMethod.GET)
    @ResponseBody
    public String getSingleBookProfile(@PathVariable("bookId") String bookId) {
        logger.info(" Inside getSingleBookProfile method at BookControllerForMarshUnmarsh class");
        return bookRestService.convertSingleBookDataToJson(bookId);
    }

    //create method for Add Book in Clint Side
    @RequestMapping(value = "/addBookToJson", method = RequestMethod.POST)
    @ResponseBody
    public String addClintBookTOServerJson(@RequestBody BookDto bookDto) {
        logger.info(" Inside addClintBookTOServerJson method at BookControllerForMarshUnmarsh class");
        return bookRestService.convertAddBooKToJson(bookDto);
    }

    //create method for update the Book
    @RequestMapping(value = "/updateTheBookToJson", method = RequestMethod.POST)
    @ResponseBody
    public String updateTheBookToJson(@RequestBody BookDto bookDto) {
        logger.info(" Inside updateTheBookToJson method at BookControllerForMarshUnmarsh class");
        return bookRestService.convertUpdateBookToJson(bookDto);
    }

    //Delete the Book Data By using BookID in Json
    @RequestMapping(value = "/deleteTheBookToJson/{bookId}", method = RequestMethod.GET)
    @ResponseBody
    public String deleteproductid(@PathVariable String bookId, Model model) {
        logger.info(" Inside deleteProductId method at BookControllerForMarshUnmarsh class");
        return bookRestService.convertDeleteBookToJson(bookId);
    }

    //get the AllBookData in Object to String Xml
    @RequestMapping(value = "/convertObjectTOXml", produces = {"application/xml"})
    public String convertObjectTOXml() {
        logger.info(" Inside convertObjectTOXml method at BookControllerForMarshUnmarsh class" + bookService.convertObjectTOXml());
        return bookService.convertObjectTOXml();
    }

    //get the AllBookData in String Xml to Object
    @RequestMapping(value = "/convertXmlToObject", produces = {"application/xml"})
    public Object convertXmlToObject() {
        String xml = bookService.convertObjectTOXml();
        Object obj = bookService.convertXmlToObject(xml);
        logger.info(" Inside convertXmlToObject method at BookControllerForMarshUnmarsh class" + obj);
        return obj;
    }

    // Get SellerName Books data To JSON formate
    @RequestMapping(value = "/getSellerNameBooksDataToJson/{sellerName}", method = RequestMethod.GET)
    @ResponseBody
    public String getSellerNameBooksDataToJson(@PathVariable String sellerName) {
        logger.info(" Inside getSellerNameBooksDataToJson method at BookControllerForMarshUnmarsh class");
        return bookRestService.convertSellerNameBooksDataToJson(sellerName);
    }
}
