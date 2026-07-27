# this script updates the database for viewing in the database management tool (dmt, i.e. dbeaver)

# we have the original database (aotearoa_data_project.duckdb) that gets written when running dbt commands (e.g. dbt run), and then a copy of it () for viewing in the dmt.
# the copy is required so we do not run into any writing/overwriting issues when viewing in the dmt and querying the output tables in the management tool and are simultaneously developing tables in vsc

#!/bin/bash

SOURCE_DB="data/aotearoa-data-project.duckdb"

VIEW_DB="data/aotearoa-data-project_view.duckdb"

echo "Refreshing DBeaver database..."

# Check the source database exists
if [ ! -f "$SOURCE_DB" ]; then
    echo "Error: $SOURCE_DB does not exist."
    exit 1
fi

# Copy the database
cp "$SOURCE_DB" "$VIEW_DB"

echo "Done!"
echo "DBeaver database updated:"
echo "$VIEW_DB"