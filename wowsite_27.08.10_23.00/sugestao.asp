<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>World of Warcraft</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" />

<SCRIPT LANGUAGE="JavaScript">
function ValidaEmail()
{
  var obj = eval("document.forms[0].Email");
  var txt = obj.value;
  if ((txt.length != 0) && ((txt.indexOf("@") < 1) || (txt.indexOf('.') < 7)))
  {
    alert('Email incorreto');
	obj.focus();
  }
}


function ValidaBotao()
{

var obj = eval("document.forms[0].comments");

var txt = obj.value;

if (txt!='')
{
	document.forms[0].cadastra.disabled = false;
}
else
{
	document.forms[0].cadastra.disabled = true;
}

}
</SCRIPT>

</head>
<body>

<div id="header">
	<div id="logo">		
		<!--<h1><a href="#">ANDURION</a></h1>
		<!-- #include file="topo.html" -->
	</div>
	<div id="menu">
		<!--
		<ul>			
			<li><a href="default.asp" title="">Homepage</a></li>
			<li class="active"><a href="sugestao.asp" title="">Sugestões</a></li>
			<li><a href="servidor.asp" title="">Servidor</a></li>
			<li><a href="cadastro.asp" title="">Contas</a></li>
			<li><a href="http://www.worldofwarcraft.com/info/classes/talent-index/" title="" target="_blank">Builds</a></li>
			<li><a href="http://andurion.freeforums.org/" title="" target="_blank">Fórum</a></li>
		</ul>
		-->
		<!-- #include file="botoes.asp" -->
	</div>
</div>


<div id="wrapper">
	<div id="contentcadastro">
		<div id="sidebar">
			<!-- include file="sidebar.html" -->
		</div>

		
		<div id="maincadastro">

			<!-- INÍCIO CORPO DA PÁGINA -->
			<div id="welcome" class="post">
				<h2 class="title">Deixe sua sugestão e ajude-nos a melhorar </h2>
				<h3 class="date"><span class="month">Ago.</span> <span class="day">26</span><span class="year">.2010</span></h3>
				<div class="story">
					<p><b>Poste Sugestões para que possa melhorar tanto o site quanto o servidor </b> </p>
					<form method="post" action="funcoes_asp.asp?sugerir=sim">
					<b>Digite seu nome </b> <br />
					<input name="login" size="50" maxlength="100"><br /><br />
					<b>E-mail </b><br />
					<input type="text" name="Email" size="50" maxlength="50" onBlur="ValidaEmail();"><br /><br />
						<b>Digite suas sugestões aqui </b><br />
						<textarea name="comments" cols="50" rows="5" onBlur="ValidaBotao();"></textarea><br><br>
						<input id="cadastra" type="submit" name="cadastra" value="Comentar" onclick="return ValidaBotao();"/>
					</form>
				</div>
			</div>
			<!-- FIM CORPO DA PÁGINA -->

		</div>
	</div>
	
	
	<div style="clear: both;">&nbsp;</div>
</div>

<!-- #include file="rodape.html" -->

</body>
</html>
