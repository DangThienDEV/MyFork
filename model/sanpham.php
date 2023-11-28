<?php
// hiển thị các phòng
function loadall_room_home(){
    $sql = "SELECT * FROM phong";
    $listroom = pdo_query($sql);
    return $listroom;
}
function loadall_room($keyw="",$iddm=0){
    $sql="select * from phong where TrangThaiPhong = 0";
    // where 1 tức là nó đúng
    if($keyw!=""){
        $sql.=" and TenPhong like '%".$keyw."%'";
    }
    if($iddm>0){
        $sql.=" and ID_LoaiPhong ='".$iddm."'";
    }
    $sql.=" order by id desc";
    $listsanpham=pdo_query($sql);
    return  $listsanpham;
}


?>