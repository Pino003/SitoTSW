<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" import="java.util.*,Control.*,Model.*"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<% 
HttpSession session1 = request.getSession();
Utente utente = (Utente) session1.getAttribute("utente");
Ordine ordine = (Ordine) session1.getAttribute("ordine");
List<Prodotto> listaProdotti = (List<Prodotto>) session.getAttribute("listaProdotti");
%>
<!DOCTYPE html>
<html lang="it">
<head>
<title>Fattura</title>
<style>
    body {
        background-color: #413839;
        display: flex;
        justify-content: center;
        align-items: center;
		margin: 20px;
		font-size: 10px;
		
    }

    .pagina {
        height: 700px;
        width: 550px;
        position: relative;
        background-color: white;
		padding: 20px;
		white-space: pre-wrap;
		font-family: Arial, sans-serif;
		margin-top: 80px;
    }
	.pagina img{
		margin-left: 180px;
		margin-top: 2%;
		heigh: 100px;
		width: 100px;
	}
	hr{
		padding: 0;
		margin-top: 10px;
	}
	h4, h3 {
		margin-top: 0;
		margin-bottom: 0;
	}


    th, td {
        padding: 8px;
        text-align: right;
        border-bottom: 1px solid black;
    }

    th:first-child, td:first-child {
        text-align: left;
		width: 50%;
    }
	#prodotti{
		border-collapse: collapse;
        width: 550px;
	}
	
	#prodotti tr:nth-child(odd){
		background-color: #f2f2f2;
	}
	#prodotti th {
	  background-color: #CFECEC;
	}
	#prodotti tr:last-child td {
        border-bottom: none;
    }
	#download-btn {
		margin-top: 20px;
	}
	.hidden {
      display: none;
    }
    #stampButton {
		  background-color: #333;
		  color: #fff;
		  border: none;
		  margin: 27px;
		  padding: 10px 20px;
		  cursor: pointer;
		  transition: all 0.3s ease-in-out;
		  position: absolute; /* Aggiungi questa riga per il posizionamento assoluto */
      top: 10px; /* Regola la distanza dall'alto */
      border: 1px solid white;
      z-index: 999; /* Assicura che il pulsante sia sopra gli altri contenuti */
    
		}
		#stampButton:hover {
		  background-color: #102C57;
		  border-radius: 14px;
		}
		#titolo{
			text-align: right;
			margin-top: -30px;
		}
</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.3/jspdf.umd.min.js"></script>
</head>
<body>
<button id="stampButton" onclick="eseguiComandoRapido()">Scarica</button>

    <div class="pagina">
    <p id="titolo">Ricevuta d'acquisto</p>
		<img src="assets/images/nuovologo.png" alt="#">
		<br>
<%= utente.getNome() %> <%= utente.getCognome() %>
<%= utente.getIndirizzo() %>
<%= utente.getCitta() %>, <%= utente.getProvincia() %>, <%= utente.getCap() %>
<hr>
<h4>Indirizzo di Spedizione</h4>
<%= ordine.getIndirizzo() %>
<%= ordine.getCitta() %>, <%= ordine.getProvincia() %>, <%=ordine.getCap() %>
<hr>
<h4>Informazioni sull'ordine</h4>
Data ordine &#09;&#09; <%= ordine.getData() %>
Numero Ordine &#09; <%= ordine.getNumeroOrdine() %>
<hr>
<h3>Dettagli ricevuta</h3>
<table id="prodotti">
  <tr>
    <th>Nome prodotto</th>
    <th></th>
    <th>Prezzo Totale</th>
  </tr>
  <% 
    if (listaProdotti != null && !listaProdotti.isEmpty()) {
      for (Prodotto prodotto : listaProdotti) {
  %>
  <tr>
    <td><%= prodotto.getNome() %></td>
    <td></td>
    <td><%= prodotto.getPrezzo() %>€</td>
  </tr>
  <% 
      }
    }
  %>
  <tr>
    <td></td>
    <td>Totale ordine</td>
    <td><%= ordine.getTotale()%>€</td>	
  </tr>
</table>

	</div>

<script>
    function handleKeyDown(event) {
      if (event.ctrlKey && event.key === 'p') {
        eseguiComandoRapido();
      }
    }

    function eseguiComandoRapido() {
      var stampButton = document.getElementById('stampButton');
      stampButton.classList.add('hidden');

      window.print();
    }

    document.addEventListener('keydown', handleKeyDown);

    window.addEventListener('beforeprint', function () {
      var stampButton = document.getElementById('stampButton');
      stampButton.classList.add('hidden');
      document.removeEventListener('keydown', handleKeyDown);
    });

    window.addEventListener('afterprint', function () {
      var stampButton = document.getElementById('stampButton');
      stampButton.classList.remove('hidden');
      document.addEventListener('keydown', handleKeyDown);
    });
  </script>

</body>
</html>

</body>

</html>
