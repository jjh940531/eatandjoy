<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품 상세정보</title>

</head>
<body>

    <h2>상품 상세정보</h2>
    <table border="1">
        <tr>
            <td>
                <img src="${path}/images/${vo.productUrl}" width="340" height="300">
            </td>
            <td>
                <table border="1" style="height: 300px; width: 400px;">
                    <tr align="center">
                        <td>상품명</td>
                        <td>${vo.productName}</td>
                    </tr>
                    <tr align="center">
                        <td>가격</td>
                        <td><fmt:formatNumber value="${vo.productPrice}" pattern="###,###,###"/></td>
                    </tr>
                    <tr align="center">
                        <td>상품소개</td>
                        <td>${vo.productDesc}</td>
                    </tr>
                    <tr align="center">
                        <td colspan="2">
                            <form name="form1" method="post" action="${path}/cart/insert">
                                <input type="hidden" name="productId" value="${vo.productId}">
                                <select name="amount">
                                    <c:forEach begin="1" end="10" var="i">
                                        <option value="${i}">${i}</option>
                                    </c:forEach>
                                </select>&nbsp;개
                                <input type="submit" value="장바구니에 담기">
                            </form>
                            <a href="${path}/product/productList">상품목록</a>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</body>
</html>