Lab 7 – Real-Time Leaderboard / Game Events Backend

Problem to solve
Implement a backend for a simple “points-based game” with thousands of score updates per minute, while maintaining a leaderboard.

Core services

    API Gateway + Lambda (submit score, get leaderboard)
    Aurora (players, scores, leaderboard tables OR materialized view)
    EventBridge (ScoreSubmitted events)
    SQS (score processing queue)
    SNS (optional: broadcast top-10 changes)

Criteria for success

    Score submissions write minimal data quickly and publish ScoreSubmitted onto EventBridge (or directly into SQS).
    Consumer Lambda reads from SQS:
        applies score updates to Aurora
        recomputes leaderboard (or partial updates)
    GET /leaderboard returns top N players from Aurora.
    Load test script simulates 1k+ score submissions; system keeps up via SQS decoupling.
    Optionally, SNS notifies when there is a new #1.
