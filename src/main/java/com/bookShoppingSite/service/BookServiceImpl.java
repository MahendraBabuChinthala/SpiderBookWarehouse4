package com.bookShoppingSite.service;

import com.bookShoppingSite.dao.BookDao;
import com.bookShoppingSite.dto.BookDto;
import com.bookShoppingSite.dto.BookDtoList;
import org.springframework.dao.EmptyResultDataAccessException;

import java.util.ArrayList;
import java.util.List;

/**
 * This BookServiceImpl implements the BookService interface ,
 * that has  many methods for CRUD operation.
 */

public class BookServiceImpl implements BookService {

    private OxmServicesImpl oxmServices;

    private BookDao bookDao;

    @Override
    public int saveBook(BookDto bookDto) {
        return bookDao.saveBook(bookDto);
    }

    @Override
    public int updateBook(BookDto bookDto) {
        return bookDao.updateBook(bookDto);
    }

    @Override
    public BookDto getBook(String bookId) {
        return bookDao.getBook(bookId);
    }

    @Override
    public int deleteBook(String bookId) {
        return bookDao.deleteBook(bookId);
    }

    @Override
    public List<BookDto> allBooksData() throws EmptyResultDataAccessException {
        return bookDao.allBooksData();
    }

    @Override
    public String convertObjectTOXml() {
        BookDtoList bookDtoList = new BookDtoList();
        bookDtoList.setBookDtoList(new ArrayList<>(bookDao.allBooksData()));
        return oxmServices.convertObjectTOXml(bookDtoList);
    }

    @Override
    public Object convertXmlToObject(String xml) {
        return oxmServices.convertXmlToObject(xml);
    }

    @Override
    public List<BookDto> getBookBySellerName(String sellerName) throws EmptyResultDataAccessException {
        return bookDao.getBookBySellerName(sellerName);
    }

    public OxmServicesImpl getOxmServices() {
        return oxmServices;
    }

    public void setOxmServices(OxmServicesImpl oxmServices) {
        this.oxmServices = oxmServices;
    }

    public BookDao getBookDao() {
        return bookDao;
    }

    public void setBookDao(BookDao bookDao) {
        this.bookDao = bookDao;
    }
}
