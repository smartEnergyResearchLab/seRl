# Using the SERL AWS

## My favourite R package is not there

See [aws_loadPackages.R](../R/aws_loadPackages.R)

## Projects folder/drive 'disconnects' from 'P'

Symptom: Any of: can't access Projects folder, small red cross next to Projects in Windows Explorer, error message saying name in use...

Solution: Right click -> disconnect. Log out (not just disconnect), log in. You may have to repeat this a couple of times (*why?*)

## R cannot allocate XXX MB

Symptom: R stops, you ran out of memory

Solution: Any of:

 * restart R (cleans out memory etc)
 * close apps you don't need
 * * use the Edition 3 monthly data (for half-hourly reads)
 * improve your code (try using [data.table](https://rdatatable.gitlab.io/data.table/) and/or [drake](https://books.ropensci.org/drake/))
