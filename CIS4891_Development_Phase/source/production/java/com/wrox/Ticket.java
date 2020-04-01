package com.wrox;

import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

public class Ticket
{
    private String customerName;

    private String subject;

    private String body;
    
    //New variables/////////////////////////////////
    private String price;
    
    private String quantity;
    
    private String arrivalDate;
    
    private String departureDate;
    ////////////////////////////////////////////////

    private Map<String, Attachment> attachments = new LinkedHashMap<>();

    ///////////////////////////////////////////////
    //Get and set reservations
    public String getPrice()
    {
    	return price;
    }
    
    public void setPrice(String price)
    {
    	this.price = price;
    }
    //Get and set addresses
    public String getQuantity()
    {
    	return quantity;
    }
    
    public void setQuantity(String quantity)
    {
    	this.quantity = quantity;
    }
    //Get and set arrival date
    public String getArrivalDate()
    {
    	return arrivalDate;
    }
    
    public void setArrivalDate(String arrivalDate)
    {
    	this.arrivalDate = arrivalDate;
    }
    //Get and set departure date
    public String getDepartureDate()
    {
    	return departureDate;
    }
    
    public void setDepartureDate(String departureDate)
    {
    	this.departureDate = departureDate;
    }
    ///////////////////////////////////////////////
    public String getCustomerName()
    {
        return customerName;
    }

    public void setCustomerName(String customerName)
    {
        this.customerName = customerName;
    }

    public String getSubject()
    {
        return subject;
    }

    public void setSubject(String subject)
    {
        this.subject = subject;
    }

    public String getBody()
    {
        return body;
    }

    public void setBody(String body)
    {
        this.body = body;
    }

    public Attachment getAttachment(String name)
    {
        return this.attachments.get(name);
    }

    public Collection<Attachment> getAttachments()
    {
        return this.attachments.values();
    }

    public void addAttachment(Attachment attachment)
    {
        this.attachments.put(attachment.getName(), attachment);
    }

    public int getNumberOfAttachments()
    {
        return this.attachments.size();
    }
}
