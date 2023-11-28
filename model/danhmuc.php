<?php
// hiển thị các phòng
function loadall_danhmuc_home(){
    $sql = "SELECT * FROM loaiphong";
    $listdm = pdo_query($sql);
    return $listdm;
}
function loadall_tendm($iddm){
    if($iddm>0){
        $sql="select * from phong where ID_LoaiPhong=".$iddm;
        $dm=pdo_query_one($sql);
        extract($dm);
        return $TenPhong;
    }else{
        return "";
    }
}




?>
