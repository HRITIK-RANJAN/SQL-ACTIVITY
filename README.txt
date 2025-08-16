Course: CS6.302 – Software System Development
Activity: Lab 2 (Stored Procedures & Cursors)

github link --> https://github.com/HRITIK-RANJAN/SQL-ACTIVITY

Q1 – ListAllSubscribers()
Uses a cursor to iterate through all subscribers and prints their names one by one.
run --> call ListAllSubscribers();

Q2 – GetWatchHistoryBySubscriber(sub_id)
Takes a subscriber ID as input and shows all the shows they watched with watch time.
run --> CALL GetWatchHistoryBySubscriber(1);

Q3 – AddSubscriberIfNotExists(subName)
Checks if a subscriber with the given name already exists.
If not → inserts new subscriber with current date.
If yes → prints a message.
run --> call AddSubscriberIfNotExists("Shri Krishna");

Q4 – SendWatchTimeReport()
Loops through all subscribers.
If they have any watch history → calls Q2 to show their report.
run --> call SendWatchTimeReport();

Q5 – PrintAllWatchHistories()
Uses a cursor to go through each subscriber.
Prints their name and ID.
Calls Q2 to display their complete watch history.
run --> call PrintAllWatchHistories();