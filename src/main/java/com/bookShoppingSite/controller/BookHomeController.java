package com.bookShoppingSite.controller;


import com.mysql.cj.x.protobuf.MysqlxDatatypes;
import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/")
public class BookHomeController {

    private static Logger logger = LogManager.getLogger(BooksController.class);

    @RequestMapping(value = {"/", "/bookHome"}, method = RequestMethod.GET)
    public String bookHome(Model model) {
        BasicConfigurator.configure();
        logger.info(" Inside bookHome method at BookHomeController class");
        return "bookHomePage";
    }

}
