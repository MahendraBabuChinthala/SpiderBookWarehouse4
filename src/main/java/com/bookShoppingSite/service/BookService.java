package com.bookShoppingSite.service;

import com.bookShoppingSite.dto.BookDto;
import org.springframework.dao.EmptyResultDataAccessException;

import java.awt.print.Book;
import java.util.List;

public interface BookService {
    /**
     * Save The Book Details In DataBase
     *
     * @param bookDto
     * @return
     */
    public int saveBook(BookDto bookDto);

    /**
     * Update The Book Details In DataBase
     *
     * @param bookDto
     * @return
     */
    public int updateBook(BookDto bookDto);

    /**
     * Get Single Book Details In DataBase By BookId
     *
     * @param bookId
     * @return
     */
    public BookDto getBook(String bookId);

    /**
     * Delete Book Details From DataBase By BookId
     *
     * @param bookId
     * @return
     */
    public int deleteBook(String bookId);

    /**
     * GEt List Of All Book Data From DataBase
     *
     * @return
     */
    public List<BookDto> allBooksData() throws EmptyResultDataAccessException;

    /**
     * Convert Object Information To XML Format
     *
     * @return
     */
    public String convertObjectTOXml();

    /**
     * Convert XML Information To Object Format
     *
     * @param xml
     * @return
     */
    public Object convertXmlToObject(String xml);

    /**
     * GEt List Of All SellerNames From DataBase
     *
     * @param sellerName
     * @return
     */
    public List<BookDto> getBookBySellerName(String sellerName) throws EmptyResultDataAccessException;
}
