## welcome to the aotearoa data project!

### using this repo

you can use this repo to access government/statistics data from aotearoa new zealand to analyse stuff. to get 'all' the data is quite a labor-intensive task so the repo will grow as i work my way through adding scripts to fetch the data. however, basic things are already here (like dim_calendar) and the ability to run queries into a database if you use dbt comments (e.g. dbt run -m query_name).

this repo is set up as a basic dbt repo so anyone that knows a bit about dbt can use this repo to run queries. you can use it as long as you stay in your own branch, if you want to merge anything pop through a merge request (though it is possible i will reject it if it's not topical enough).

a small disclaimer, i am just a passionate data scientist, have no affiliation with the govt, and am working things out as i go. use this repo at your own risk!

feel free to check out my blog / send me a message: https://fionastreasurechest.com/

### setting up this repo on your own machine

1. clone the repo (easy steps: https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository)
2. locate your profiles.yml file: it will be in a hidden folder called '.dbt'. this folder is likely in your 'home' location. to show hidden folders (on mac) select shift+command+period (note: if the file & folder do not exist you can just create it).
3. open the profiles.yml file using texteditor. in the file, paste the following configuration (you need to fix the path where it says 'insert path here'), save (command+s) and close the file:

```yml
dbt_sqlite:
  target: dev
  outputs:
    dev:
      type: sqlite
      threads: 1
      database: "database"
      schema: "main"

      # for schemas_and_paths and schema_directory: insert path to where you cloned the repo to in your computer
      schemas_and_paths:
        main: "~/[insert path here]/the-aotearoa-data-project/data/etl.db"
        dataset: "~/[insert path here]/the-aotearoa-data-project/data/dataset_v1.db"

      schema_directory: "~/[insert path here]/the-aotearoa-data-project/data"
```

4. install a database management tool so you can view tables in this repo (incld. your own models if you run them). i use DBeaver (https://dbeaver.io/download/), its free and opensource.
5. you have successfully set up this repo! now, for a daily setup (i.e. how to actually run anything), check out daily_setup.md!
