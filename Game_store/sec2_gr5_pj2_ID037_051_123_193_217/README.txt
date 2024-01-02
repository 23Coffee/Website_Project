1. BEGIN by running sec2_gr5_database.sql in MySQL Workbench.
2. IF you want to run Web Services (Backend) only then unzip sec2_gr5_ws_src.zip
3. Edit DB_USR, DB_PWD in .env inside /backend folder to match your own credential
4. Now you can run web services in Postman with URL localhost:80

5. ELSE IF you want to run full-stack, unzip sec2_gr5_src.zip go inside both /frontend and /backend folder
6. Edit /backend .env DB_USR, DB_PWD values (if you skip step 2-4).
7. Run npm install in root directory of both /frontend and /backend
8. Run npm start in root directory of both /frontend and /backend (in a separate terminal instances)
9. Now you can access frontend with URL localhost:3000 and backend at localhost:80
10. Credential for logging in include:
    `Admin`:
    username: admin
    password: rosebud

    `User`:
    username: michael
    password: 12345


### Preview of Our Website

![Home](https://github.com/23Coffee/Website_Project/assets/122808660/449875a0-ab12-4d4b-a9d2-4e92e197a4ec)

