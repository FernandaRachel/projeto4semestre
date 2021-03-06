<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri= "http://java.sun.com/jsp/jstl/functions" prefix= "fn"%>
<c:if test="${not empty postagens}">
<div class="container destaque">
	<div class="row">
		<c:forEach var="postagem" items="${postagens}">
		<div class="col-md-4 col-sm-4 col-xs-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					id ${postagem.id}
				</div>
				<div class="panel-body">
					<p>${fn:substring(postagem.descricao,0,80)}...</p>

				</div>
			</div>
		</div>
		</c:forEach>
	</div>
</div>
</c:if>
<div class="container">
		<div class="panel panel-group">
   		<div class="panel panel-primary">
			<c:if test="${not empty postagens}">
   		 
			<table class="table table-hover table-condensed table-striped table-bordered">
				<thead>
					<tr>
						<th>Protocolo</th>
						<th>Descri��o</th>
						<th>Data</th>
						<th>Situa��o</th>
						<th>�rea</th>
						<th width="12%">A��o</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="postagem" items="${postagens}">
						<tr id="row${postagem.id}">
							<td>&nbsp;${postagem.id}</td>
							<td>&nbsp;${fn:substring(postagem.descricao,0,80)}...</td>
							<td><fmt:formatDate value="${postagem.dataSugestao}" pattern="dd/MM/yyyy HH:mm:ss" /></td>
							<td>&nbsp;${postagem.status}</td>
							<td>&nbsp;${postagem.area.descricao}</td>
							<td width="12%">
								<a href="${path}/postagens/mural/${postagem.id}" class="btn btn-warning btn-xs" role="button">Abrir</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			</c:if>
		</div>
	</div>
</div>
