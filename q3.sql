DELIMITER $$
CREATE PROCEDURE AddSubscriberIfNotExists(IN subName VARCHAR(100))
BEGIN
    DECLARE cnt INT;
	declare total_count int;
    SELECT COUNT(*) INTO cnt
    FROM Subscribers
    WHERE SubscriberName = subName;
    SELECT COUNT(*) INTO total_count
    FROM Subscribers;
    IF cnt = 0 THEN
        INSERT INTO Subscribers(SubscriberID,SubscriberName, SubscriptionDate)
        VALUES (total_count+1,subName, CURDATE());
    ELSE
        SELECT CONCAT('Subscriber "', subName, '" already exists') AS Message;
    END IF;
END $$
DELIMITER ;

-- call AddSubscriberIfNotExists("Shri Krishna");