/**
* @File Name : ProjectController.cls
* @Description :
* @Author :
* @Last Modified By :
* @Last Modified On : September 15, 2025
* @Modification Log :
*==============================================================================
* Ver | Date | Author | Modification
*==============================================================================
* 1.0 | September 15, 2025 |   | Initial Version
**/

public without sharing class ProjectController {
    @AuraEnabled
    public static List<Project__c> getProjects() {
        return [SELECT Id, Name, Project_Name__c FROM Project__c LIMIT 10];
    }
}