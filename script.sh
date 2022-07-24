#!/bin/sh
dbt deps --profiles-dir .  # Pulls the most recent version of the dependencies listed in your packages.yml from git
dbt debug --target dev --profiles-dir .
dbt debug --target prod --profiles-dir .
# Run against dev
dbt run --target dev --profiles-dir .
dbt test --data --target dev --profiles-dir .