package com.bookShoppingSite.service;

import org.springframework.oxm.Marshaller;
import org.springframework.oxm.Unmarshaller;

import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;

public class OxmServicesImpl implements OxmServices {

    /**
     * This is OxmService class that uses the Marshaller and Unmarshaller interface , using this we can perform task
     * like conversion of java Object to xml and Xml to java object .
     */
    private Marshaller marshaller;

    private Unmarshaller unmarshaller;

    @Override
    public String convertObjectTOXml(Object object) {
        StringWriter stringWriter = new StringWriter();
        try {
            marshaller.marshal(object, new StreamResult(stringWriter));
            return stringWriter.toString();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Object convertXmlToObject(String xml) {
        StringReader stringReader = new StringReader(xml);
        StreamSource streamSource = new StreamSource(stringReader);
        try {
            return unmarshaller.unmarshal(streamSource);

        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    public Marshaller getMarshaller() {
        return marshaller;
    }

    public void setMarshaller(Marshaller marshaller) {
        this.marshaller = marshaller;
    }

    public Unmarshaller getUnmarshaller() {
        return unmarshaller;
    }

    public void setUnmarshaller(Unmarshaller unmarshaller) {
        this.unmarshaller = unmarshaller;
    }
}
