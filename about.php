<?php

include 'components/connect.php';

session_start();

if(isset($_SESSION['user_id'])){
   $user_id = $_SESSION['user_id'];
}else{
   $user_id = '';
};

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>About</title>

   <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
   
   <!-- Font Awesome CDN Link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- Custom CSS File Link  -->
   <link rel="stylesheet" href="css/style.css">

   <style>
      body {
         background-color: rgb(25, 24, 22);
         margin: 0;
         padding: 0;
         font-family: Arial, sans-serif;
      }
      .about {
         display: flex;
         flex-direction: column;
         align-items: center;
         justify-content: center;
         padding: 20px;
      }
      .row {
         display: flex;
         flex-direction: column;
         align-items: center;
         text-align: center;
         max-width: 1200px;
         width: 100%;
      }
      .image img {
         max-width: 100%;
         height: auto;
      }
      .content {
         margin-top: 20px;
         padding: 20px;
      }
      .content h3 {
         font-size: 35px;
         color: white;
      }
      .content p {
         font-size: 18px;
         color: white;
      }
      
      @media (min-width: 768px) {
         .row {
            flex-direction: row;
            align-items: center;
            text-align: left;
         }
         .image, .content {
            flex: 1;
         }
         .content {
            padding-left: 30px;
         }
      }
   </style>
</head>
<body>
   
<?php include 'components/user_header.php'; ?>

<section class="about">
   <div class="row">
      <div class="image">
         <img src="images/abt2.png" alt="About Us">
      </div>
      <div class="content">
         <h3>ABOUT US</h3>
         <p>Started in 1996 by selling essential items like bindis, mehndi, glass bangles, bentex bangles, metal bangles and imitation jewellery. We have come a long way since then by creating a legacy and favorite shop for women to shop. <br> Shopping for fashion jewellery to spending time with family and friends at our store, this becomes our story. <br> You will get the chance to shop and get everything fashion-related for yourself from earrings, bangles, bindis, necklaces, hair clips, rubber bands, jewellery and much more. </p>
      </div>
   </div>
</section>

<?php include 'components/footer.php'; ?>

<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
<script src="js/script.js"></script>
<script>
var swiper = new Swiper(".reviews-slider", {
   loop: true,
   spaceBetween: 20,
   pagination: {
      el: ".swiper-pagination",
      clickable: true,
   },
   breakpoints: {
      0: {
         slidesPerView: 1,
      },
      768: {
         slidesPerView: 2,
      },
   },
});
</script>
</body>
</html>