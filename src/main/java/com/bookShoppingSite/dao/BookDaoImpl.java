package com.bookShoppingSite.dao;

import com.bookShoppingSite.controller.BooksController;
import com.bookShoppingSite.dto.BookDto;
import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class BookDaoImpl implements BookDao {

    private JdbcTemplate jdbcTemplate;

    private static Logger logger = LogManager.getLogger(BookDaoImpl.class);

    @Override
    public int saveBook(BookDto bookDto) {
        BasicConfigurator.configure();
        String sql = "INSERT INTO book(bookId,bookName,author,description,bookPrice,publishYear,sellerName,publication) " +
                "VALUES ('" + bookDto.getBookId() + "','" + bookDto.getBookName() + "','" + bookDto.getAuthor() + "','" + bookDto.getDescription() + "','" + bookDto.getBookPrice() + "','" + bookDto.getPublishYear() + "','" + bookDto.getSellerName() + "','" + bookDto.getPublication() + "')";
        try {
            return jdbcTemplate.update(sql);
        } catch (DataAccessException e) {
            logger.error("Inside saveBook method at BookDaoImpl class" + e);
        }
        return 0;
    }

    @Override
    public int updateBook(BookDto bookDto) {
        String sql = "UPDATE book SET bookName='" + bookDto.getBookName() + "', author='" + bookDto.getAuthor()
                + "', description='" + bookDto.getDescription() + "',bookPrice='" + bookDto.getBookPrice() + "',publishYear='"
                + bookDto.getPublishYear() + "',sellerName='" + bookDto.getSellerName() + "',publication='" + bookDto.getPublication() + "' where bookId='"
                + bookDto.getBookId() + "'";
        try {
            return jdbcTemplate.update(sql);
        } catch (DataAccessException e) {
            logger.error("Inside updateBook method at BookDaoImpl class" + e);
        }
        return 0;
    }

    @Override
    public BookDto getBook(String bookId) {
        String sql = "select * from book where bookId=?";
        try {
            return jdbcTemplate.queryForObject(sql, new Object[]{bookId}, new BeanPropertyRowMapper<BookDto>(BookDto.class));
        } catch (DataAccessException e) {
            logger.error("Inside getBook method at BookDaoImpl class" + e);
        }
        return null;
    }

    @Override
    public int deleteBook(String bookId) {
        String sql = "delete from book where bookId=?";
        try {
            return jdbcTemplate.update(sql, bookId);
        } catch (DataAccessException e) {
            logger.error("Inside deleteBook method at BookDaoImpl class" + e);
        }
        return 0;
    }

    @Override
    public List<BookDto> allBooksData() {
        return jdbcTemplate.query("select * from book", new RowMapper<BookDto>() {
            public BookDto mapRow(ResultSet rs, int row) throws SQLException {
                BookDto bookDto = new BookDto();
                bookDto.setBookId(rs.getString(1));
                bookDto.setBookName(rs.getString(2));
                bookDto.setAuthor(rs.getString(3));
                bookDto.setDescription(rs.getString(4));
                bookDto.setBookPrice(rs.getString(5));
                bookDto.setPublishYear(rs.getString(6));
                bookDto.setSellerName(rs.getString(7));
                bookDto.setPublication(rs.getString(8));
                return bookDto;
            }
        });
    }

    @Override
    public List<BookDto> getBookBySellerName(String sellerName) {
        return jdbcTemplate.query("select * from book where sellerName='" + sellerName + "'", new RowMapper<BookDto>() {
            public BookDto mapRow(ResultSet rs, int row) throws SQLException {
                BookDto bookDto = new BookDto();
                bookDto.setBookId(rs.getString(1));
                bookDto.setBookName(rs.getString(2));
                bookDto.setAuthor(rs.getString(3));
                bookDto.setDescription(rs.getString(4));
                bookDto.setBookPrice(rs.getString(5));
                bookDto.setPublishYear(rs.getString(6));
                bookDto.setSellerName(rs.getString(7));
                bookDto.setPublication(rs.getString(8));
                return bookDto;
            }
        });
    }


    public JdbcTemplate getJdbcTemplate() {
        return jdbcTemplate;
    }

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }
}
