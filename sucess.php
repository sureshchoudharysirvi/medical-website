<?php 
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['login'])==0)
    {   
header('location:login.php');
}
else{
	if (isset($_POST['submit'])) {

		mysqli_query($con,"update orders set 	paymentMethod='internet banking' where userId='".$_SESSION['id']."' and paymentMethod is null ");
		unset($_SESSION['cart']);
		header('location:order-history.php');

	}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>success</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>payment done sucessfully</h2>

  <div class="alert alert-success">
    <strong>Success! note your payment id</strong><?php echo $_SESSION['paymentid']; ?>

  </div>
</div>
<div class="container">
<form name="payment" method="post">
	     <input type="submit" value="VIEW ORDER" name="submit" class="btn btn-primary">
	    </form>	
</div>

</body>
</html>
<?php } ?>