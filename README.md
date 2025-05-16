* Created 2 supabase projects viz. circle-dev and circle-prod
* Install supabase cli [docs](https://supabase.com/docs/guides/local-development/cli/getting-started)
* Install deno [docs](https://docs.deno.com/runtime/getting_started/installation/). Recommended by subase, required for edge fucntions
* Init supabase project in this folder with ```supabase init```, yes for deno
* Login to supbase ```supabase login```
* Link supabase to circle-dev project ```supabase link --project-ref $PROJECT_ID```
* Pull remote database ```supabase db pull```. ensure docker is running and settings matches the ones at [docs](https://supabase.com/docs/guides/local-development/cli/getting-started?platform=windows&queryGroups=platform#running-supabase-locally)
* Run supabase locally ```supabase start```
* Open the ```Studio URL``` from the logs. Could be [http://127.0.0.1:54323](http://127.0.0.1:54323)
* Navigate to Database -> Schema Visualizer -> Create table
* Create table ```user_login``` with columns ```email, password, created_at```
* Genrate migration with auto diff ```supabase db diff -f user_login```
* Pushed code to ```circle_supabase``` repo on ```dev``` branch