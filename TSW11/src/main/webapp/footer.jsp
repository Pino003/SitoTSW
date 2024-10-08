<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Updated Footer</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Questrial&display=swap');
        
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
        }
        
        body > * {
            flex-shrink: 0;
        }
        
        main {
            flex-grow: 1;
        }
        
        .footer {
            font-family: "Questrial", sans-serif;
            padding: 50px 0;
            color: #fefaf6;
            background-color: #102c57;
            width: 100%;
        }
        
        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 15px;
        }
        
        .box {
            width: 250px;
            margin-bottom: 20px;
        }
        
        .footer h3 {
            margin-top: 0;
            margin-bottom: 15px;
            font-weight: bold;
            font-size: 20px;
        }
        
        .footer ul {
            padding: 0;
            list-style: none;
            line-height: 1.8;
            font-size: 16px;
            margin-bottom: 0;
        }
        
        .footer ul a {
            color: inherit;
            text-decoration: none;
            opacity: 0.7;
            transition: opacity 0.3s ease;
        }
        
        .footer ul a:hover {
            opacity: 1;
        }
        
        .item.social {
            text-align: center;
            margin-top: 30px;
        }
        
        .item.social > a {
            font-size: 24px;
            width: 44px;
            height: 44px;
            line-height: 44px;
            display: inline-flex;
            text-align: center;
            border-radius: 50%;
            box-shadow: 0 0 0 1px #fefaf6;
            margin: 0 10px;
            color: #fefaf6;
            opacity: 0.75;
            justify-content: center;
            align-items: center;
            transition: opacity 0.3s ease, transform 0.3s ease;
        }
        
        .item.social > a:hover {
            opacity: 1;
            transform: scale(1.1);
        }
        
        .copyright {
            text-align: center;
            margin-top: 30px;
            opacity: 0.7;
            font-size: 16px;
        }
        
        .copyright a {
            color: inherit;
            text-decoration: none;
            font-weight: bold;
            transition: opacity 0.3s ease;
        }
        
        .copyright a:hover {
            opacity: 1;
        }
        
        @media (max-width: 767px) {
            .container {
                flex-direction: column;
                align-items: center;
            }
            
            .box {
                width: 100%;
                text-align: center;
            }
        }
    </style>
</head>
<body>
    <main>
        <!-- Your main content goes here -->
    </main>
    
    <footer class="footer">
        <div class="container">
            <div class="box">
                <h3>Categorie</h3>
                <ul>
                    <li><a href="http://localhost:8080/TSW11/product?action=dettaglio&sesso=M">Uomo</a></li>
                    <li><a href="http://localhost:8080/TSW11/product?action=dettaglio&sesso=F">Donna</a></li>
                    <li><a href="http://localhost:8080/TSW11/product?action=dettaglio&categoria=accessori&sesso=M">Accessori</a></li>
                    <li><a href="http://localhost:8080/TSW11/product?action=all">Tutto</a></li>
                </ul>
            </div>
            <div class="box">
                <h3>Autori</h3>
                <ul>
                    <li><a href="">Aniello Giamundo</a></li>
                    <li><a href="">Diana Gagliardi</a></li>
                    <li><a href="">Gabriella Fede</a></li>
                </ul>
            </div>
            <div class="box">
                <h3>Customer Service</h3>
                <ul>
                    <li><a href="./faq.jsp">FAQ</a></li>
                </ul>
            </div>
        </div>
        <div class="item social">
            <a href="https://www.facebook.com/dinfunisa"><i class="icon ion-social-facebook"></i></a>
            <a href="https://twitter.com/dinfunisa"><i class="icon ion-social-twitter"></i></a>
            <a href="https://www.youtube.com"><i class="icon ion-social-youtube"></i></a>
            <a href="https://www.instagram.com/dinfunisa/?hl=it"><i class="icon ion-social-instagram"></i></a>
        </div>
        <p class="copyright"><a href="Home.jsp">3G Vintage</a> � 2024</p>
    </footer>
</body>
</html>