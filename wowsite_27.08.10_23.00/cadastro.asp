<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>World of Warcraft</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" />

<!-- 
java script
-->
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
  ValidaBotao();
}
function ValidaSenha1()
{
	var obj1 = eval("document.forms[0].senha1");
	var txt1 = obj1.value;

	if((txt1.length != 0) && (txt1.length <6)) 
	{
		alert('Favor criar uma senha com mais de 6 caracteres!');
	    obj1.value="";
		obj1.focus();
	}
	ValidaBotao();
}
function ValidaSenha2()
{
	var obj1 = eval("document.forms[0].senha1");
	var obj2 = eval("document.forms[0].senha2");
	var txt1 = obj1.value;
	var txt2 = obj2.value;
	
	if (txt1!=txt2)
	{
		alert('Senha incorreta favor re-escrever');
		obj2.value="";
		obj2.focus();
	}
	ValidaBotao();
}
function ValidaBotao()
{

var obj = eval("document.forms[0].Email");
var obj1 = eval("document.forms[0].senha1");
var obj2 = eval("document.forms[0].senha2");
var obj3 = eval("document.forms[0].login");

var txt = obj.value;
var txt1 = obj1.value;
var txt2 = obj2.value;
var txt3 = obj3.value;

if (txt!='' && txt1!='' && txt2!='' && txt3!='')
{
	document.forms[0].cadastra.disabled = false;
}
else
{
	document.forms[0].cadastra.disabled = true;
}

}
</script>
<!-- 
java script
-->

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
			<li><a href="sugestao.asp" title="">Sugestões</a></li>
			<li><a href="servidor.asp" title="">Servidor</a></li>
			<li class="active"><a href="cadastro.asp" title="">Contas</a></li>
			<li><a href="http://www.worldofwarcraft.com/info/classes/talent-index/" title="" target="_blank">Builds</a></li>
			<li><a href="http://andurion.freeforums.org/" title="" target="_blank">Fórum</a></li>
		</ul>
		-->
		<!-- #include file="botoes.asp" -->
	</div>
</div>

	<div id="wrapper">
	<div id="contentcadastro">
		<div id="maincadastro">
		
			<!-- INÍCIO CORPO DA PÁGINA -->
			<div id="welcome" class="post">
				<h2 class="title">Dados Cadastrais </h2>
				<div class="story">
					<form name="form_cadastro" method="post" action="funcoes_asp.asp?inserir=sim">
					<b>Usuário/Login </b> <br />
					<input name="login" size="15" maxlength="15"><br /><br />
					<b>E-mail </b><br />
					<input type="text" name="Email" size="40" maxlength="40" onBlur="ValidaEmail();"><br /><br />
					<b>Senha </b> <br />
					<input type="Password" name="senha1" size="15" maxlength="15" onBlur="ValidaSenha1();"><br /><br />
					<b>Redigite sua Senha </b> <br />
					<input type="Password" name="senha2" size="15" maxlength="15"onBlur="ValidaSenha2();"><br /><br />
				
				
					<h2 class="title">Regras Gerais</h2>
				
					<b>Não ofender ou provocar jogadores, GMs e Admins.</b><br />
					<b>Não se beneficiar de bugs do jogo.</b><br />
					<b>Não pedir benefcios aos GMs e Admins (itens, gold, tele, ...).</b><br />
					<b>Proibído o uso de qualquer cheat, sob pena de BAN.</b><br />
					<b>Não fazer spam e qualquer tipo de propaganda.</b><br /><br />
					
					<input id="cadastra" type="submit" name="cadastra"value="Criar Conta" onclick="return ValidaBotao();"/><br /><br />
					
					<b>Realmlist:</b> andurion.servegame.com <br />
					<b>versão:</b> 3.3.5a<br />
					
					</form>
					
				</div>
			</div>
			<!-- FIM CORPO DA PÁGINA -->
			
		</div>		
	</div>
	</div>
	
	
	
	<div style="clear: both;">&nbsp;</div>

<!-- #include file="rodape.html" -->

</body>
</html>
