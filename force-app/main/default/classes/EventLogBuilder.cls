public with sharing class EventLogBuilder {
    private EventLog__c eventLog;

    public EventLogBuilder() {
        this.eventLog = new EventLog__c();
    }

    public void setType(String type){
        eventLog.Type__c = type;
    }

    public void setComponent(String component){
        eventLog.Component__c = component;
    }

    public void setSubComponent(String subComponent){
        eventLog.SubComponent__c = subComponent;
    }

    public void setMessage(String message){
        eventLog.Message__c = message;
    }

    public void setUserEmail() {
        eventLog.UserEmail__c = UserInfo.getUserEmail();
    }

    public void setUserId() {
        eventLog.UserId__c = UserInfo.getUserId();
    }

    public void setTimestamp() {
        eventLog.Timestamp__c = System.now();
    }

    public EventLog__c getEventlog(){
        return eventLog;
    }
}