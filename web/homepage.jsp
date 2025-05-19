<%-- 
    Document   : homepage
    Created on : May 19, 2025, 9:56:14 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home page</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                background-color: #f4f4f4;
                scroll-behavior: smooth;
            }

            .navbar {
                background-color: #333;
                color: white;
                padding: 15px 30px;
                display: flex;
                justify-content: space-between;
                align-items: center;
                position: sticky;
                top: 0;
                z-index: 1000;
                box-shadow: 0 2px 5px rgba(0,0,0,0.2);
                transition: background-color 0.3s;
            }

            .navbar a {
                color: white;
                text-decoration: none;
                margin: 0 10px;
                transition: color 0.3s;
            }

            .navbar a:hover {
                color: #ffd700;
            }

            .banner {
                background: url('https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f') center/cover no-repeat;
                height: 300px;
                display: flex;
                align-items: center;
                justify-content: center;
                color: white;
                font-size: 2em;
                font-weight: bold;
                text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
                animation: fadeIn 2s ease-in-out;
            }

            @keyframes fadeIn {
                from {
                    opacity: 0;
                    transform: translateY(-20px);
                }
                to {
                    opacity: 1;
                    transform: translateY(0);
                }
            }

            .section {
                padding: 40px 20px;
                text-align: center;
                animation: fadeInUp 1s ease-in-out;
            }

            @keyframes fadeInUp {
                from {
                    opacity: 0;
                    transform: translateY(40px);
                }
                to {
                    opacity: 1;
                    transform: translateY(0);
                }
            }

            .studios {
                display: flex;
                justify-content: center;
                flex-wrap: wrap;
                gap: 20px;
            }

            .studio-card {
                background: white;
                border-radius: 10px;
                padding: 20px;
                width: 270px;
                box-shadow: 0 4px 8px rgba(0,0,0,0.1);
                transition: transform 0.3s ease, box-shadow 0.3s ease;
                opacity: 0;
                transform: translateY(20px);
                animation: fadeInUp 0.6s ease forwards;
            }
            .studio-card:nth-child(2) {
                animation-delay: 0.2s;
            }
            .studio-card:nth-child(3) {
                animation-delay: 0.4s;
            }

            .studio-card:hover {
                transform: scale(1.05);
                box-shadow: 0 8px 20px rgba(0,0,0,0.25);
            }

            .studio-card img {
                width: 100%;
                border-radius: 10px;
                margin-bottom: 10px;
            }

            .footer {
                background-color: #333;
                color: white;
                padding: 20px;
                text-align: center;
                font-size: 0.9em;
                animation: fadeIn 2s;
            }
            h2 {
                font-family: 'Playfair Display', serif;
                font-size: 2.2em;
                color: #111;
                margin-bottom: 30px;
            }

            h3 {
                font-family: 'Playfair Display', serif;
                font-size: 1.4em;
                color: #222;
                margin: 10px 0;
            }
            .studio-card p {
                font-family: 'Roboto', sans-serif;
                font-size: 0.95em;
                color: #555;
                text-align: justify;
            }
            @keyframes fadeInUp {
                to {
                    opacity: 1;
                    transform: translateY(0);
                }
            }
        </style>
    </style>
</head>
<body>
    <!-- Navbar -->
    <div class="navbar">
        <div>
            <a href="StudioRental.jsp" style="color: white; text-decoration: none;"><strong>📸 StudioRental</strong>
        </div>
        <!--        <%
             String role = (String) session.getAttribute("role");
        %>
        <div>
        <% if ("admin".equals(role)) { %>
        <a href="StudioRental.jsp" style="color: white; text-decoration: none;"><strong>📸 StudioRental</strong></a>
        <% } else { %>
        <strong>📸 StudioRental</strong>
        <% } %>
    </div>-->

        <div>
            <a href="homepage.jsp">Trang chủ</a>
            <a href="studioList.jsp">Danh sách phòng</a>
            <a href="booking.jsp">Đặt lịch</a>
            <a href="contact.jsp">Liên hệ</a>
        </div>
    </div>
    <!-- Banner -->
    <div class="banner">
        Thuê không gian chụp ảnh chuyên nghiệp
    </div>

    <!-- Giới thiệu -->
    <div class="section">
        <h2>Chào mừng đến với StudioRental!</h2>
        <p>Chúng tôi cung cấp các không gian chụp ảnh hiện đại, tiện nghi và linh hoạt theo giờ. Đặt lịch nhanh chóng, giá cả hợp lý.</p>
    </div>

    <!-- Danh sách studio nổi bật -->
    <div class="section">
        <h2>Zone nổi bật</h2>
        <div class="studios">
            <div class="studio-card" onclick="location.href = 'https://shorturl.at/UsOtB'" style="cursor: pointer;">
                <img src="images/Zone 8.jpg" alt="Zone 8" >
                <h3>Infinity</h3>
                <p>Bằng sự tối giản tuyệt đối và chiều sâu không gian lên đến 8m x 6,5m x 3,5m, Zone 8 mang đến một sân khấu hoàn hảo cho mọi ý tưởng hình ảnh: từ fashion lookbook, ảnh beauty, quảng cáo sản phẩm, đến visual art độc đáo.

                    Bức tường cong seamless trắng tinh khôi kết hợp hệ thống ánh sáng chuyên nghiệp và đạo cụ hình khối tối giản — tất cả tạo nên một phông nền “phi trọng lực”, nơi không có giới hạn cho sáng tạo.

                </p>
            </div>
            <div class="studio-card" onclick="location.href = 'https://shorturl.at/r23AE'" style="cursor: pointer;">
                <img src="images/Zone 11.jpg" alt="Zone 11">
                <h3> Vintage - Scandinavian </h3>
                <p>“Sáng sớm, ánh nắng len lỏi qua khung cửa sổ, chiếu rọi không gian tĩnh lặng đầy hoài niệm. 
                    Mỗi góc nhỏ trong căn phòng như kể một câu chuyện ấm áp về sự dịu dàng, thanh bình — nơi thời gian dường như ngừng lại để người ta có thể sống chậm và cảm nhận.”</p>
            </div>
            <div class="studio-card" onclick="location.href = 'https://shorturl.at/lKDTc'"style="cursor: pointer;">
                <img src="images/Zone 15.JPG" alt="Zone 15">
                <h3>Royal Scarlet</h3>
                <p>Bước vào Zone 15, bạn như lạc vào một khung cảnh cổ tích hoàng gia, nơi mọi ánh nhìn đều bị cuốn hút bởi sắc đỏ nhung quyền lực và không gian sang trọng đến từng chi tiết.

                    Đây là concept lý tưởng cho:

                    Ảnh chân dung cao cấp 🎩

                    Ảnh thời trang phong cách cổ điển 💃

                    Ảnh quảng bá rượu, sách, hoặc nội thất nghệ thuật

                    Từ ánh sáng đèn chùm pha lê cho đến chất liệu vải nhung gợi cảm, mỗi yếu tố đều sẵn sàng làm nền cho một bộ ảnh đậm chất drama – lãng mạn – hoài cổ.</p>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        © 2025 StudioRental. Hotline: 0123 456 789 | Email: support@studiorental.vn
    </div>
</body>
</html>
