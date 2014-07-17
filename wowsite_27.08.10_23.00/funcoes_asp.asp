<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<!--#include file="SqlCheckInclude.asp"-->

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title></title>

<!--
ASP
-->
<%

DIM Conexao, Tabela, sql

if request.QueryString("inserir") = "sim" then

	if CheckStringForSQLInj(request.Form("login")) = false and CheckStringForSQLInj(request.Form("senha1")) = false and CheckStringForSQLInj(request.Form("email")) = false then
	
		set Conexao=server.createobject("adodb.connection")
		Conexao.open "Provider=MSDASQL.1;Password=cqggbek7;Persist Security Info=True;User ID=root;Data Source=auth;Mode=ReadWrite;Initial Catalog=auth"
	
		Conexao.CommandTimeout = 60
		
		
		set Tabela=server.createobject("adodb.recordset")
		sql = "select * from account where username ='"&request.Form("login")&"'"
		Tabela.open sql, Conexao
		
		if not Tabela.eof then
		%>
			<SCRIPT LANGUAGE="JavaScript">
				alert('Usuario ja cadastrado!');
				location.href = "cadastro.asp" 
			</script>
		<%	
		Conexao.close
		'Conexao = nothing
		
		else
			Tabela.close
			sql = "insert into account (username, sha_pass_hash, email) values ('"&request.Form("login")&"','"&request.Form("senha1")& "','" &request.Form("email")&"')"
			Tabela.open sql, Conexao
			%>
			<SCRIPT LANGUAGE="JavaScript">
				alert('Cadastro realizado com sucesso!');
				location.href = "cadastro.asp" 
			</script>
			<%
			Conexao.close
			'Conexao = nothing
		end if
	
	else
	%>
			<SCRIPT LANGUAGE="JavaScript">
				alert('A informação inserida contém dados que conflitam com nosso banco de dados, digite outros valores!');
				location.href = "cadastro.asp" 
			</script>
	
	<%
	end if
	
	
	
end if


if request.QueryString("sugerir") = "sim" then

	if CheckStringForSQLInj(request.Form("login")) = false and CheckStringForSQLInj(request.Form("Email")) = false and CheckStringForSQLInj(request.Form("comments")) = false then
	
		set Conexao=server.createobject("adodb.connection")
		Conexao.open "Provider=MSDASQL.1;Password=cqggbek7;Persist Security Info=True;User ID=root;Data Source=auth;Mode=ReadWrite;Initial Catalog=auth"
	
		Conexao.CommandTimeout = 60
		
		set Tabela=server.createobject("adodb.recordset")
		sql = "insert into sugestao (Nm_Usuario, Nm_Email, Ds_Sugestao) values ('"&Server.HTMLEncode(request.Form("login"))&"','"&request.Form("Email")&"','"&Server.HTMLEncode(request.Form("comments"))&"')"
		Tabela.open sql, Conexao
		%>
		<SCRIPT LANGUAGE="JavaScript">
			alert('Sugestao gravada com sucesso. Obrigado por compartilhar sua opiniao!');
			location.href = "sugestao.asp" 
		</script>
		<%
		Conexao.close
		'Conexao = nothing
	
	else
	%>
			<SCRIPT LANGUAGE="JavaScript">
				alert('A informação inserida contém dados que conflitam com nosso banco de dados, digite outros valores!');
				location.href = "sugestao.asp" 
			</script>
	
	<%
	end if

end if

%>
<!--
ASP
-->


</head>

<body>
</body>
</html>
