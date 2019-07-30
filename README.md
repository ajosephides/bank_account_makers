*Intro*
A simulated tech test called Bank from Makers

*Requirements*
- You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
- Deposits, withdrawal.
- Account statement (date, amount, balance) printing.
- Data can be kept in memory (it doesn't need to be stored to a database or anything).


*Acceptance Criteria*
Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see

```date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00```


*Thoughts*
Balance. This is a bit of a funny one. Should this be calculate 'on the fly' by a statement printer or should it sit on the Account object and be updated on each transaction.
Both are valid approaches (imho), with both having pros and cons.
If on the printer it makes balance harder to extend in functionality - it is synonymous with an account. However it has not been explicitly asked or appear other than in the statement. It does however kinda feel like the right place for it.
If on the printer no state is stored, it's dynamically calculated, fits requirements explicitly.
For the initial implementation I shall calculate on the printer on the fly - for reasons listed but also because at this stage it is less of a refactor!

As I progressed especially when thinking about modules of printer that state of balance must be kept somewhere and so account would be a better place.
