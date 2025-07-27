<?php

include 'components/connect.php';

session_start();

if(isset($_SESSION['user_id'])){
   $user_id = $_SESSION['user_id'];
}else{
   $user_id = '';
};

if(isset($_POST['send'])){

   $name = $_POST['name'];
   $name = filter_var($name, FILTER_SANITIZE_STRING);
   $email = $_POST['email'];
   $email = filter_var($email, FILTER_SANITIZE_STRING);
   $feedback = $_POST['feedback'];
   $feedback = filter_var($feedback, FILTER_SANITIZE_STRING);

   $select_message = $conn->prepare("SELECT * FROM `feedback` WHERE name = ? AND email = ? AND feedback = ?");
   $select_message->execute([$name, $email, $feedback]);

   if($select_message->rowCount() > 0){
      $message[] = 'already sent feedback!';
   }else{

      $insert_message = $conn->prepare("INSERT INTO `feedback`( name, email,  feedback) VALUES(?,?,?)");
      $insert_message->execute([$name, $email, $feedback]);

      $message[] = 'sent feedback successfully!';

   }

}


?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>contact</title>
   
   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php include 'components/user_header.php'; ?>

<section class="contact">

   <form action="" method="post">
      <h3>Feedback</h3>
      <input type="text" name="name" placeholder="enter your name" required maxlength="20" class="box">
      <input type="email" name="email" placeholder="enter your email" required maxlength="50" class="box">
      <textarea name="feedback" class="box" placeholder="enter your feedback" cols="30" rows="10"></textarea>
      <input type="submit" value="submit feedback" name="send" class="btn">
   </form>

</section>













<?php include 'components/footer.php'; ?>

<script src="js/script.js"></script>

</body>
</html>