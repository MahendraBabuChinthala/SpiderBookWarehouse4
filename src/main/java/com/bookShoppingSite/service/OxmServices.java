package com.bookShoppingSite.service;

//converting Object to Xml & Xml to Object
public interface OxmServices {
    /**
     * Convert Object Information To XML Format
     *
     * @param object
     * @return
     */
    public String convertObjectTOXml(Object object);

    /**
     * Convert XML Information To Object Format
     *
     * @param xml
     * @return
     */
    public Object convertXmlToObject(String xml);
}
