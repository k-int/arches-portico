# Portico Arches package

## Usage

Load the Arches for HERs application and package prior to loading this package.

Once AfHER is set up, run
```
python manage.py packages -o load_package -s arches_portico/pkg
```

Do **not** use the `-db` flag, as this will drop the existing database.