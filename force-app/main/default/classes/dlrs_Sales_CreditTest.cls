/**
 * Auto Generated and Deployed by the Declarative Lookup Rollup Summaries Tool package (dlrs)
 **/
@IsTest
private class dlrs_Sales_CreditTest
{
    @IsTest
    private static void testTrigger()
    {
        // Force the dlrs_Sales_CreditTrigger to be invoked, fails the test if org config or other Apex code prevents this.
        dlrs.RollupService.testHandler(new Sales_Credit__c());
    }
}