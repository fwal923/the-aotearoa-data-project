### working in this repo

these are the instructions on how to activate your environment and run queries. I.e. when you actually want to get to work.

1. open a terminal within vsc/your code editor
2. to activate the dbt environment, run: `source dbt-env/bin/activate`
3. to install everything required to create analysis in python/jupyter, run: `pip install -r requirements.txt`
4. to install the database / allow the dbt run into the database, run: `pip install dbt-sqlite`

   > note: i tried to add this to requirements.txt but it wouldn't install, so a seperate command it is!

5. to put all seeds into the database, run: `dbt seed`
6. to put all tables into the database, run: `dbt run`
7. ok now you can get to work! build your models, investigate what you wish! hope you have a good time. if you have suggestions for improvements, get in touch through my website https://fionastreasurechest.com/
