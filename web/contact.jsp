<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Liên hệ - Studio Lung Linh</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to bottom right, rgba(255,240,246, 0.85), rgba(249,249,249, 0.85)),
                        url('https://images.unsplash.com/photo-1504198453319-5ce911bafcde?auto=format&fit=crop&w=1950&q=80') center/cover no-repeat;
            background-attachment: fixed;
        }

        .container {
            max-width: 960px;
            margin: 60px auto;
            background: white;
            border-radius: 16px;
            box-shadow: 0 8px 24px rgba(255, 192, 203, 0.3);
            padding: 40px;
            animation: fadeIn 1.2s ease;
            backdrop-filter: blur(3px);
            position: relative;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .back-button {
            position: absolute;
            top: 20px;
            left: 20px;
            text-decoration: none;
            background-color: #ffb6c1;
            color: white;
            padding: 10px 16px;
            border-radius: 30px;
            font-size: 0.9em;
            display: inline-flex;
            align-items: center;
            box-shadow: 0 3px 6px rgba(0,0,0,0.1);
            transition: background-color 0.3s;
        }

        .back-button:hover {
            background-color: #ff85a2;
        }

        .back-button span {
            margin-left: 8px;
        }

        h2 {
            text-align: center;
            color: #cc3366;
            margin-bottom: 40px;
            font-size: 2em;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
        }

        h2 img {
            width: 36px;
            height: 36px;
        }

        .contact-form {
            display: flex;
            flex-wrap: wrap;
            gap: 40px;
        }

        .form-left, .form-right {
            flex: 1;
            min-width: 280px;
        }

        input, textarea {
            width: 100%;
            padding: 14px;
            margin: 12px 0;
            border: 1px solid #eee;
            border-radius: 10px;
            background-color: #fffafc;
            box-shadow: 0 2px 4px rgba(255, 192, 203, 0.2);
            font-size: 1em;
            transition: box-shadow 0.3s;
        }

        input:focus, textarea:focus {
            outline: none;
            box-shadow: 0 0 0 3px rgba(255,182,193, 0.3);
        }

        textarea {
            resize: vertical;
            height: 150px;
        }

        button {
            background: #ffb6c1;
            border: none;
            padding: 12px 28px;
            color: white;
            font-size: 1em;
            border-radius: 20px;
            cursor: pointer;
            transition: background 0.3s;
            margin-top: 10px;
        }

        button:hover {
            background: #ff85a2;
        }

        .info {
            background: #fff0f6;
            padding: 20px;
            border-radius: 12px;
            box-shadow: inset 0 1px 3px rgba(255, 182, 193, 0.1);
            color: #555;
            font-size: 0.95em;
        }

        .info p {
            margin: 12px 0;
        }

        @media (max-width: 768px) {
            .contact-form {
                flex-direction: column;
            }

            .back-button {
                top: 10px;
                left: 10px;
                font-size: 0.8em;
                padding: 8px 12px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <a href="homepage.jsp" class="back-button">⬅ <span>Quay lại trang chủ</span></a>

        <h2>
            <img src="https://cdn-icons-png.flaticon.com/512/2920/2920292.png" alt="camera icon">
            Liên hệ với Studio Lung Linh
        </h2>
        <div class="contact-form">
            <div class="form-left">
                <form action="ContactServlet" method="post">
                    <input type="text" name="name" placeholder="Họ và tên" required>
                    <input type="email" name="email" placeholder="Email của bạn" required>
                    <input type="text" name="subject" placeholder="Chủ đề" required>
                    <textarea name="message" placeholder="Nội dung cần hỗ trợ..." required></textarea>
                    <button type="submit">✨ Gửi liên hệ ✨</button>
                </form>
            </div>
            <div class="form-right">
                <div class="info">
                    <p><strong>📍 Địa chỉ:</strong> 12A Đường Lung Linh, Quận Ánh Hồng, TP. Mộng Mơ</p>
                    <p><strong>📞 Hotline:</strong> 0909 123 456</p>
                    <p><strong>📧 Email:</strong> hello@lunglinhstudio.vn</p>
                    <p><strong>🕰 Giờ làm việc:</strong> 9:00 - 21:00 (Thứ 2 - Chủ Nhật)</p>
                    <p><strong>🌸 Facebook:</strong> <a href="#" style="color: #cc3366;">fb.com/lunglinhstudio</a></p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
