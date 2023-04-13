public with sharing class EventLog {

    private EventLog__c eventLog;

    public Enum Type {
        INFO,
        WARN,
        ERROR
    }

    public EventLog() {
        this.eventLog = new EventLog__c();
    }

    public EventLog setType(Type type){
        eventLog.Type__c = type.name();
        return this;
    }

    public EventLog setComponent(String component){
        eventLog.Component__c = component;
        return this;
    }

    public EventLog setSubComponent(String subComponent){
        eventLog.SubComponent__c = subComponent;
        return this;
    }

    public EventLog setMessage(String message){
        eventLog.Message__c = message;
        return this;
    }

    public EventLog setUserEmail() {
        eventLog.UserEmail__c = UserInfo.getUserEmail();
        return this;
    }

    public EventLog setUserId() {
        eventLog.UserId__c = UserInfo.getUserId();
        return this;
    }

    public EventLog setTimestamp() {
        eventLog.Timestamp__c = System.now();
        return this;
    }

    public void log(){
        Database.insert(eventLog, true, AccessLevel.SYSTEM_MODE);
    }

}