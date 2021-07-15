package com.bookShoppingSite.RestService;

import com.bookShoppingSite.dao.BookDao;
import com.bookShoppingSite.dto.BookDto;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.web.bind.annotation.PathVariable;

import java.io.IOException;

public class BookRestServiceImpl implements BookRestService {

    private BookDao bookDao;

    @Override
    public String convertAllBooksDataToJson() {
        ObjectMapper objectMapper = new ObjectMapper();
        try {
            return objectMapper.writeValueAsString(bookDao.allBooksData());
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "error";
    }

    @Override
    public String convertSingleBookDataToJson(String bookId) {
        ObjectMapper objectMapper = new ObjectMapper();
        try {
            return objectMapper.writeValueAsString(bookDao.getBook(bookId));
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "error";
    }

    @Override
    public String convertDeleteBookToJson(String bookId) {
        ObjectMapper objectMapper = new ObjectMapper();
        try {
            return objectMapper.writeValueAsString(bookDao.deleteBook(bookId));
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public String convertAddBooKToJson(BookDto bookDto) {
        ObjectMapper objectMapper = new ObjectMapper();
        try {
            return objectMapper.writeValueAsString(bookDao.saveBook(bookDto));
        } catch (JsonGenerationException e) {
            e.printStackTrace();
        } catch (JsonMappingException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public String convertUpdateBookToJson(BookDto bookDto) {
        ObjectMapper objectMapper = new ObjectMapper();
        try {
            return objectMapper.writeValueAsString(bookDao.updateBook(bookDto));
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public String convertSellerNameBooksDataToJson(String sellerName) {
        ObjectMapper objectMapper = new ObjectMapper();
        try {
            return objectMapper.writeValueAsString(bookDao.getBookBySellerName(sellerName));
        } catch (JsonGenerationException e) {
            e.printStackTrace();
        } catch (JsonMappingException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "error";
    }

    public BookDao getBookDao() {
        return bookDao;
    }

    public void setBookDao(BookDao bookDao) {
        this.bookDao = bookDao;
    }
}
