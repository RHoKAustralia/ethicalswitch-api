web:  bundle exec shotgun --server=thin --port=$PORT
postgresql: postgres -D vendor/postgresql -p $PORT
sass: bundle exec sass --watch lib/ethicalswitch/public/sass:lib/ethicalswitch/public/app/css --style compressed -I lib/ethicalswitch/public/sass