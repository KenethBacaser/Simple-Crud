<?php
    include_once("config.php");

    $result = mysqli_query($mysqli, "SELECT * FROM fam_quotes");

    //initialize session
    session_start();

    if( !isset($_SESSION['email']) || empty($_SESSION['email']))
    {
        header('location: login.php');
        exit;
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="styles.css">
    <title>CRUD</title>
</head>
<body>

    <h1 class="head text-center pb-3 display-4 text-dark  mb-3 mt-3"> <?php  echo "FAMOUS QUOTES"; ?></h1>
    <a class="text-light ml-3 mb-2 mr-1 float-center btn btn-secondary text-dark" href = "add.html">Add new Data </a>
    <div class= container-fluid>
        <table class="text-center table table-light table-striped text-secondary">
        
            <tr class="shadow">
                <td> Authors </td>
                <td> Quotes</td>
                <td> Update </td> 
             </tr>
        
            <?php
                while( $res = mysqli_fetch_array($result))
                {
                    echo "<tr>";

                    echo "<td>".$res['author']."</td>";
                    echo "<td>".$res['quote']."</td>";
                    echo "<td><a href=\"edit.php?id=$res[id]\">Edit</a> <a href=\"delete.php?id=$res[id]\" onClick=\"return confirm('Are you sure you want to delete this record?')\">Delete</a></td>";
                    echo "</tr>";
                }
            ?>
        </table>

        <a href="logout.php" class="btn btn-secondary text-dark float center">Logout</a>
    </div>
</body>
</html>