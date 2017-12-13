<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <outboundMessages>
        <fullName>Test_Msg</fullName>
        <apiVersion>36.0</apiVersion>
        <endpointUrl>http://www.hjhkhkljll.com</endpointUrl>
        <fields>AccountNumber</fields>
        <fields>AccountSource</fields>
        <fields>Id</fields>
        <includeSessionId>true</includeSessionId>
        <integrationUser>samshah66@hotmail.co.uk</integrationUser>
        <name>Test Msg</name>
        <protected>true</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>ccc</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Account.BillingCountry</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <timeLength>30</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>ttttttt</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Account.Name</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
