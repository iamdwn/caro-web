<%-- 
    Document   : FirsInterface
    Created on : Jul 20, 2023, 2:16:12 AM
    Author     : truon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Trò chơi đơn giản</title>
    </head>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-color: #f5f5f5;
            margin: 50px;
        }

        h1 {
            color: #333;
        }

        p {
            color: #666;
        }

        label {
            display: block;
            margin-top: 20px;
            color: #333;
            font-weight: bold;
        }

        input[type="text"] {
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #45a049;
        }

        .players{
            display: flex;
            align-items: center;
            text-align: center;
        }
        
        .pl{
            margin: 30px;
        }
        
    </style>
    <body>
        <h1>Chào mừng bạn đến với trò chơi!</h1>
        <p>Nhập tên của bạn và nhấn nút "Play" để bắt đầu.</p>
        <div class="players">
            <div class="pl">
                <label for="nameInput">Player 1:</label></br>
                <input type="text" id="nameInput" placeholder="Nhập tên đi ku !!">
            </div>
            <div class="pl">
                <label for="nameInput">Player 2:</label></br>
                <input type="text" id="nameInput" placeholder="Nhập tên đi ku !!">
            </div>
        </div>
        </br></br></br>
        <form id="form" action="Starting">
            <button onclick="play()">Play</button>
        </form>

        <script>
            function play() {
                const form = document.getElementById("form");
                        const name = document.getElementById("nameInput").value;
                if (name.trim() !== "") {
                    alert("Xin chào, " + name + " đến với Caro ! Siuuuuuuuuuu");
                } else {
                    alert("Vui lòng nhập tên");
                }
                form.submit();
            }
        </script>
    </body>
</html>

