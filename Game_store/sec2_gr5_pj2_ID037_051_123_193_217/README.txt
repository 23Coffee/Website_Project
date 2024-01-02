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

![Home](https://github.com/23Coffee/Website_Project/assets/122808660/944fde43-5d17-4365-b96f-440b7ee246b0)

![Login](https://github.com/23Coffee/Website_Project/assets/122808660/f604caed-38ec-4352-8573-6716c9d08dc2)

![Search](https://github.com/23Coffee/Website_Project/assets/122808660/ddd6ece3-0907-416b-9938-9674f9f7d2cc)

![Detail](https://github.com/23Coffee/Website_Project/assets/122808660/fa4a2751-7c2b-4a1f-b917-9a8a02de5469)

![Admin](https://github.com/23Coffee/Website_Project/assets/122808660/37913c3a-704f-40c4-8c5d-d1e900d8af88)

![Additems](https://github.com/23Coffee/Website_Project/assets/122808660/126ee7fe-90ec-4f92-b1e3-4cd704245922)

![AddUser](https://github.com/23Coffee/Website_Project/assets/122808660/a7a6e80d-ad9f-404d-aca2-edd533b14fa7)
