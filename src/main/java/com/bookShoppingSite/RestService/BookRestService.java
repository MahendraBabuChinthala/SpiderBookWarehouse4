package com.bookShoppingSite.RestService;

import com.bookShoppingSite.dto.BookDto;

//rest Service class convert to JSON Information
public interface BookRestService {
    /**
     * Convert All Books Data To JSON
     *
     * @return
     */
    public String convertAllBooksDataToJson();

    /**
     * Convert Single Book Data To JSON
     *
     * @param bookId
     * @return
     */
    public String convertSingleBookDataToJson(String bookId);

    /**
     * Convert Delete Book Data To JSON
     *
     * @param bookId
     * @return
     */
    public String convertDeleteBookToJson(String bookId);

    /**
     * Convert Add Book Data To JSON
     *
     * @param bookDto
     * @return
     */
    public String convertAddBooKToJson(BookDto bookDto);

    /**
     * Convert Update Book Data To JSON
     *
     * @param bookDto
     * @return
     */
    public String convertUpdateBookToJson(BookDto bookDto);

    /**
     * Convert Seller Name Books Data To JSON
     *
     * @param sellerName
     * @return
     */
    public String convertSellerNameBooksDataToJson(String sellerName);
}
