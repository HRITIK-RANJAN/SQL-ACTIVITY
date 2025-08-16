DELIMITER $$

CREATE PROCEDURE PrintAllWatchHistories()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE sid INT;
    DECLARE sname VARCHAR(100);

    DECLARE cur CURSOR FOR 
        SELECT SubscriberID, SubscriberName FROM Subscribers;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO sid, sname;
        IF done THEN
            LEAVE read_loop;
        END IF;
        CALL GetWatchHistoryBySubscriber(sid);
    END LOOP;

    CLOSE cur;
END $$

DELIMITER ;

-- call PrintAllWatchHistories();