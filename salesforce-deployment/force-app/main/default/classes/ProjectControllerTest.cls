@isTest
public class ProjectControllerTest {
    @isTest
    static void testGetProjects() {
        // Create test record
        Project__c proj = new Project__c(Project_Name__c = 'Test Project');
        insert proj;

        // Call the method
        List<Project__c> results = ProjectController.getProjects();

        System.assertNotEquals(0, results.size(), 'Should return at least one project');
    }
}