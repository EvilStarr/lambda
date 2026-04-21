Task Flow — Lambda Creation (ClickOps)
🎯 Objective

Create two AWS Lambda functions using different runtimes (Python and Node.js), validate execution, and confirm logging in CloudWatch.

Remember: “Lambda is just a function that waits. When an event arrives, it executes, logs what happened, and returns a result.”

Key ideas:

    No servers
    No ports
    No SSH
    Execution happens only when triggered
    Logs are your only visibility

Task 1 — Create Python Lambda

📍 Navigation
AWS Console → Lambda
Click Create function

Configuration
1. Choose Author from Scratch
Function name: chewbacca-python-lambda

Go here for code: https://github.com/BalericaAI/lambda/blob/main/lessonb/lambda/handler.py

2. Runtime
Select: Python 3.x (latest available)

3. Permissions
Choose: Create a new role with basic Lambda permissions

Note: This gives permission to write logs to CloudWatch. Without this, you are blind.




