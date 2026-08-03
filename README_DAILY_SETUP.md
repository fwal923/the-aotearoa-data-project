### starting the day

these are the instructions on how to activate your environment and run queries. I.e. when you actually want to get to work.

1. open a terminal within vsc/your code editor
2. to activate the dbt environment, run: `source dbt-env/bin/activate`
3. to install everything required to create analysis in python/jupyter, run: `pip install -r requirements.txt`

4. to put all seeds into the write database, run: `dbt seed`
5. to put all tables into the write database, run: `dbt run`
6. to make the database accessible via the database management tool (dmt, dBeaver), run: `./scripts/update_database.sh`
7. you should be able to view the database in the dmt now, so now you can get to work! build your models, investigate what you wish! hope you have a good time.

### actively working in this repo

this repo has two databases, one that is for modeling within vsc (write-database), and one that is for viewing/editing in the database management tool (dmt, mine is dbeaver) (view-database). to run models use standard dbt commands, but if you want to examine them in the dmt you need to run the script that updates the view-database. if you connect to the write-database instead of the view-database the terminal will send you into an error-loop and the dmt won't let you run queries. so make sure you follow these four steps as you work:

1. make changes in your repo / build models or whatever
2. run the dbt command to run the query and write into the write-database: `dbt run`
3. update the view-database: `./scripts/update_database.sh`
4. refresh the database within the dmt. in dbeaver it is the 'invalidate/reconnect' button, which is a little plug-sign with a refresh arrow in the top-left corner.

if you have suggestions for improvements, get in touch through my website https://fionastreasurechest.com/
