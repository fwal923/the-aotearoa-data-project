### working in this repo

these are the instructions on how to activate your environment and run queries. I.e. when you actually want to get to work.

1. open a terminal within vsc/your code editor
2. to activate the dbt environment, run: `source dbt-env/bin/activate`
3. to install everything required to create analysis in python/jupyter, run: `pip install -r requirements.txt`

<!-- this step is redundant as i installed a duckdb database which uses standad sql/ should mention tha the sql dialect is standard sql.
 4. to install the database / allow the dbt run into the database, run: `pip install dbt-sqlite`

   > note: i tried to add this to requirements.txt but it wouldn't install, so a seperate command it is! -->

5. to put all seeds into the database, run: `dbt seed`
6. to put all tables into the database, run: `dbt run`
7. ok now you can get to work! build your models, investigate what you wish! hope you have a good time. if you have suggestions for improvements, get in touch through my website https://fionastreasurechest.com/

<!-- this repo has two databases, one that is for modeling within vsc, and one that is for viewing/editing in the database management tool (dmt, mine is dbeaver). to run models use standard dbt commands, but if you want to examine them in the database management tool you need to run a script that updates the viewing-database for the dmt -->

8. to view what you've built, run: `./scripts/update_database.sh`
<!-- (to connect to the database within the dmt, connect to "aotearoa-data-project_view.duckdb", do not connect to "aotearoa-data-project.duckdb" as that will block all dbt runs) -->
9. to then update the database in the dmt, in the dmt refresh the databse. in dbeaver (i.e. what i'm using) it is the 'invalidate/reconnect' button, which is a little plug with a refresh arrow.

SO tldr, as you are working in the repo (vsc) and then building queries/looking at the data in the dmt, you will run:
`dbt run` to run the tables, and then always
`./scripts/update_database.sh` to copy them into/refresh them in the view-database, then you can refresh the dmt and build queries/re-run or investigate within the dmt.
