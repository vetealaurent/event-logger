# Event Logger Project

A basic open-source project that provides an event logging framework to your salesforce org

How to log an event in your code flow :

1 ) EventLog evLog = new EventLog();
    evLog.setType(EventLog.Type.INFO)
         .setComponent('MyApexClass')
         .setSubComponent('MyApexMethod')
         .setMessage('My custom message')
         .setUserEmail()
         .setUserId()
         .setTimestamp()
         .log();

2 ) new EventLog().setType(EventLog.Type.INFO)
                  .setComponent('MyApexClass')
                  .setSubComponent('MyApexMethod')
                  .setMessage('My custom message')
                  .setUserEmail()
                  .setUserId()
                  .setTimestamp()
                  .log();
