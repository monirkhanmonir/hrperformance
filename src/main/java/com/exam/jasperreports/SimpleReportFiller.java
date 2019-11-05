package com.exam.jasperreports;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletContext;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.util.JRSaver;

@Component
public class SimpleReportFiller {

    private String reportFileName;

    private JasperReport jasperReport;

    private JasperPrint jasperPrint;

    @Autowired
    private DataSource dataSource;
    
    @Autowired
    private ServletContext servletContext;

    private Map<String, Object> parameters;

    public SimpleReportFiller() {
        parameters = new HashMap<>();
    }

    public void prepareReport() {
        compileReport();
        fillReport();
    }

    public void compileReport() {
        try {
        	//System.err.println(servletContext.getRealPath("/reports/"));
            InputStream reportStream = getClass().getResourceAsStream("/reports/".concat(reportFileName));
            jasperReport = JasperCompileManager.compileReport(reportStream);
            JRSaver.saveObject(jasperReport, "src/main/resources/reports/"+reportFileName.replace(".jrxml", ".jasper"));
        } catch (JRException ex) {
            Logger.getLogger(SimpleReportFiller.class.getName()).log(Level.SEVERE, null, ex);
        } 
    }

    public void fillReport() {
        try {
            jasperPrint = JasperFillManager.fillReport(jasperReport, parameters, dataSource.getConnection());
        } catch (JRException | SQLException ex) {
            Logger.getLogger(SimpleReportFiller.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public DataSource getDataSource() {
        return dataSource;
    }

    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public Map<String, Object> getParameters() {
        return parameters;
    }

    public void setParameters(Map<String, Object> parameters) {
        this.parameters = parameters;
    }

    public String getReportFileName() {
        return reportFileName;
    }

    public void setReportFileName(String reportFileName) {
        this.reportFileName = reportFileName;
    }

    public JasperPrint getJasperPrint() {
        return jasperPrint;
    }

}