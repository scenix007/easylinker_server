<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
<h1>账户过期时间查询</h1>
<form name="form1" method="post" action="">
  端口：<input type="text" name="port" size="20" >
  密码：<input type="password" name="uname" size="20" >
  <input name="submit" type="submit" id="submit" value="查询" /></form>
<?php
if($_POST["submit"]=="查询"){
    $f_name = "../users.data";
    $json_str = file_get_contents($f_name);

    $u_data = json_decode($json_str, true);
    if (!is_array($u_data)) die('no successful');

    $is_found = false;
    foreach($u_data as $data){
        if($data['port'] == $_POST[port] and $_POST[uname] == $data['uname'] ){
            if($data['is_active'] == false){
                echo ("<h3>您的账户已于 " .$data['expire_date']. "过期，请及时充值</h3>");
            }else{
                echo ("<h3>您的账户将于 " .$data['expire_date']. "过期，请及时充值</h3>");
            }
            $is_found = true;
        }
    }
    if(false == $is_found){
            echo ("<h3>未查询到相关账户，请检查输入是否有误</h3>");
    }
}

?>
</body>
</html>
