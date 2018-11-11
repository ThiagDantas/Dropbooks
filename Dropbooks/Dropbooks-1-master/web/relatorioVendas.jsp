<%-- 
Document   : relatorioVendas
Created on : Nov 11, 2018, 09:34:04 PM
Author     : thiago
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Relatório de vendas</title>

 <!--         <script src="res/js/relatorioVendas.js"></script>  -->

        
                <script src="res/jquery-3.3.1.js"></script>
        <link href="res/css/bootstrap.min.css" rel="stylesheet">
                <script src="//code.jquery.com/jquery-1.10.2.js"></script>

        <script>
         $(function(){
            $("#header").load("MenuNavBar.jsp");
            $("#footer").load("Footer.jsp");
         });
      </script>
  </head>
  <body>

        <div id="header"></div>


<div class="col-md-10">
    <form>
      <div class="form-row">

        <div class="form-group col-sm-2">
          <label>Data inicial</label>
          <input type="date" class="form-control  border border-dark" id="dataInicio" name="dataInicio">



        </div>

        <div class="form-group col-sm-2">
          <label>Data final</label>
          <input type="date" class="form-control  border border-dark" id="dataFinal" name="dataFinal">
        </div>


        <div class="form-group col-sm-2">
          <label>Código do pedido</label>
          <input type="text" class="form-control" id="idProduto" placeholder="Id do pedido">
        </div>
      </div>
      <hr>

      <div class="form-row">
        <h4>Valores</h4>

        <div class="form-group col-sm-2">
          <label>Valor inicial</label>
          <input type="number" class="form-control  border border-dark" id="valorMinimo" name="valorMinimo" placeholder="R$">

        </div>

        <div class="form-group col-sm-2">
          <label>Valor final</label>
          <input type="number" class="form-control  border border-dark" id="valorMaximo" name="valorMaximo" placeholder="R$">
        </div>


        <div class="form-group col-sm-2">
          <label>Cliente</label>
          <input type="text" class="form-control" id="idProduto" placeholder="idProduto">
        </div>

        <div class="form-group col-sm-2">
          <label>Vendedor</label>
          <select id="inputVendedor" class="form-control">
            <option selected>Carregar vendedores...</option>
            <option>...</option>
          </select>
        </div>

      </div>
      

      <button type="submit" class="btn btn-primary">Buscar</button>
      <button type="reset" class="btn btn-primary">Limpar filtros</button>
    </form><hr>

</div>



     <table class="table table-striped table table-hover sortable" >
            <thead>
                <tr class='linha'>
          <th scope="col" class='idVenda'> Código da venda</th>
          <th scope="col" class='idPedido'> Código do pedido </th>
          <th scope="col" class='data_venda'> Data do pedido </th>
          <th scope="col" class='valor'> Valor </th>
    </tr>
            </thead>
      <tbody id="tblVenda">
        
        <!--Aqui dentro deixei com a tabela parecida com a de busca do Vinicius pra tentar ajudar 
            mesmo que nao esteja com as classes pra buscar imagino que já dê uma ajuda
           -->
      <% 
          /*for(int i = 0; i < produtos.size();i++){
            out.println( 
                                                  
                                                 
                                                  "<tr class='item linha' onclick=' location.href= &#39 pagProduto.jsp?id="+ produtos.get(i).getId() +" &#39'>"+
                                                
            "<td class='idVenda'>"+produtos.get(i).getId()+"</td>"+
            "<td class='idPedido'>"+produtos.get(i).getDataRegistro()+"</td>"+
            "<td class='data_venda'>"+produtos.get(i).getAtivo()+"</td>"+
            "<td class='valor'>"+produtos.get(i).getQuantidade()+"</td>"+
                                                
                                                "</tr>");
           }*/
        %>
      
    </tbody>
        </table>
    <!-- Footer -->
        <div id="footer"></div>

  </body>
  </html>
