<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%>
<%@ page import="com.chengxusheji.domain.UserInfo" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
     
%>
<HTML><HEAD><TITLE>����������Ϣ</TITLE> 
<STYLE type=text/css>
BODY {
    	MARGIN-LEFT: 0px; BACKGROUND-COLOR: #ffffff
}
.STYLE1 {color: #ECE9D8}
.label {font-style.:italic; }
.errorLabel {font-style.:italic;  color:red; }
.errorMessage {font-weight:bold; color:red; }
</STYLE>
 <script src="<%=basePath %>calendar.js"></script>
<script language="javascript">
/*��֤����*/
function checkForm() {
    var title = document.getElementById("guestBook.title").value;
    if(title=="") {
        alert('���������Ա���!');
        return false;
    }
    var content = document.getElementById("guestBook.content").value;
    if(content=="") {
        alert('��������������!');
        return false;
    }
    
    return true; 
}
 </script>
</HEAD>

<BODY background="<%=basePath %>images/adminBg.jpg">
<s:fielderror cssStyle="color:red" />
<TABLE align="center" height="100%" cellSpacing=0 cellPadding=0 width="80%" border=0>
  <TBODY>
  <TR>
    <TD align="left" vAlign=top >
    <s:form action="GuestBook/GuestBook_UserAddGuestBook.action" method="post" id="guestBookAddForm" onsubmit="return checkForm();"  enctype="multipart/form-data" name="form1">
<table width='100%' cellspacing='1' cellpadding='3' class="tablewidth">

  <tr>
    <td width=30%>���Ա���:</td>
    <td width=70%><input id="guestBook.title" name="guestBook.title" type="text" size="40" /></td>
  </tr>

  <tr>
    <td width=30%>��������:</td>
    <td width=70%><textarea id="guestBook.content" name="guestBook.content" rows="5" cols="50"></textarea></td>
  </tr>

   

   

  <tr bgcolor='#FFFFFF'>
      <td colspan="4" align="center">
        <input type='submit' name='button' value='�ύ����' >
        &nbsp;&nbsp;
        <input type="reset" value='��д' />
      </td>
    </tr>

</table>
</s:form>
   </TD></TR>
  </TBODY>
</TABLE>
</BODY>
</HTML>