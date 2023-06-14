CREATE USER 'desis_user'@'localhost' IDENTIFIED BY 'desis_vote.2023,';
GRANT Delete ON desis_vote.* TO 'desis_user'@'localhost';
GRANT Insert ON desis_vote.* TO 'desis_user'@'localhost';
GRANT Select ON desis_vote.* TO 'desis_user'@'localhost';
GRANT Show view ON desis_vote.* TO 'desis_user'@'localhost';
GRANT Update ON desis_vote.* TO 'desis_user'@'localhost';
GRANT Create temporary tables ON desis_vote.* TO 'desis_user'@'localhost';
GRANT Execute ON desis_vote.* TO 'desis_user'@'localhost';
