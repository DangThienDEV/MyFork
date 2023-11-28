<?php
function handleBookingRequest($db, $name, $email, $phone, $checkin, $checkout) {
    $customerId = insertKhachHang($db, $name, $email, $phone);

    if ($customerId) {
        $result = insertDatPhong($db, $customerId, $checkin, $checkout);
        if ($result) {
            echo "Booking successful!";
        } else {
            echo "Error while booking.";
        }
    } else {
        echo "Error while creating customer.";
    }
}
function insertKhachHang($db, $name, $email, $phone) {
    $stmt = $db->prepare("INSERT INTO khachhang (TenKhachHang, Email, sdt) VALUES (?, ?, ?)");
    $stmt->execute([$name, $email, $phone]);
    return $db->lastInsertId();
}

function insertDatPhong($db, $customerId, $checkin, $checkout) {
    $stmt = $db->prepare("INSERT INTO datphong (IDKhachHang, NgayCheckIn, NgayCheckOut, TrangThaiDon) VALUES (?, ?, ?, 'Đang xử lý')");
    return $stmt->execute([$customerId, $checkin, $checkout]);
}
?>
