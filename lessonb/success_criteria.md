Success Criteria — “Two Languages, One API” Lab
🎯 Primary Outcome

The student successfully builds and verifies a serverless API where API Gateway routes requests to two different Lambda functions (Python and Node.js), and both functions log and return correct responses.

Functional Criteria (Must Work)
1. API Endpoints Respond Correctly
2. 
  /python endpoint returns:
      HTTP 200
      JSON response
      Includes:
          greeting message
          timestamp
   
  /node endpoint returns:
      HTTP 200
      JSON response
      Includes:
          uppercase greeting


Verification Commands (Required)

    curl "<api-url>/python?name=Chewbacca"
    curl "<api-url>/node?name=Malgus"



Final Pass Condition

A student passes the lab when you can:

✔ Successfully call both endpoints
✔ Receive correct responses from both runtimes
✔ Locate and interpret CloudWatch logs
✔ Explain the request flow end-to-end
✔ Demonstrate that the system works even with missing or altered input
