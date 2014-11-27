<?php
 session_start();
    require_once('/protected/config.php');
    $connection = mysqli_connect(DBHOST, DBUSER, DBPASS, DBNAME);

    $error = mysqli_connect_error();
    if ($error != null) {
        $output = "<p>Unable to connect to database</p" . $error;
        exit($output);
    }
    
    if (isset($_GET['search'])){
        $Search=$_GET['search'];
        

  ?>

<html>
    <header>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <link href="css/SearchArticlecss.css" rel="stylesheet" type="text/css"/>  
        <link href="http://fonts.googleapis.com/css?family=Corben:bold" rel="stylesheet" type="text/css">
    </header>
    
    <body>
        <header>
            <?php include 'header.inc.php' ?>
        </header>
        <main>
            <?php include 'sidenav.inc.php' ?>
            <h1>Search results...</h1>
            <div class="table table-hover">
                <table class="myTable">
                    <tr>
                        <th>Article Title</th><th>Interest</th><th>Image</th><th>Date Posted</th><th>View</th>
                    </tr>
                        <?php
                        require_once '/protected/config.php';
                        $connection = mysqli_connect(DBHOST, DBUSER, DBPASS, DBNAME);
                        $error = mysqli_connect_error();
                        $sql="SELECT * FROM article WHERE ArticleTitle LIKE '%".$Search."%' OR ArticleContent LIKE '%".$Search."%'ORDER BY DatePosted ";
                        if ($result = mysqli_query($connection, $sql)) {
                        while($row = mysqli_fetch_assoc($result)) {
                            echo '<tr>';
                            echo '<td> ';
                            echo $row['ArticleTitle'];
                            echo '</td>';
                            echo '<td> ';
                            echo $row['Interest'];
                            echo '</td>';
                            echo '<td> ';
                            echo '<img src=';
                            echo $row['ImgLocation'];
                            echo ' width="150" height="150" >';
                            echo '</td>';
                            echo '<td> ';
                            echo $row['DatePosted'];
                            echo '</td>';
                            echo '<td><form action = "ViewSearch.php" method = "post">
                                    <input type="hidden" name="ArticleID" value="'.$row["ArticleID"].'">
                                    <input type="submit" name="View" value="View" />
                                </form></td>';
                            echo '</tr>';
                        }
                    }
                    ?>
                   
                       
                   
                </table>
            </div>
  
        </main>
        
        <footer>
            <?php 
               }
            else{
         include 'header.inc.php';
         include 'sidenav.inc.php';
          echo "<div class=''>";
          echo "<h1>Please use the Search bar for this function</h1>";
          echo "</div>";
               }
            include 'footer.inc.php' ?>
        </footer>
    </body>
</html>
