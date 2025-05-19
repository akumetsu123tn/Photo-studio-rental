<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>Login Form</title>
        <link rel="icon" href="https://cdn.jsdelivr.net/gh/twitter/twemoji@14.0.2/assets/72x72/1f600.png" type="image/x-icon" />
        <style>
            body {
                margin: 0;
                height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background-color: #e0f7fa;
            }
            .container {
                background: white;
                border-radius: 10px;
                box-shadow: 0 4px 20px rgba(0,0,0,0.1);
                max-width: 400px;
                width: 100%;
                padding: 40px;
                box-sizing: border-box;
            }
            h2 {
                margin-bottom: 30px;
                color: #1e88e5;
                text-align: center;
                font-family:  'Roboto', sans-serif;
            }
            label {
                display: block;
                margin-bottom: 8px;
                font-weight: 600;
                color: #333;
            }
            input[type="text"] {
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 4px;
                width: 100%;
                font-size: 14px;
                margin-bottom: 20px;
                box-sizing: border-box;
            }
            input[type="password"] {
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 4px;
                width: 100%;
                font-size: 14px;
                margin-bottom: 20px;
                box-sizing: border-box;
            }
            input[type="submit"] {
                background-color: #1e88e5;
                color: white;
                border: none;
                padding: 12px;
                border-radius: 4px;
                cursor: pointer;
                font-size: 16px;
                width: 100%;
                transition: background-color 0.3s;
                margin-bottom: 20px;
            }
            input[type="submit"]:hover {
                background-color: #1565c0;
            }
            .social-login {
                display: flex;
                flex-direction: column;
                gap: 12px;
            }
            .social-btn {
                display: flex;
                align-items: center;
                justify-content: center;
                padding: 10px;
                border-radius: 4px;
                font-weight: 600;
                color: white;
                cursor: pointer;
                border: none;
                font-size: 15px;
                transition: background-color 0.3s;
                box-sizing: border-box;
                box-shadow: 0 2px 6px rgba(0,0,0,0.2);
            }
            .social-btn svg {
                height: 20px;
                width: 20px;
                margin-right: 10px;
                fill: white;
            }
            .google-btn {
                background-color: #db4437;
            }
            .google-btn:hover {
                background-color: #b73c2f;
            }
            .facebook-btn {
                background-color: #4267B2;
            }
            .facebook-btn:hover {
                background-color: #375492;
            }
            .forgot-password {
                text-align: center;
                margin-top: 20px;
            }
            .forgot-password a {
                color: #1e88e5;
                text-decoration: none;
                font-weight: bold;
                font-size: 14px;
                transition: color 0.3s;
            }
            .forgot-password a:hover {
                color: #1565c0;
                text-decoration: underline;
            }
            .register {
                text-align: center;
                margin-top: 10px;
            }

            .register a {
                color: #1e88e5;
                text-decoration: none;
                font-weight: bold;
                font-size: 14px;
                transition: color 0.3s;
            }

            .register a:hover {
                color: #1565c0;
                text-decoration: underline;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h2>Login</h2>



            <form action="login" method="post">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" required placeholder="Enter your username" />


                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required placeholder="Enter your password" />

                <input type="submit" value="Submit" />
            </form>

<!--            <div class="social-login">
                <button class="social-btn google-btn" type="button" onclick="alert('Google Login clicked')">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 533.5 544.3" aria-hidden="true">
                    <path d="M533.5 278.4c0-18.5-1.6-36.2-4.7-53.4H272v101h146.7c-6.2 33-24.9 61-53.2 79.9v66.4h85.9c50.3-46.4 79.1-114.5 79.1-194.9z" fill="#4285F4"/>
                    <path d="M272 544.3c72.8 0 134-24.1 178.6-65.5l-85.9-66.4c-23.8 16-54.4 25.5-92.7 25.5-71 0-131.3-48-153-112.3H31.4v70.7C75.3 486.9 167 544.3 272 544.3z" fill="#34A853"/>
                    <path d="M119 324.1c-10.9-32.7-10.9-68 0-100.6v-70.7H31.4c-39.7 78.8-39.7 172.2 0 251l87.6-70.7z" fill="#FBBC04"/>
                    <path d="M272 213.3c39 0 73.8 13.4 101.2 39.9l75.7-75.7C395.7 142.9 340 118.4 272 118.4c-105 0-196.8 57.4-240.6 140.3l87.6 70.7c21.6-64.3 81.9-112.3 153-112.3z" fill="#EA4335"/>
                    </svg>
                    Login with Google
                </button>
                <button class="social-btn facebook-btn" type="button" onclick="alert('Facebook Login clicked')">
                    <svg aria-hidden="true" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                    <path d="M22.675 0h-21.35C.6 0 0 .594 0 1.326v21.348C0 23.406.6 24 1.326 24H12.82v-9.293H9.692V11.21h3.128V8.414c0-3.1 1.893-4.788 4.658-4.788 1.324 0 2.462.099 2.795.143v3.24l-1.918.001c-1.504 0-1.797.715-1.797 1.763v2.311h3.59l-.467 3.496h-3.123V24h6.116c.726 0 1.326-.594 1.326-1.326V1.326C24 .594 23.406 0 22.675 0z"/>
                    </svg>
                    Login with Facebook
                </button>
            </div>-->
            <div class="forgot-password">
                <p><a href="forgot-password.jsp">FORGOT PASSWORD ?</a></p>
            </div>
            <div class="register">
                <p>Don't have an account? <a href="register.jsp">Register here</a></p>
            </div>

            <c:if test="${not empty errorMessage}">
                <div style="color: red;">${errorMessage}</div>
                <c:set var="errorMessage" value="" />
            </c:if>
        </div>
    </body>
</html>
