<% 
Dim BlackList, ErrorPage, strSQLIMessage

BlackList = Array( "\balter\b", "\bcreate\b", "\binsert\b", "\bexec\b", "\bsysobjects\b", "\bsyscolumns\b", "\bsysdatabases\b", "\bupdate\b", "\bdelete\b", "\bdrop\b" )
					
'                  "--", "@\b", "\*",_
'                  "\bchar\b", "\bnchar\b", "\bvarchar\b", "\bnvarchar\b",_
'                  "\balter\b", "\bbegin\b", "\bcast\b", "\bcreate\b", "\bcursor\b",_
'                  "\bdeclare\b", "\bdelete\b", "\bdrop\b", "\bend\b", "\bexec\b",_
'                  "\bexecute\b", "\bfetch\b", "\binsert\b", "\bkill\b",_
'                  "\bselect\b", "\bsys\b", "\bsysobjects\b", "\bsyscolumns\b",_
'                  "\bsysdatabases\b", "\bdatabase\b",_
'                  "\btable\b", "\bupdate\b")
                  'begin, cast, create, drop, end, kill, table, from, open, join são muito comuns no banco de dados

ErrorPage = "/ErrorPage.asp"

'Mensagem quando encontrado SQL Injection
strSQLIMessage = "<br/><b>A informação inserida contém dados que conflitam com nosso banco de dados.</b><br/>Depto. Desenvolvimento.<br/>"

Function CheckStringForSQLInj(str) 
  Dim lstr, count, strReturnStr, s, Matches, Match
  
  count = 0
  
  ' If the string is empty, return true
  If ( IsEmpty(str) ) Then
    'CheckStringForSQLInj = false
    Exit Function
  ElseIf ( StrComp(str, "") = 0 ) Then
    'CheckStringForSQLInj = false
    Exit Function
  End If
  
  lstr = LCase(str)
  
  ' Check if the string contains any patterns in our
  ' black list
  strReturnStr = ""
  For Each s in BlackList
    'create variables
    Dim objRegEx
    'create instance of RegExp object
    Set objRegEx = New RegExp 

    'find all matches
    objRegEx.Global = True
    'set case insensitive
    objRegEx.IgnoreCase = True
    'set the pattern
    objRegEx.Pattern = s 

    'create the collection of matches
    Set Matches = objRegEx.Execute(lstr) 

    'print out all matches
    For Each Match in Matches
      'conta cada combinação
      count = count + 1
        strReturnStr = strReturnStr & "<br/>Match found at position "
        strReturnStr = strReturnStr & Match.FirstIndex & ". Match Value is '"
        strReturnStr = strReturnStr & Match.value & "'."
        strReturnStr = strReturnStr&"<br/>Frase """&lstr&""""
        strReturnStr = strReturnStr&"<br/>Palavra detectada """&s&""""
        strReturnStr = strReturnStr&"<br/><b>Favor escolher outra palavra ou insira algum espaço no meio. Clique no botão voltar do seu navegador.</b>"
        strReturnStr = strReturnStr&"<hr/>"
    Next
   
  Next

    
  If count > 0 Then
    'Response.Write(strSQLIMessage&"<br/>")
    'Response.Write strReturnStr
    CheckStringForSQLInj = true
    Exit Function
  End If
  
  CheckStringForSQLInj = false
  'Fim:
End Function 



%>