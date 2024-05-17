<?php

session_start();

include("includes/db.php");
include("includes/header.php");
include("functions/functions.php");
include("includes/main.php");

?>


  <!-- Cover -->
  <main>
    <div class="hero">
      <a href="shop.php" class="btn1">Ver todos os produtos
</a>
    </div>
    <!-- Main -->
    <div class="wrapper">
            <h1>Destaques<h1>
            
      </div>



    <div id="content" class="container"><!-- container Starts -->

    <div class="row"><!-- row Starts -->

    <?php

    getPro();

    ?>

    </div><!-- row Ends -->

    </div><!-- container Ends -->
	<footer class="page-footer">

<div class="footer-nav">
	<div class="container clearfix">

		<div class="footer-nav__col footer-nav__col--info">
			<div class="footer-nav__heading">Informação</div>
			<ul class="footer-nav__list">
				<li class="footer-nav__item">
					<a href="shop.php" class="footer-nav__link">Geral</a>
				</li>
				<li class="footer-nav__item">
					<a href="localstore.php" class="footer-nav__link">Lojas fisicas</a>
				</li>
				<li class="footer-nav__item">
					<a href="#" class="footer-nav__link">Privacidade &amp; cookies</a>
				</li>
			</ul>
		</div>

		<div class="footer-nav__col footer-nav__col--whybuy">
			<div class="footer-nav__heading">Sobre</div>
			<ul class="footer-nav__list">
				<li class="footer-nav__item">
					<a href="contact.php" class="footer-nav__link">Contato</a>
				</li>
				<li class="footer-nav__item">
					<a href="#" class="footer-nav__link">Termos de compras</a>
				</li>
				
			</ul>
		</div>

		<div class="footer-nav__col footer-nav__col--account">
			<div class="footer-nav__heading">Sua conta</div>
			<ul class="footer-nav__list">
				<li class="footer-nav__item">
					<a href="login.php" class="footer-nav__link">Login</a>
				</li>
				<li class="footer-nav__item">
					<a href="#" class="footer-nav__link">Registrar</a>
				</li>
				<li class="footer-nav__item">
					<a href="cart.php" class="footer-nav__link">Ver carrinho</a>
				</li>

				<li class="footer-nav__item">
					<a href="#" class="footer-nav__link">Atualizar dados</a>
				</li>
			</ul>
		</div>


		<div class="footer-nav__col footer-nav__col--contacts">
			<div class="footer-nav__heading">Detalhes para contato:</div>
			<address class="address">
			Escola SENAI Prof. Dr. Euryclides de Jesus Zerbini.<br>
			Av. da Saudade, 125 - Pte. Preta, Campinas - SP, 13041-670.
		</address>
			<div class="phone">
				Telephone:
				<a class="phone__number" href="tel: (19) 3731-2840">(19) 3731-2840</a>
			</div>
			<div class="email">
				Email:
				<a href="mailto:supportmyshop@gmail.com" class="email__addr">supportmyshop@gmail.com</a>
			</div>
		</div>

	</div>
</div>


</footer>
</body>

</html>
