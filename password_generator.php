<?php

 $characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";

 $randomPassword = substr( str_shuffle( $characters ), 0, 9);//generate 9 length random password
 echo "Your Random Password Is : ".$randomPassword;

?>