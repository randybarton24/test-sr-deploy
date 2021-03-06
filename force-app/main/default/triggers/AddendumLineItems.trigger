/**
 * See https://github.com/financialforcedev/fflib-apex-common for more info
 *
 * Install library via 
 *   https://githubsfdeploy.herokuapp.com/app/githubdeploy/financialforcedev/fflib-apex-common
 */

/**
 * Boiler plate Apex Trigger to route events to the respective Domain class methods
 * 
 * For more guidelines and details see 
 *   https://developer.salesforce.com/page/Apex_Enterprise_Patterns_-_Domain_Layer 
 **/
trigger AddendumLineItems on Addendum_Line_Item__c (after delete, after insert, after update, 
  before delete, before insert, before update) 
{
   // Creates Domain class instance and calls appropriate methods
   fflib_SObjectDomain.triggerHandler(AddendumLineItems.class);
}