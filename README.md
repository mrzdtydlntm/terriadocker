## How To Use

1. `$ docker-compose up -d`
2. `$ docker exec -it terria_psql sh`
3. Import all database using this command
`/ # psql -d data_catalogue -U postgres < /home/db.sql`
4. Exit container
5. `$ docker exec -it terria_web /bin/bash`
6. `# npm start`
7. `# cd backend && node --max-old-space-size=8192 index.js`
8. Open http://localhost in browser

