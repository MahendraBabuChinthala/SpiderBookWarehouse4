package com.bookShoppingSite.dto;

import javax.validation.constraints.NotEmpty;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
public class BookDto {

    @NotEmpty(message = " * BookId Is required")
    @XmlElement
    private String bookId;
    @NotEmpty(message = " * BookName Is Required")
    @XmlElement
    private String bookName;
    @NotEmpty(message = " * Book Author Is Required")
    @XmlElement
    private String author;
    @NotEmpty(message = " * Book description Is Required")
    @XmlElement
    private String description;
    @NotEmpty(message = " * Book bookPrice Is Required")
    @XmlElement
    private String bookPrice;
    @NotEmpty(message = " * Book publishYear Is Required")
    @XmlElement
    private String publishYear;
    @NotEmpty(message = " * Book sellerName Is Required")
    @XmlElement
    private String sellerName;
    @NotEmpty(message = " * Book publication Is Required")
    @XmlElement
    private String publication;

    public String getBookId() {
        return bookId;
    }

    public void setBookId(String bookId) {
        this.bookId = bookId;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getBookPrice() {
        return bookPrice;
    }

    public void setBookPrice(String bookPrice) {
        this.bookPrice = bookPrice;
    }

    public String getPublishYear() {
        return publishYear;
    }

    public void setPublishYear(String publishYear) {
        this.publishYear = publishYear;
    }

    public String getSellerName() {
        return sellerName;
    }

    public void setSellerName(String sellerName) {
        this.sellerName = sellerName;
    }

    public String getPublication() {
        return publication;
    }

    public void setPublication(String publication) {
        this.publication = publication;
    }

    @Override
    public String toString() {
        return "BookDto{" +
                "bookId='" + bookId + '\'' +
                ", bookName='" + bookName + '\'' +
                ", author='" + author + '\'' +
                ", description='" + description + '\'' +
                ", bookPrice='" + bookPrice + '\'' +
                ", publishYear='" + publishYear + '\'' +
                ", sellerName='" + sellerName + '\'' +
                ", publication='" + publication + '\'' +
                '}';
    }
}
