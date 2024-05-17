
<center>

<h1>Você te certeza que deseja excluir sua conta?</h1>
<h5>Ao fazer isso, sua conta e seus pedidos serão excluidos permanentemente</h5>
<br>

<form action="" method="post">

<input class="btn btn-danger" type="submit" name="yes" value="Sim, eu desejo deletar">

<input class="btn btn-primary" type="submit" name="no" value="Não, vou continuar com minha conta">

</form>

</center>

<?php

$c_email = $_SESSION['customer_email'];

if(isset($_POST['yes'])){

$delete_customer = "delete from customers where customer_email='$c_email'";

$run_delete = mysqli_query($con,$delete_customer);

if($run_delete){

session_destroy();

echo "<script>alert('Sua conta foi excluida!')</script>";

echo "<script>window.open('../index.php','_self')</script>";

}

}

if(isset($_POST['no'])){

echo "<script>window.open('my_account.php?my_orders','_self')</script>";

}


?>