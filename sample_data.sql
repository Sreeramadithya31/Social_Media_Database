PRAGMA foreign_keys = ON;
INSERT OR IGNORE INTO users(user_id, username, email, display_name, bio) VALUES
(1, 'aditya_demo', 'aditya@example.test', 'Aditya Demo', 'Learning database design'),
(2, 'creator_demo', 'creator@example.test', 'Creator Demo', 'Sharing updates'),
(3, 'student_demo', 'student@example.test', 'Student Demo', 'Computer science student');

INSERT OR IGNORE INTO posts(post_id, user_id, content) VALUES
(1, 1, 'My first demo post'),
(2, 2, 'Learning SQL relationships'),
(3, 3, 'Building a social media database project');

INSERT OR IGNORE INTO follows(follower_id, followed_id) VALUES (1,2), (1,3), (2,1);
INSERT OR IGNORE INTO likes(user_id, post_id) VALUES (1,2), (2,1), (3,1);
INSERT OR IGNORE INTO comments(comment_id, user_id, post_id, comment_text) VALUES
(1, 2, 1, 'Nice work!'),
(2, 3, 2, 'Useful example.');
