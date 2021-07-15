package com.bookShoppingSite.dao;

import com.bookShoppingSite.dto.BookDto;

import java.util.List;

public interface BookDao {
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
     * get The All Books Data From DataBase
     *
     * @return
     */
    public List<BookDto> allBooksData();

    /**
     * GEt List Of All Book Data From DataBase
     *
     * @param sellerName
     * @return
     */
    public List<BookDto> getBookBySellerName(String sellerName);
}
