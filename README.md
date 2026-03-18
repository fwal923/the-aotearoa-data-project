Welcome to your new dbt project!

### Using the starter project

Try running the following commands:

- dbt run
- dbt test

### Resources:

- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices

## new dbt project

it must be known that i took the instructions to add the sqllite database from this github repo (https://github.com/codeforkjeff/dbt-sqlite/tree/main) and then changed them to match this repo's input.

1. clone the repo
2. run 'pip install dbt-sqlite'
3. Create an entry in your ~/.dbt/profiles.yml file with the following configuration:

```
dbt_sqlite:

  target: dev
  outputs:
    dev:
      type: sqlite

      # sqlite locks the whole db on writes so anything > 1 won't help
      threads: 1

      # value is arbitrary
      database: "database"

      schema: 'main'

      # for schemas_and_paths and schema_directory: insert path to where you cloned the repo to in your computer

      schemas_and_paths:
        main: '~/[insert path here]/the-aotearoa-data-project/data/etl.db'
        dataset: '~/[insert path here]/the-aotearoa-data-project/data/dataset_v1.db'

      schema_directory: '~/[insert path here]/the-aotearoa-data-project/data'

      # optional: list of file paths of SQLite extensions to load. see README for more details.
      extensions:
        - "/path/to/sqlean/crypto.so"
        - "/path/to/sqlean/math.so"
        - "/path/to/sqlean/text.so"

```
