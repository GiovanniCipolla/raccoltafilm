<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="it" class="h-100" >
	 <head>

	 	<!-- Common imports in pages -->
	 	<jsp:include page="../header.jsp" />
	 	
	   <title>Visualizza Elemento</title>
	   
	 </head>
	   <body class="d-flex flex-column h-100">
	   
	   		<!-- Fixed navbar -->
	   		<jsp:include page="../navbar.jsp"></jsp:include>
	    
			
			<!-- Begin page content -->
			<main class="flex-shrink-0">
			  <div class="container">
			  
			  		<div class='card'>
					    <div class='card-header'>
					        <h5>Visualizza dettaglio</h5>
					    </div>
					    
					
					    <div class='card-body'>
					<dl class="row">
							  <dt class="col-sm-3 text-right">Id:</dt>
							  <dd class="col-sm-9">${delete_regista_attr.id}</dd>
					    	</dl>
					    	
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Titolo:</dt>
							  <dd class="col-sm-9">${delete_regista_attr.nome}</dd>
					    	</dl>
					    	
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Genere:</dt>
							  <dd class="col-sm-9">${delete_regista_attr.cognome}</dd>
					    	</dl>
					    	
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Genere:</dt>
							  <dd class="col-sm-9">${delete_regista_attr.nickName}</dd>
					    	</dl>
					    	
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Data Pubblicazione:</dt>
							  <dd class="col-sm-9">
							  	<fmt:parseDate value="${delete_regista_attr.dataDiNascita}" pattern="yyyy-MM-dd" var="localDateToBeParsed" type="date"/>
								<fmt:formatDate pattern="dd/MM/yyyy" value="${localDateToBeParsed}" />
							  </dd>
					    	</dl>
					    	
					    	<dl class="row">
								<dt class="col-sm-3 text-right">Sesso:</dt>
								<dd class="col-sm-9">${delete_regista_attr.sesso}</dd>
							</dl>
					    
					    <div class='card-footer'>
					    
					        <a href="${pageContext.request.contextPath}/ExecuteDeleteRegistaServlet?idRegista=${registaItem.id }" class='btn btn-outline-secondary' style='width:80px'>
					            <i class='fa fa-chevron-left'></i> Elimina
					        </a>
					        <a href="${pageContext.request.contextPath}/ExecuteListRegistaServlet" class='btn btn-outline-secondary' style='width:80px'>
					            <i class='fa fa-chevron-left'></i> Back
					        </a>
					    </div>
					<!-- end card -->
					</div>	
			  
			    
			  <!-- end container -->  
			  </div>
			  </div>
			</main>
			
			<!-- Footer -->
			<jsp:include page="../footer.jsp" />
	  </body>
</html>