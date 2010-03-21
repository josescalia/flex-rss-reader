<?php
include "include/connection.inc.php";

//define param
$action = $_GET['action'];
$return="";
$rss_id = $_GET['rss_id'];
$rss_name = $_GET['rss_name'];
$rss_link = $_GET['rss_link'];

//action read
if($action=="read"){
    $query = "select * from rss_feeder";
    $res = mysql_query($query);
    //return list of rss link
    $return = "<rss_list>";
         while ($result = mysql_fetch_object($res)) {
	           $return .="<RSS>
              <RSS_ID>$result->RSS_ID</RSS_ID> 
              <label>$result->RSS_NAME</label>
              <data>$result->RSS_LINK</data>
              </RSS>";
         }
    $return .= "</rss_list>";
    mysql_close();
}

//action add
if($action=="add"){
    $query = "insert into rss_feeder(RSS_NAME,RSS_LINK) values('$rss_name','$rss_link')";
    $res = mysql_query($query);
    //$result = mysql_fetch_row($res);
    //return list of rss link
    $return = "<action_result>";
       if($res){
         $return .= "01";
       }else{
         $return .= "99";
       }               
    $return .= "</action_result>";

}

//action edit
if($action=="edit"){
    $query = "update rss_feeder set RSS_NAME='$rss_name', RSS_LINK='$rss_link' where RSS_ID='$rss_id'";
    $res = mysql_query($query);
    //$result = mysql_fetch_row($res);
    //return list of rss link
    $return = "<action_result>";
       if($res){
         $return .= "01";
       }else{
         $return .= "99";
       }               
    $return .= "</action_result>";

}

//action edit
if($action=="delete"){
    $query = "delete from rss_feeder where RSS_ID='$rss_id'";
    $res = mysql_query($query);
    //$result = mysql_fetch_row($res);
    //return list of rss link
    $return = "<action_result>";
       if($res){
         $return .= "01";
       }else{
         $return .= "99";
       }               
    $return .= "</action_result>";

}

//printout result
print($return);

?>
