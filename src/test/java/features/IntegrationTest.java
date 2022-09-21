package features;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import org.apache.commons.io.FileUtils;
import org.junit.Assert;
import org.junit.Test;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class IntegrationTest {

    @Test
    public void testParallel(){
        Results result = Runner.parallel(getClass(),4); //Karate = Results,Runner
        generateReport(result.getReportDir());
        //the generateReport step above won't work, because I don't have any json files
        //I confirmed this by commenting out above method and below method and program still
        //generates the cucumber and surefile report (Karate)
        Assert.assertTrue(result.getErrorMessages(),result.getFailCount() == 0);
        //Above means that there should be no errors inside of the test
        //Above does two checks. First that the failed count is 0, then that getErrorMessages
        //is also equal to 0. So no failed count and no error messages
    }

    public static void generateReport(String salida){
        Collection<File> jsonFiles = FileUtils.listFiles(new File(salida),new String[]{"json"},true);
        List<String> jsonPath = new ArrayList<>(jsonFiles.size());
        jsonFiles.forEach(file -> jsonPath.add(file.getAbsolutePath()));
        Configuration config = new Configuration(new File("target"),"pruebas integracion");
        ReportBuilder reportBuilder = new ReportBuilder(jsonPath,config);
        reportBuilder.generateReports();
    }
}
