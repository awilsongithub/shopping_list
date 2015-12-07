# DON'T FORGET THE SOYMILK
The best shopping list app I've ever made.

### TO DO LIST
* watch videos on wknd of lectures
* items has /=erb :index (read all tiems), get and post for /create, /update, /destroy
* accounts has get & post for: /register, /=erb :index, /login, /logout, authorization_check
* not found (common routes) in app.ctrllr so all ctrllrs can access
* look at https://github.com/code-for-coffee/not_broken_bcrypt/blob/master/config.ru... for lessons ...restart from scratch using that code or anothe working/bcrypt app if needed! rebuilding would be good practice anyway!!!!
   * not_broken_bcrypt config requires only sinatra/base so commented out other requires.. and added the Dir.glob(...)
* why looking from /register via accountscontroller  at controllers/views/register? it's not in controllers...

###ROUTE TESTING DEBUGGING SUN. DEC. 6...
register. yes goes to womp womp
login. no get invalid hash at login error.

### COMPLETED TESTS, FIXES
* DONE: app.rb splat > mostly to appctrllr
   * DONE: except for routes > AccountController
   * DONE: single est connect to single db
   * DONE: models: add account.rb
* DONE! 1 migr and 1 seed file w/ ONE db w 2 tables. only need 1 row/talbe to test
   * DONE: add accounts table to shopping list db and insert adam 1234
* DONE: add views: log, not_auth, register,
   * DONE: index adds to read.erb to welcome user
* DONE: check routes w/ config mapping: config_route/ctrllr_route ie "users/login"

* DONE: config: add splat requires
* DONE: gemfile : consolidate all gems
* DONE: I commented out run Sinatra line 14 from config.ru since tskrrr didn't have that only other app with app.rb had it..

### STEPS FOLLOWED IN CREATING THIS APP
see scratch paper.....
