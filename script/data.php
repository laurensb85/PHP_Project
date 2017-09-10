<?php //data.php
require_once 'logindb.php';

 //This is the directory where images will be saved 
 $target = "uploads/"; 
 $target_1 = $target . basename( $_FILES['photo_1']['name']);
 $target_2 = $target . basename( $_FILES['photo_2']['name']); 
 $target_3 = $target . basename( $_FILES['photo_3']['name']); 
 $target_4 = $target . basename( $_FILES['photo_4']['name']); 
 $target_5 = $target . basename( $_FILES['photo_5']['name']); 

// Connect to server.
$db_server = mysql_connect($db_hostname, $db_username, $db_password)
    or die("Unable to connect to MySQL: " . mysql_error());
	
// Select the database.
mysql_select_db($db_database)
    or die("Unable to select database: " . mysql_error());
	
// Get values from form
//$name       = $_POST['name'];
//$email      = $_POST['email'];

if (isset($_POST['name'])) {
  $name = $_POST['name'];
}else{
  $name = '';
}

if (isset($_POST['email'])) {
  $email = $_POST['email'];
}else{
  $email = '';
}
//echo $email;

$photo_1		= ($_FILES['photo_1']['name']);
$photo_2		= ($_FILES['photo_2']['name']); 
$photo_3		= ($_FILES['photo_3']['name']); 
$photo_4		= ($_FILES['photo_4']['name']); 
$photo_5		= ($_FILES['photo_5']['name']);

if (isset($_POST['cbo_photo1_a'])) {
  $cbo_photo1_a = $_POST['cbo_photo1_a'];
}else{
  $cbo_photo1_a = '';
}

if (isset($_POST['cbo_photo1_v'])) {
  $cbo_photo1_v = $_POST['cbo_photo1_v'];
}else{
  $cbo_photo1_v = '';
}

if (isset($_POST['cbo_photo2_a'])) {
  $cbo_photo2_a = $_POST['cbo_photo2_a'];
}else{
  $cbo_photo2_a = '';
}

if (isset($_POST['cbo_photo2_v'])) {
  $cbo_photo2_v = $_POST['cbo_photo2_v'];
}else{
  $cbo_photo2_v = '';
}

if (isset($_POST['cbo_photo3_a'])) {
  $cbo_photo3_a = $_POST['cbo_photo3_a'];
}else{
  $cbo_photo3_a = '';
}

if (isset($_POST['cbo_photo3_v'])) {
  $cbo_photo3_v = $_POST['cbo_photo3_v'];
}else{
  $cbo_photo3_v = '';
}

if (isset($_POST['cbo_photo4_a'])) {
  $cbo_photo4_a = $_POST['cbo_photo4_a'];
}else{
  $cbo_photo4_a = '';
}

if (isset($_POST['cbo_photo4_v'])) {
  $cbo_photo4_v = $_POST['cbo_photo4_v'];
}else{
  $cbo_photo4_v = '';
}

if (isset($_POST['cbo_photo5_a'])) {
  $cbo_photo5_a = $_POST['cbo_photo5_a'];
}else{
  $cbo_photo5_a = '';
}

if (isset($_POST['cbo_photo5_v'])) {
  $cbo_photo5_v = $_POST['cbo_photo5_v'];
}else{
  $cbo_photo5_v = '';
}


//Writes the photo to the server 
 //photo1
 if((move_uploaded_file($_FILES['photo_1']['tmp_name'], $target_1)))
 { 
	//Tells you if its all ok 
	//echo "The file(s) has been uploaded, and your information has been added to the directory";
	//echo "photo1: " . $photo_1;
 } 
 else 
 { 
	//Gives and error if its not 
	//echo "Sorry, there was a problem uploading your file."; 
 }
 
 //photo2
 if((move_uploaded_file($_FILES['photo_2']['tmp_name'], $target_2)))
 { 
	//Tells you if its all ok 
	//echo "The file(s) has been uploaded, and your information has been added to the directory";
	//echo "photo2: " . $photo_2;
 } 
 else 
 { 
	//Gives and error if its not 
	//echo "Sorry, there was a problem uploading your file."; 
 }
 
 //photo3
 if((move_uploaded_file($_FILES['photo_3']['tmp_name'], $target_3)))
 { 
	//Tells you if its all ok 
	//echo "The file(s) has been uploaded, and your information has been added to the directory";
	//echo "photo3: " . $photo_3;
 } 
 else 
 { 
	//Gives and error if its not 
	//echo "Sorry, there was a problem uploading your file."; 
 }
 
 //photo4
 if((move_uploaded_file($_FILES['photo_4']['tmp_name'], $target_4)))
 { 
	//Tells you if its all ok 
	//echo "The file(s) has been uploaded, and your information has been added to the directory";
	//echo "photo4: " . $photo_4;
 } 
 else 
 { 
	//Gives and error if its not 
	//echo "Sorry, there was a problem uploading your file."; 
 }
 
 //photo5
 if((move_uploaded_file($_FILES['photo_5']['tmp_name'], $target_5)))
 { 
	//Tells you if its all ok 
	//echo "The file(s) has been uploaded, and your information has been added to the directory";
	//echo "photo5: " . $photo_5;
 } 
 else 
 { 
	//Gives and error if its not 
	//echo "Sorry, there was a problem uploading your file."; 
 }


// Insert data into mysql
$sql="INSERT INTO tblthesis (naam, email, photo_1, photo_2, photo_3, photo_4, photo_5, cbo_photo1_a, cbo_photo1_v, cbo_photo2_a, cbo_photo2_v, cbo_photo3_a, cbo_photo3_v, cbo_photo4_a, cbo_photo4_v, cbo_photo5_a, cbo_photo5_v) 
VALUES ('$name', '$email', '$photo_1', '$photo_2', '$photo_3', '$photo_4', '$photo_5', '$cbo_photo1_a', '$cbo_photo1_v', '$cbo_photo2_a', '$cbo_photo2_v', '$cbo_photo3_a', '$cbo_photo3_v', '$cbo_photo4_a', '$cbo_photo4_v', '$cbo_photo5_a', '$cbo_photo5_v')";
//$result = mysql_query($sql);
mysql_query($sql);
// close mysql
mysql_close();

//send email
// multiple recipients
//$to  = $email;

// subject
$subject = 'Confirmation of Participation';

//message
$message = 'Dear ' .$name. ','. "\r\n\r\n";
$message .= "Thank you for agreeing to participate in this research project by uploading the following pictures: \r\n\r\n";
$message .= "Picture 1: " . $photo_1 . "\r\n" . "Picture 2: " . $photo_2 . "\r\n" . "Picture 3: " . $photo_3 . "\r\n" . "Picture 4: " . $photo_4 . "\r\n" . "Picture 5: " . $photo_5 . "\r\n\r\n";
$message .= "This letter confirms our agreement that you have participated and that you agree with the following terms and conditions: \r\n";
$message .= "- I declare to have been clearly informed about the nature, purpose and method of the study.\r\n\r\n";
$message .= "- I declare to be the owner of the pictures or to have permission from the actual owner to share them.\r\n\r\n";
$message .= "- Herewith, I give consent that my pictures may be reproduced free of charge exclusively in the context of scientific research and communication. This may take the form of usage in scientific experiments where my pictures are reproduced and shown to individuals participating in the research, or be used in scientific publications as illustrations.\r\n\r\n";
$message .= "- I agree that there may be slight changes applied to my work (such as adjusting light exposure, color and small format changes).\r\n\r\n";
$message .= "- My name will be included in the acknowledgements of the publication, unless otherwise agreed (nelle.minner@student.kuleuven.be)\r\n\r\n";
$message .= "- In the case of portraits, I take full responsibility of any complaints about portrait rights. If necessary, I will make sure that the depicted person agrees with the spreading of his/her portrait.\r\n\r\n";
$message .= "- In the case of portraits depicting myself, I agree that these may be used in the research. No other personal information (name, e-mail address, etc.) will be mentioned in the use of my pictures.\r\n\r\n";
$message .= "- I agree to participate completely voluntarily in this study.\r\n\r\n";
$message .= "If you have any questions, please don't hesitate to contact me. \r\nYou can always email me at nelle.minner@student.kuleuven.be.\r\n\r\n";
$message .= "Thank you again for your contribution.\r\n\r\n";
$message .= "Sincerely,\r\n\r\nNelle Minner\r\nMaster student at KU Leuven - University of Leuven, Belgium\r\nResearch group quantitative psychology and individual differences\r\nFaculty of psychology and educational sciences\r\n\r\n";

// To send HTML mail, the Content-type header must be set
//$headers  = ''MIME-Version: 1.0' . "\r\n";
//$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";

// Additional headers
$to = $email;
$from = 'laurens.bourgeois@telenet.be'; 

$headers  = $to . ', '; // note the comma
$headers .= 'From: '. $from . "\r\n";
$headers .= 'Cc: laurens.bourgeois@telenet.be';
ini_set ( 'SMTP', 'send.one.com' ); 

//print($to . "'\r\n\'" . $subject . "'\r\n\'" . $message . "'\r\n\'" . $headers);

// Mail it
if(mail($to, $subject, $message, $headers)){
	//echo 'Email sent successfully!<br/><a href="../index.html" target="_self">Go to the index page.</a>';
	header( 'Location: ../index.html' ) ;
} else {
    die('Failure: Email was not sent!<br/><a href="../index.html" target="_self">Go to the index page.</a>');
}

?> 