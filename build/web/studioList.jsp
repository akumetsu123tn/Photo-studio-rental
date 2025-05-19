<%-- 
    Document   : studioList
    Created on : May 19, 2025, 11:01:05 PM
    Author     : Admin
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Danh sách studio</title>
        <style>
            body {
                font-family: 'Segoe UI', sans-serif;
                margin: 0;
                padding: 0;
                background-color: #fafafa;
            }

            .navbar {
                background-color: #222;
                color: #fff;
                padding: 15px 30px;
                display: flex;
                justify-content: space-between;
            }

            .navbar a {
                color: #fff;
                text-decoration: none;
                margin-left: 20px;
            }

            .container {
                padding: 40px;
            }

            h1 {
                text-align: center;
                margin-bottom: 40px;
            }

            .studio-grid {
                display: grid;
                grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
                gap: 30px;
            }

            .studio-card {
                background: white;
                border-radius: 12px;
                overflow: hidden;
                box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
                transition: transform 0.3s, box-shadow 0.3s;
            }

            .studio-card:hover {
                transform: scale(1.03);
                box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            }

            .studio-card img {
                width: 100%;
                height: 180px;
                object-fit: cover;
            }

            .studio-info {
                padding: 20px;
            }

            .studio-info h3 {
                margin-top: 0;
                font-size: 1.2em;
                color: #333;
            }

            .studio-info p {
                font-size: 0.95em;
                color: #666;
                margin-bottom: 0;
            }

            .footer {
                background-color: #333;
                color: white;
                padding: 20px;
                text-align: center;
                font-size: 0.9em;
                animation: fadeIn 2s;
            }
        </style>
    </head>
    <body>

        <div class="navbar">
            <div><strong>StudioRental</strong></div>
            <div>
                <a href="homepage.jsp">Trang chủ</a>
                <a href="studioList.jsp">Danh sách Studio</a>
                <a href="booking.jsp">Đặt lịch</a>
            </div>
        </div>

        <div class="container">
            <h1>Danh sách Studio</h1>
            <div class="studio-grid">
                <!-- Studio Card 1 -->
                <div class="studio-card">
                    <img src="images/Zone 8.jpg" alt="Zone 8" onclick="location.href = 'https://shorturl.at/UsOtB'" style="cursor: pointer;">
                    <div class="studio-info">
                        <h3>Zone 8 - Infinity</h3>
                        <p>Không gian seamless tối giản, lý tưởng cho lookbook, quảng cáo và beauty shoot.</p>
                    </div>
                </div>

                <!-- Studio Card 2 -->
                <div class="studio-card">
                    <img src="images/Zone 11.jpg" alt="Zone 11" onclick="location.href = 'https://shorturl.at/r23AE'" style="cursor: pointer;">
                    <div class="studio-info">
                        <h3>Zone 11 - Vintage</h3>
                        <p>Góc decor đậm chất cổ điển, ánh sáng tự nhiên dịu nhẹ từ cửa sổ lớn.</p>
                    </div>
                </div>

                <!-- Studio Card 3 -->
                <div class="studio-card">
                    <img src="images/Zone 15.JPG" alt="Zone 15" onclick="location.href = 'https://shorturl.at/lKDTc'"style="cursor: pointer;">
                    <div class="studio-info">
                        <h3>Zone 15 - Royal Scarlet</h3>
                        <p>Sắc đỏ quyền lực, nội thất hoàng gia cho concept drama cổ điển.</p>
                    </div>
                </div>

                <!-- Studio Card 4  -->
                <div class="studio-card">
                    <img src="images/Zone 9.jpg" alt="Zone 9" onclick="location.href = ''"style="cursor: pointer;">
                    <div class="studio-info">
                        <h3>Zone 9 - Urban Vibe</h3>
                        <p>Không gian bụi bặm, ánh sáng đèn vàng neon, tone đường phố nghệ thuật.</p>
                    </div>
                </div>

                <!-- Studio Card 5  -->
                <div class="studio-card">
                    <img src="images/Zone 10.jpg" alt="Zone 10" onclick="location.href = ''"style="cursor: pointer;">
                    <div class="studio-info">
                        <h3>Zone 10 - Urban Vibe</h3>
                        <p>Không gian bụi bặm, ánh sáng đèn vàng neon, tone đường phố nghệ thuật.</p>
                    </div>
                </div>

                <!-- Studio Card 6  -->
                <div class="studio-card">
                    <img src="images/Zone 12.jpg" alt="Zone 12" onclick="location.href = ''"style="cursor: pointer;">
                    <div class="studio-info">
                        <h3>Zone 12 - Urban Vibe</h3>
                        <p>Không gian bụi bặm, ánh sáng đèn vàng neon, tone đường phố nghệ thuật.</p>
                    </div>
                </div>

                <!-- Studio Card 7  -->
                <div class="studio-card">
                    <img src="images/Zone 14.JPG" alt="Zone 14" onclick="location.href = ''"style="cursor: pointer;">
                    <div class="studio-info">
                        <h3>Zone 14 - Urban Vibe</h3>
                        <p>Không gian bụi bặm, ánh sáng đèn vàng neon, tone đường phố nghệ thuật.</p>
                    </div>
                </div>

                <!-- Studio Card 8  -->
                <div class="studio-card">
                    <img src="images/Zone 16.jpg" alt="Zone 16" onclick="location.href = ''"style="cursor: pointer;">
                    <div class="studio-info">
                        <h3>Zone 16 - Urban Vibe</h3>
                        <p>Không gian bụi bặm, ánh sáng đèn vàng neon, tone đường phố nghệ thuật.</p>
                    </div>
                </div>

                <!-- Studio Card 9  -->
                <div class="studio-card">
                    <img src="images/Zone 17.jpg" alt="Zone 17" onclick="location.href = ''"style="cursor: pointer;">
                    <div class="studio-info">
                        <h3>Zone 17 - Urban Vibe</h3>
                        <p>Không gian bụi bặm, ánh sáng đèn vàng neon, tone đường phố nghệ thuật.</p>
                    </div>
                </div>

                <!-- Studio Card 10  -->
                <div class="studio-card">
                    <img src="images/Zone 18.jpg" alt="Zone 18" onclick="location.href = ''"style="cursor: pointer;">
                    <div class="studio-info">
                        <h3>Zone 18 - Urban Vibe</h3>
                        <p>Không gian bụi bặm, ánh sáng đèn vàng neon, tone đường phố nghệ thuật.</p>
                    </div>
                </div>

            </div>
        </div>
        <!-- Footer -->
        <div class="footer">
            © 2025 StudioRental. Hotline: 0123 456 789 | Email: support@studiorental.vn
        </div>
    </body>
</html>

