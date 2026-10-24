-- Recent posts from accounts followed by a user (replace 1 with the chosen user_id)
SELECT u.username, p.post_id, p.content, p.created_at
FROM follows f
JOIN users u ON u.user_id = f.followed_id
JOIN posts p ON p.user_id = u.user_id
WHERE f.follower_id = 1
ORDER BY p.created_at DESC;

-- Like and comment counts per post
SELECT p.post_id, u.username, p.content,
       COUNT(DISTINCT l.user_id) AS like_count,
       COUNT(DISTINCT c.comment_id) AS comment_count
FROM posts p
JOIN users u ON u.user_id = p.user_id
LEFT JOIN likes l ON l.post_id = p.post_id
LEFT JOIN comments c ON c.post_id = p.post_id
GROUP BY p.post_id, u.username, p.content
ORDER BY p.created_at DESC;

-- Followers for a user
SELECT follower.username
FROM follows f
JOIN users follower ON follower.user_id = f.follower_id
WHERE f.followed_id = 1;
