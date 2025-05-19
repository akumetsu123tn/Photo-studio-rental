<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Đặt lịch studio</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: #f0f0f0;
            padding: 40px;
        }

        .booking-form {
            background: white;
            max-width: 600px;
            margin: auto;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            position: relative;
        }

        .back-button {
            position: absolute;
            top: 20px;
            left: 20px;
            background: #e0e0e0;
            color: #333;
            padding: 8px 16px;
            border-radius: 20px;
            text-decoration: none;
            font-size: 0.9em;
            transition: background 0.3s;
        }

        .back-button:hover {
            background: #d0d0d0;
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
        }

        label {
            display: block;
            margin: 12px 0 5px;
        }

        input, select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .btn-submit {
            background: #007BFF;
            color: white;
            border: none;
            padding: 12px;
            margin-top: 20px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
            border-radius: 5px;
        }

        .btn-submit:hover {
            background: #0056b3;
        }

        .navbar {
            background-color: #222;
            color: #fff;
            padding: 15px 30px;
            display: flex;
            justify-content: space-between;
            border-radius: 10px 10px 0 0;
        }

        .navbar a {
            color: #fff;
            text-decoration: none;
            margin-left: 20px;
        }

        .navbar a:hover {
            text-decoration: underline;
        }

        @media (max-width: 600px) {
            .navbar {
                flex-direction: column;
                align-items: flex-start;
            }

            .navbar div:last-child {
                margin-top: 10px;
            }

            .back-button {
                position: static;
                margin-bottom: 10px;
                display: inline-block;
            }
        }
    </style>
</head>
<body>
    <div class="booking-form">
        <a href="homepage.jsp" class="back-button">← Quay lại trang chủ</a>

      
        <h2>Đặt lịch chụp ảnh</h2>

        <form action="booking" method="post">
            <label for="customerName">Tên khách hàng</label>
            <input type="text" id="customerName" name="customerName" required>

            <label for="phone">Số điện thoại</label>
            <input type="text" id="phone" name="phone" required>

            <label for="studio">Chọn Studio</label>
            <select id="studio" name="studio">
                <option value="Studio 1">Studio 1 - Infinity</option>
                <option value="Studio 2">Studio 2 - Scandinavian</option>
                <option value="Studio 3">Studio 3 - Royal Scarlet</option>
            </select>

            <label for="date">Ngày</label>
            <input type="date" id="date" name="date" required>

            <label for="startTime">Giờ bắt đầu</label>
            <input type="time" id="startTime" name="startTime" required>

            <label for="endTime">Giờ kết thúc</label>
            <input type="time" id="endTime" name="endTime" required>

            <button type="submit" class="btn-submit">Xác nhận đặt lịch</button>
        </form>
    </div>
</body>
</html>
