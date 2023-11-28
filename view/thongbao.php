<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel Booking</title>
    <style>

button {
    padding-top: 200px;
    background-color: #3498db;
    color: #fff;
    padding: 10px 20px;
    font-size: 16px;
    border: none;
    cursor: pointer;
    border-radius: 5px;
    transition: background-color 0.3s;

    /* Căn giữa theo chiều ngang */
    margin: 0 auto;
    display: block;
}

button:hover {
    background-color: #2980b9;
}

        .alert-container {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            align-items: center;
            justify-content: center;
        }

        .alert-box {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            text-align: center;
        }

        .close-btn {
            background-color: #e74c3c;
            color: #fff;
            padding: 5px 10px;
            font-size: 14px;
            border: none;
            cursor: pointer;
            border-radius: 3px;
            margin-top: 10px;
            transition: background-color 0.3s;
        }

        .close-btn:hover {
            background-color: #c0392b;
        }
    </style>
</head>
<body>
 <br>
 <br>
<script>
    
    function showBookingAlert() {
        alert("Vui lòng nhập ngày check in và check out trên banner để tìm kiếm phòng trống hoặc vào danh mục menu để xem các phòng.");
    }
</script>

<!-- Một ví dụ sử dụng alert khi người dùng không nhập ngày -->
<button onclick="showBookingAlert()">Tìm kiếm phòng</button>
<br>
<br>
<?php

?>

</body>
</html>
