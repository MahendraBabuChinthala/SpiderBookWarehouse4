package com.bookShoppingSite.dto;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import java.util.List;

@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
public class BookDtoList {

    @XmlElement
    private List<BookDto> bookDtoList;

    public List<BookDto> getBookDtoList() {
        return bookDtoList;
    }

    public void setBookDtoList(List<BookDto> bookDtoList) {
        this.bookDtoList = bookDtoList;
    }

    @Override
    public String toString() {
        return "BookDtoList{" +
                "bookDtoList=" + bookDtoList +
                '}';
    }
}
