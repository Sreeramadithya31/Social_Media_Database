# Designing a Social Media Database 🗄️

A relational database schema for the core entities of a social media platform, based on the supplied DBMS micro-project report. The schema models users, posts, follows, likes, and comments using primary keys, foreign keys, uniqueness constraints, and indexes.

## Features
- User profiles
- Posts associated with users
- Follower/following relationships
- Post likes with duplicate prevention
- Comments associated with posts and users
- Example queries for a user's feed and post engagement

## Run
Use SQLite 3:

```bash
sqlite3 social_media.db < sql/schema.sql
sqlite3 social_media.db < sql/sample_data.sql
sqlite3 social_media.db < sql/queries.sql
```

Or open the `.sql` files in DB Browser for SQLite. The schema uses portable SQL patterns where possible.
