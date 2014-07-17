<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>World of Warcraft</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" />
</head>
<body>

<%
dim pagina
pagina = Request.ServerVariables("PATH_INFO")
pagina = split(pagina, "/")
%>

<ul>			

<%if pagina(2) = "default.asp" then%>
	<li class="active"><a href="default.asp" title="">Homepage</a></li>
<%else%>
	<li><a href="default.asp" title="">Homepage</a></li>
<%end if%>

<%if pagina(2) = "sugestao.asp" then%>
	<li class="active"><a href="sugestao.asp" title="">Sugest&otilde;es</a></li>
<%else%>
	<li><a href="sugestao.asp" title="">Sugest&otilde;es</a></li>
<%end if%>

<%if pagina(2) = "servidor.asp" then%>
	<li class="active"><a href="servidor.asp" title="">Servidor</a></li>
<%else%>
	<li><a href="servidor.asp" title="">Servidor</a></li>
<%end if%>

<%if pagina(2) = "cadastro.asp" then%>
	<li class="active"><a href="cadastro.asp" title="">Cadastro</a></li>
<%else%>
	<li><a href="cadastro.asp" title="">Cadastro</a></li>
<%end if%>

	<li><a href="http://www.worldofwarcraft.com/info/classes/talent-index/" title="" target="_blank">Builds</a></li>
	<li><a href="http://andurion.freeforums.org/" title="" target="_blank">F&oacute;rum</a></li>
</ul>


</body>
</html>
