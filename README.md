## welcome to the aotearoa data project!

this is a repo that enables querying public data (government/statistics) from aotearoa new zealand and building analytical models with supplementary tables such as dim_calendar.

building the scripts for govt data is quite a labour-intensive task so the repo will grow as i work my way through the different govt agencies. however, i have already added dim_calendar, and the repo can be used to run queries into a database.

a small disclaimer, i am just a passionate analyst, have no affiliation with the govt, and am working things out as i go. use this repo at your own risk!

feel free to check out my blog / send me a message: https://fionastreasurechest.com/

### using this repo

this repo is set up as a basic dbt repo so anyone that knows a bit about dbt can use this repo to run queries. please create your own branch should you want to build with the repo, and if you have built something v cool feel free to submit a merge request, then other people can engage with it too!

### setting up this repo on your own machine

1. clone the repo (easy steps: https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository)
2. locate your profiles.yml file: it will be in a hidden folder called '.dbt'. this folder is likely in your 'home' location. to show hidden folders (on mac) select shift+command+period (note: if the file & folder do not exist you can just create it).
3. open the profiles.yml file using texteditor. in the file, paste the following configuration, save (command+s) and close the file:

```yml
adp:
  target: dev
  outputs:
    dev:
      type: duckdb
      path: "data/aotearoa-data-project.duckdb"
      threads: 4
```

4. install a database management tool (dmt) so you can view tables in this repo (incld. your own models if you run them). i use DBeaver (https://dbeaver.io/download/), its free and opensource.
5. open the database in the dmt, make sure you select "aotearoa-data-project_view.duckdb" (i.e. the view database, not the write database)
6. you have successfully set up this repo! now, for a daily setup (i.e. how to actually run and view anything), check out README_DAILY_SETUP.md!
