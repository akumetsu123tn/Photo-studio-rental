<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Studio Rental Dashboard - Vintage Style</title>
    <style>
        body {
            margin: 0;
            font-family: "Georgia", "Times New Roman", serif;
            background: linear-gradient(-45deg, #d8bfd8, #cdb4db, #b5ead7, #f0efeb);
            background-size: 400% 400%;
            animation: gradientBG 20s ease infinite;
            color: #5e4b56;
            display: flex;
            height: 100vh;
            overflow: hidden;
        }

        @keyframes gradientBG {
            0% {background-position: 0% 50%;}
            50% {background-position: 100% 50%;}
            100% {background-position: 0% 50%;}
        }

        .sidebar {
            width: 60px;
            background: linear-gradient(135deg, #a89bbc, #c8b6e2);
            color: #f2e9e4;
            padding: 20px 10px;
            display: flex;
            flex-direction: column;
            align-items: center;
            transition: width 0.5s ease, background 0.5s ease;
            overflow: hidden;
            position: relative;
            box-shadow: 0 0 10px #c8b6e2aa;
        }

        .sidebar:hover {
            width: 220px;
            padding-left: 20px;
            align-items: flex-start;
            background: linear-gradient(135deg, #d3c0eb, #e5dbf7);
            box-shadow: 0 0 15px #e5dbf7bb;
        }

        .sidebar h2 {
            font-family: "Palatino Linotype", "Book Antiqua", Palatino, serif;
            font-weight: normal;
            margin: 0 0 20px 0;
            white-space: nowrap;
            opacity: 0;
            color: #6b5978;
            text-shadow: 0 0 4px #d3c0ebaa;
            transition: opacity 0.4s ease;
        }

        .sidebar:hover h2 {
            opacity: 1;
        }

        .sidebar a {
            color: #6b5978;
            text-decoration: none;
            margin: 10px 0;
            padding: 8px 12px;
            border-radius: 10px;
            display: flex;
            align-items: center;
            white-space: nowrap;
            opacity: 0;
            transition: background 0.4s, opacity 0.4s, box-shadow 0.4s;
            box-shadow: 0 0 4px transparent;
            font-weight: 600;
        }

        .sidebar:hover a {
            opacity: 1;
        }

        .sidebar a:hover {
            background: linear-gradient(45deg, #b19cd9cc, #c8b6e2cc);
            box-shadow: 0 0 8px #b19cd9aa, 0 0 15px #c8b6e2aa;
            color: #4b3b5c;
            transform: scale(1.03);
        }

        .sidebar a::before {
            content: attr(data-icon);
            margin-right: 10px;
            font-size: 1.4em;
            filter: drop-shadow(0 0 1px #b19cd9aa);
        }

        .sidebar:not(:hover) a {
            justify-content: center;
            padding: 8px 0;
            opacity: 1;
        }

        .sidebar:not(:hover) a span {
            display: none;
        }

        .main {
            flex: 1;
            padding: 30px 40px;
            overflow-y: auto;
            background: rgba(255, 255, 255, 0.7);
            backdrop-filter: blur(8px);
            border-radius: 20px;
            box-shadow: 0 0 20px rgba(108, 96, 134, 0.3);
            position: relative;
            animation: fadeIn 1s ease forwards;
            color: #4b3b5c;
        }

        .card {
            background: linear-gradient(135deg, #d8bfd8cc, #cdb4dbcc);
            padding: 20px;
            border-radius: 20px;
            box-shadow: 0 0 6px #b19cd9aa, 0 0 12px #c8b6e2aa;
            text-align: center;
            font-weight: 700;
            color: #4b3b5c;
            font-size: 1.15em;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            cursor: default;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 0 10px #a893bfcc, 0 0 20px #b19cd9dd;
        }

        .overview {
            display: flex;
            gap: 25px;
            margin-bottom: 25px;
        }

        .calendar, .booking-list {
            background: linear-gradient(135deg, #d7f1f9cc, #b1d6e8cc);
            padding: 25px;
            border-radius: 20px;
            box-shadow: 0 0 6px #9ecce2cc, 0 0 12px #a0d1e3cc;
            margin-bottom: 25px;
            font-size: 1em;
            color: #395463;
            transition: box-shadow 0.3s ease;
        }

        .calendar:hover, .booking-list:hover {
            box-shadow: 0 0 15px #72a0c1cc, 0 0 25px #aad4f9cc;
            transform: translateY(-3px);
        }

        .notifications {
            margin-top: 30px;
            font-style: italic;
            color: #6b5978cc;
        }

        .notifications ul {
            padding-left: 20px;
        }

        .filters {
            margin-top: 30px;
        }

        .filters input, .filters select {
            padding: 8px 10px;
            margin-right: 15px;
            border: 2px solid #b19cd9cc;
            border-radius: 12px;
            font-family: "Georgia", serif;
            font-size: 1em;
            color: #4b3b5c;
            background-color: #f7f5fa;
            transition: border-color 0.4s ease, box-shadow 0.4s ease;
            box-shadow: 0 0 5px #b19cd9aa;
        }

        .filters input:focus, .filters select:focus {
            border-color: #927fbbcc;
            outline: none;
            box-shadow: 0 0 10px #927fbbcc;
        }

        .filters button {
            background: linear-gradient(135deg, #b19cd9cc, #927fbbcc);
            color: #f7f5fa;
            padding: 8px 16px;
            border: none;
            border-radius: 15px;
            font-family: "Georgia", serif;
            font-size: 1em;
            cursor: pointer;
            transition: background 0.4s ease, box-shadow 0.4s ease;
            box-shadow: 0 0 10px #927fbbcc;
        }

        .filters button:hover {
            background: linear-gradient(135deg, #927fbbcc, #b19cd9cc);
            box-shadow: 0 0 15px #927fbbcc, 0 0 20px #b19cd9cc;
        }

        @keyframes fadeIn {
            from {opacity: 0;}
            to {opacity: 1;}
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <h2>📷 Studio Admin</h2>
        <p class="welcome-msg">👋 Welcome, admin</p>
        <a href="homepage.jsp" data-icon="🏠"><span>Trang chính</span></a>
        <a href="#" data-icon="📅"><span>Quản lý lịch đặt</span></a>
        <a href="#" data-icon="🏢"><span>Danh sách phòng</span></a>
        <a href="#" data-icon="👤"><span>Khách hàng</span></a>
        <a href="#" data-icon="💰"><span>Doanh thu</span></a>
        <a href="#" data-icon="⚙️"><span>Cài đặt</span></a>
       <a href="logout.jsp" data-icon="🚪"><span>Đăng xuất</span></a>
    </div>

    <div class="main" id="mainContent">
        <div class="overview">
            <div class="card">Số phòng đang thuê: <strong>3</strong></div>
            <div class="card">Lượt thuê hôm nay: <strong>12</strong></div>
            <div class="card">Doanh thu hôm nay: <strong>2.500.000đ</strong></div>
        </div>

        <div class="calendar">
            <h3>Lịch trình theo giờ</h3>
            <p>[Lịch dạng timeline hoặc calendar sẽ hiển thị tại đây]</p>
        </div>

        <div class="booking-list">
            <h3>Danh sách lịch đặt hôm nay</h3>
            <table width="100%" border="1" cellspacing="0" cellpadding="5" style="border-collapse: collapse; font-family: 'Georgia', serif;">
                <tr style="background-color:#a3866a; color:#f4ecd8;">
                    <th>Khách hàng</th><th>Phòng</th><th>Giờ</th><th>Trạng thái</th><th>Ghi chú</th>
                </tr>
                <tr><td>Nguyễn Văn A</td><td>Studio 1</td><td>10:00 - 12:00</td><td>Đã xác nhận</td><td></td></tr>
                <tr><td>Trần Thị B</td><td>Studio 2</td><td>13:00 - 15:00</td><td>Đang chờ</td><td></td></tr>
            </table>
        </div>

        <div class="notifications">
            <h4>🔔 Thông báo</h4>
            <ul>
                <li>Khách hàng mới vừa đặt lịch: Lê Văn C (Studio 3)</li>
                <li>⚠️ Cảnh báo: Phòng Studio 1 có 2 lịch trùng giờ</li>
            </ul>
        </div>

        <div class="filters">
            <h4>🔍 Tìm kiếm / Lọc</h4>
            <input type="date" />
            <input type="text" placeholder="Tên khách hàng" />
            <select>
                <option>Chọn phòng</option>
                <option>Zone 8</option>
                <option>Zone 9</option>
                <option>Zone 10</option>
                <option>Zone 11</option>
                <option>Zone 12</option>
                <option>Zone 13</option>
                <option>Zone 14</option>
                <option>Zone 15</option>
                <option>Zone 16</option>
                <option>Zone 17</option>
                <option>Zone 18</option>
            </select>
            <button>Lọc</button>
        </div>
    </div>
</body>
</html>
