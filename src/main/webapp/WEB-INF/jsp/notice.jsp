<%@ page pageEncoding="UTF-8" %>
<ul class="notice">
    <c:forEach items="${notice }" var="n">
        <li>
            <div class="shadow">
                <span class="li_bg"></span>
                <a href="getnotice?title=${n.title }">
                    <h3 class="fpx15"><span class="badge badge-info" style="background-color: #2c4780">notice:</span>${n.title } </h3>
<%--                    <p>${n.summary }</p>--%>
                    <div class="date">
                        <i class="material-icons">event_note</i> <span><fmt:formatDate pattern="MM-dd" value="${n.releaseTime}" /></span>
                        <strong><fmt:formatDate pattern="yyyy" value="${n.releaseTime}" /></strong>
                    </div>
                </a>
            </div>
        </li>
    </c:forEach>

</ul>