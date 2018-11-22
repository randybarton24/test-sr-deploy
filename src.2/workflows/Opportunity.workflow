<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Discount_Approval_Required</fullName>
        <description>Discount Approval Required</description>
        <protected>false</protected>
        <recipients>
            <recipient>randy@solutionreach.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Discount_Approval_Request</template>
    </alerts>
    <alerts>
        <fullName>Opportunity_Approval_Complete</fullName>
        <description>Opportunity Approval Complete</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>srreplies@solutionreach.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>unfiled$public/Approval_Complete</template>
    </alerts>
    <alerts>
        <fullName>RecurSoft__Renewal_Opportunity_Notification</fullName>
        <ccEmails>mihaela.teslariu@osf-global.com</ccEmails>
        <ccEmails>dana.balta@osf-global.com</ccEmails>
        <description>Renewal Opportunity Notification</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>RecurSoft__RecurSoft_templates/RecurSoft__Renewal_Opportunity_notification</template>
    </alerts>
    <fieldUpdates>
        <fullName>Account_Type</fullName>
        <description>Updates the Account Type to Customer</description>
        <field>Type</field>
        <literalValue>Customer</literalValue>
        <name>Account Type</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>AccountId</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Approval_Comment_Requested</fullName>
        <field>Approval_Comment_Check__c</field>
        <literalValue>Requested</literalValue>
        <name>Approval Comment Requested</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Approval_Comment_Required</fullName>
        <field>Approval_Comment_Check__c</field>
        <literalValue>Required</literalValue>
        <name>Approval Comment Required</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ContractEndDate_FieldUpdate</fullName>
        <description>Erases Contract End Date to allow RecurSoft re-calculation.</description>
        <field>RecurSoft__Contract_Term_End_Date__c</field>
        <name>ContractEndDate_FieldUpdate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ContractStartDate_FieldUpdate</fullName>
        <description>Updates the Contract Term Start Date based on a change to Contract Signed Date or Close Date</description>
        <field>RecurSoft__Contract_Term_Start_Date__c</field>
        <formula>IF(NOT(ISNULL(RecurSoft__Contract_Signed_Date__c)) , 
 RecurSoft__Contract_Signed_Date__c + Pricebook2.Contract_Start_Date_Offset__c ,
 CloseDate + Pricebook2.Contract_Start_Date_Offset__c )</formula>
        <name>ContractStartDate_FieldUpdate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Deal_Desk_Approved_Date</fullName>
        <field>Deal_Desk_Approval_Date__c</field>
        <formula>now()</formula>
        <name>Deal Desk Approved Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Processed_date</fullName>
        <field>Processed_Date__c</field>
        <formula>Today()</formula>
        <name>Processed date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>RecurSoft_Account_Status</fullName>
        <description>Updates RecureSoft Account Status to &quot;Active&quot;</description>
        <field>RecurSoft__Status__c</field>
        <literalValue>Active</literalValue>
        <name>RecurSoft Account Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>AccountId</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>RecurSoft__RecurSoft_Update_Close_Date</fullName>
        <field>CloseDate</field>
        <formula>TODAY()</formula>
        <name>Update Close Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>RecurSoft__RecurSoft_Update_Renewal_Date</fullName>
        <field>RecurSoft__Anniversary_Date__c</field>
        <formula>RecurSoft__Contract_Term_End_Date__c + 1</formula>
        <name>Update Renewal Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>AccountId</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Reset_Apex_Override_Validation</fullName>
        <description>Reset Apex Override Validation checkbox to false.</description>
        <field>Apex_Override_Validation__c</field>
        <literalValue>0</literalValue>
        <name>Reset Apex Override Validation</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SR_Date_Created_Opp_Update</fullName>
        <description>Sets the SR_Date_Created field on Opportunities to the CreatedDate</description>
        <field>SR_Date_Created__c</field>
        <formula>CreatedDate</formula>
        <name>SR Date Created Opp Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Product_Approvals</fullName>
        <field>Set_Product_Approvals__c</field>
        <literalValue>1</literalValue>
        <name>Set Product Approvals</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Activation_Date</fullName>
        <description>Updates the Most Recent Activation Date</description>
        <field>Most_Recent_Activation_Date__c</field>
        <formula>Account.Admin_FMS__c</formula>
        <name>Update Activation Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Active_Date</fullName>
        <description>Updates the Most Recent Contract Date with the Accounts Active Date</description>
        <field>RecurSoft__Customer_Active_Date__c</field>
        <formula>Account.RecurSoft__Customer_Active_Date__c</formula>
        <name>Update Active Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>AccountId</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Admin_Status</fullName>
        <field>Admin_Status__c</field>
        <literalValue>No</literalValue>
        <name>Update Admin Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>AccountId</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Close_Date_if_LOST</fullName>
        <description>If Stage = Closed Lost =&gt; Close Date = TODAY()</description>
        <field>CloseDate</field>
        <formula>NOW()</formula>
        <name>Update Close Date if LOST</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Contract_Term</fullName>
        <field>RecurSoft__Initial_Contract_Term__c</field>
        <formula>24</formula>
        <name>Update Contract Term</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_MRFMS</fullName>
        <field>MRFMS__c</field>
        <name>Update MRFMS</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
        <targetObject>AccountId</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Most_Recent_K_date</fullName>
        <field>Probable_Most_Recent_K_Date__c</field>
        <formula>RecurSoft__Contract_Signed_Date__c</formula>
        <name>Update Most Recent K date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>AccountId</targetObject>
    </fieldUpdates>
    <flowActions>
        <fullName>Accounting_Review_Case_Creation</fullName>
        <flow>Accounting_Review_Case_Creation_Flow</flow>
        <flowInputs>
            <name>varAccountID</name>
            <value>{!AccountId}</value>
        </flowInputs>
        <flowInputs>
            <name>varOptyID</name>
            <value>{!Id}</value>
        </flowInputs>
        <flowInputs>
            <name>varSubjectToReview</name>
            <value>{!Name}</value>
        </flowInputs>
        <flowInputs>
            <name>varUserID</name>
            <value>{!OwnerId}</value>
        </flowInputs>
        <label>Accounting Review Case Creation</label>
        <language>en_US</language>
        <protected>false</protected>
    </flowActions>
    <flowActions>
        <fullName>Cancel_Billing_Subscription_Trigger</fullName>
        <flow>Cancel_Billing_Subcription_Case_Creation</flow>
        <flowInputs>
            <name>varAccountID</name>
            <value>{!AccountId}</value>
        </flowInputs>
        <flowInputs>
            <name>varDescription</name>
            <value>{!Notes_for_Accounting__c}</value>
        </flowInputs>
        <flowInputs>
            <name>varOptyID</name>
            <value>{!Id}</value>
        </flowInputs>
        <label>Cancel Billing Subscription Trigger</label>
        <language>en_US</language>
        <protected>false</protected>
    </flowActions>
    <flowActions>
        <fullName>Retention_to_Accounting</fullName>
        <description>Runs the Flow that updates the Processed date to Now() and creates the necessary Accounting Case/Opportunity.</description>
        <flow>Closed_Retention_Oppportunity_Flow</flow>
        <flowInputs>
            <name>varAccountID</name>
            <value>{!AccountId}</value>
        </flowInputs>
        <flowInputs>
            <name>varCancelRequestType</name>
            <value>{!Cancel_Request_Type__c}</value>
        </flowInputs>
        <flowInputs>
            <name>varNotestoAccounting</name>
            <value>{!Notes_for_Accounting__c}</value>
        </flowInputs>
        <flowInputs>
            <name>varOpptyID</name>
            <value>{!Id}</value>
        </flowInputs>
        <flowInputs>
            <name>varStage</name>
            <value>{!StageName}</value>
        </flowInputs>
        <label>Retention to Accounting</label>
        <language>en_US</language>
        <protected>false</protected>
    </flowActions>
    <rules>
        <fullName>Accounting Review Case Creation</fullName>
        <actions>
            <name>Accounting_Review_Case_Creation</name>
            <type>FlowAction</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>Add-On Business</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.IsLegacy__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>Creates a Review Case for the Designated Approver - Matt Schetselaar</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Approval Comment Flag</fullName>
        <actions>
            <name>Approval_Comment_Requested</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Approval_Comment_Check__c</field>
            <operation>equals</operation>
            <value>Required</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Close Date - Closed Lost</fullName>
        <actions>
            <name>Update_Close_Date_if_LOST</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Lost</value>
        </criteriaItems>
        <description>Stage = Closed Lost, NOW()</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContractStartDate_WFR_Test</fullName>
        <actions>
            <name>ContractEndDate_FieldUpdate</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>ContractStartDate_FieldUpdate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>Updates the Contract Start Date on Close Date or Contract Signed Date change.</description>
        <formula>RecordType.DeveloperName != &quot;Renewal&quot; &amp;&amp;   RecordType.DeveloperName != &quot;Add_On_Business&quot; &amp;&amp;   RecordType.DeveloperName != &quot;Healthgrades&quot; &amp;&amp;   (ISNEW() ||   ISCHANGED(Pricebook2Id) || (ISCHANGED(RecurSoft__Contract_Signed_Date__c) &amp;&amp;      NOT(ISNULL(RecurSoft__Contract_Signed_Date__c))) ||   (ISCHANGED(CloseDate) &amp;&amp;                 ISNULL(RecurSoft__Contract_Signed_Date__c)))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Create Cancel Billing Subscription Case</fullName>
        <actions>
            <name>Cancel_Billing_Subscription_Trigger</name>
            <type>FlowAction</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Create_Cancel_Billing_Subscription_Case__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Creates a Cancel Billing Subscription Accounting Case for Trial Cancels - Matt Schetselaar</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Default Initial Contract Term</fullName>
        <actions>
            <name>Update_Contract_Term</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>RecurSoft__Initial_Contract_Term__c to 24</description>
        <formula>true</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>RecurSoft__Renewal Opportunity notification</fullName>
        <actions>
            <name>RecurSoft__Renewal_Opportunity_Notification</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Sends out an email notification when a Renewal Opportunity is created, and is not Closed Won yet.</description>
        <formula>AND    (      RecordType.Name = &quot;Renewal&quot;,      NOT ISPICKVAL(StageName, &quot;Closed Won&quot;),      ISPICKVAL (RecurSoft__Renewal_Rule__r.RecurSoft__End_of_Term_Action__c, &quot;Manual&quot; )    )</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>RecurSoft__UpdateCloseDate</fullName>
        <actions>
            <name>RecurSoft__RecurSoft_Update_Close_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Lost</value>
        </criteriaItems>
        <description>Update CloseDate field when Stage becomes Closed Lost.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>RecurSoft__UpdateRenewalDate</fullName>
        <actions>
            <name>RecurSoft__RecurSoft_Update_Renewal_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.RecurSoft__Anniversary_Date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Reset Apex Override Validation</fullName>
        <actions>
            <name>Reset_Apex_Override_Validation</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Apex_Override_Validation__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Resets the Apex Override Validation checkbox to false anytime it is true.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Retention Closed create Accounting</fullName>
        <actions>
            <name>Processed_date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Close_Date_if_LOST</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Cancelled,Save,No Sale,Resume - No Change,Closed</value>
        </criteriaItems>
        <description>When a Retention Opportunity closes an accounting action is automatically created and the Closed Date is updated to Now() - Matt Schetselaar</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>SR Date Created Opp Update</fullName>
        <actions>
            <name>SR_Date_Created_Opp_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.SR_Date_Created__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Sets the SR_Date_Created field to the value of the CreatedDate field on Creation, if there is no value.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update Account Status fields</fullName>
        <actions>
            <name>Account_Type</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>RecurSoft_Account_Status</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Admin_Status</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_MRFMS</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Most_Recent_K_date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>New Practice Business,Enterprise New Business</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.RecordTypeId</field>
            <operation>equals</operation>
            <value>Child Account,Major Account,Child Major Account,Child Multi-Location Account,Account,Multi-Location Account</value>
        </criteriaItems>
        <description>This will update the Type to &quot;Customer&quot; and the RecurSoft Account Status to &quot;Active&quot; - Matt Schetselaar</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Contract and Active Date</fullName>
        <actions>
            <name>Update_Activation_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Active_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>Enterprise Retention,Retention</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Most_Recent_Contract_Date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Most_Recent_Activation_Date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>This updates the Save Opportunity to pull from the accounts &quot;Active Date&quot; and &quot;Admin FMS&quot; Date - Matt Schetselaar</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
