# Event Logger Project

**Summary**

A basic open-source project that provides an event logging framework to your salesforce org.

It is of great use if you want to monitor and keep track of events in your apex code flow as well as improving your debuging when transaction exceptions occur.

To access the EventLog builder class -> [Click here](https://github.com/vetealaurent/event-logger/tree/main/force-app/main/default/classes)

**To create and insert an EventLog you can use the following syntaxes :**

By assigning an EventLog to a variable first
```
EventLog evLog = new EventLog();

evLog.setType(EventLog.Type.INFO)
     .setComponent('MyApexClass')
     .setSubComponent('MyApexMethod')
     .setMessage('My custom message')
     .setUserEmail()
     .setUserId()
     .setTimestamp()
     .log();
```
Or by instantianting the EventLog without an explicit variable name
```
new EventLog().setType(EventLog.Type.INFO)
              .setComponent('MyApexClass')
              .setSubComponent('MyApexMethod')
              .setMessage('My custom message')
              .setUserEmail()
              .setUserId()
              .setTimestamp()
              .log();
```
