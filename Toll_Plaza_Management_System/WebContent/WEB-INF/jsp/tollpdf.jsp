<%@page import="java.util.List"%>
<%@page import="com.model.*"%>
<%@page import="com.itextpdf.text.pdf.*"%>
<%@page import="java.io.*"%>
<%@page import="java.util.Random"%>
<%@page import="com.itextpdf.text.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

List<Toll> list = (List<Toll>) session.getAttribute("list");

Document my_pdf_report = new Document();
Random r=new Random();
response.setContentType("application/pdf");
PdfWriter.getInstance(my_pdf_report, response.getOutputStream());
System.out.println(r.nextLong());
my_pdf_report.open(); 

Paragraph preface = new Paragraph();
// We add one empty line
		for (int i = 0; i < 2; i++) {
			preface.add(new Paragraph(" "));
        }
// Lets write a big header
preface.add(new Paragraph("...Department Table..."));
for (int i = 0; i < 2; i++) {
	preface.add(new Paragraph(" "));
}
my_pdf_report.add(preface);


//addTitlePage(my_pdf_report);
//addContent(my_pdf_report);
//we have four columns in our table
PdfPTable my_report_table = new PdfPTable(5);
//create a cell object
//		PdfPCell table_cell;


my_report_table.addCell("Toll Id");
my_report_table.addCell("Toll Name");
my_report_table.addCell("Toll Address");
my_report_table.addCell("Toll Owner");
my_report_table.addCell("Toll Start Date");


  for(int i=0; i<list.size();i++) {
	  Toll toll = list.get(i);
		PdfPCell table_cell = new PdfPCell();
		table_cell = new PdfPCell(new Phrase(toll.getTollid()+""));
		my_report_table.addCell(table_cell);
	
		table_cell = new PdfPCell(new Phrase(toll.getTollname()));
		my_report_table.addCell(table_cell);
	
		table_cell=new PdfPCell(new Phrase(toll.getTolladdress()));
		my_report_table.addCell(table_cell);
	
		table_cell=new PdfPCell(new Phrase(toll.getTollowner()));
		my_report_table.addCell(table_cell);
	
		table_cell=new PdfPCell(new Phrase(toll.getTollstartdate()));
		my_report_table.addCell(table_cell);
	}



/* Attach report table to PDF */
my_pdf_report.add(my_report_table);     
System.out.println("PDF is Created...");
my_pdf_report.close();

out.clear();
out=pageContext.pushBody();

%>



</body>
</html>