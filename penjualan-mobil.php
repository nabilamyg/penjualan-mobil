<?php 
 $koneksi = mysqli_connect("localhost", "root", "", "sekolahan");
 $result = mysqli_query($koneksi, "SELECT karyawan.id, nama, alamat, no_telp FROM karyawan ;");
 $mobil = mysqli_query($koneksi, "SELECT id, merk,warna,harga,stok FROM mobil ;");
 $transaksi = mysqli_query($koneksi, "SELECT id, nama_pelanggan,alamat,no_telp,tanggal_transaksi FROM transaksi ;");

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Database | Penjualan Mobil</title>
    
</head>
<body>
    <section class="jumbotron text-center">
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#ooo" fill-opacity="1" d="M0,192L34.3,176C68.6,160,137,128,206,144C274.3,160,343,224,411,218.7C480,213,549,139,617,122.7C685.7,107,754,149,823,138.7C891.4,128,960,64,1029,37.3C1097.1,11,1166,21,1234,26.7C1302.9,32,1371,32,1406,32L1440,32L1440,0L1405.7,0C1371.4,0,1303,0,1234,0C1165.7,0,1097,0,1029,0C960,0,891,0,823,0C754.3,0,686,0,617,0C548.6,0,480,0,411,0C342.9,0,274,0,206,0C137.1,0,69,0,34,0L0,0Z"></path></svg>
    <h1 align="center" font-color:"white">Penjualan Mobil PT.Andara</h1>
    <h3 align="center">Karyawan</h3>  
    <br> <br>  
    </section>
    
    

    <div style="width:80%; padding-left:25%;">
    <table border="4" width= "50%"  text-align="center" class="table table-dark table-striped">
  
        <tr>
    
            <td >id</td>
            <td>nama</td>
            <td>alamat</td>
            <td>no_telp</td>
        </tr>
        <?php while($row=mysqli_fetch_assoc($result)) : ?>
        <tr>
            <td><?php echo $row["id"]; ?></td>
            <td><?php echo $row["nama"]; ?></td>
            <td><?php echo $row["alamat"]; ?></td>
            <td><?php echo $row["no_telp"]; ?></td>
        </tr>
        <?php endwhile ?>
    </table >
    
    <br>
    <h3 align="center">Mobil</h3>
    <table border="4" cellpaddings="8" cellspacing="2" align="center" class="table table-dark table-striped">
    

        <tr>
            <td>id</td>
            <td>merk</td>
            <td>warna</td>
            <td>harga</td>
            <td>stok</td>
        </tr>
        <?php while($row=mysqli_fetch_assoc($mobil)) : ?>
        <tr>
            <td><?php echo $row["id"]; ?></td>
            <td><?php echo $row["merk"]; ?></td>
            <td><?php echo $row["warna"]; ?></td>
            <td><?php echo $row["harga"]; ?></td>
            <td><?php echo $row["stok"]; ?></td>
        </tr>
        <?php endwhile ?>
    </table>

    <br>
    <h3 align="center">Transaksi</h3>
    <table border="4" cellpaddings="8" cellspacing="2" align="center" class="table table-dark table-striped">
        <tr>
            <td>id</td>
            <td>nama_pelanggan</td>
            <td>alamat</td>
            <td>no_telp</td>
            <td>tenggal_transaksi</td>
        </tr>
        <?php while($row=mysqli_fetch_assoc($transaksi)) : ?>
        <tr>
            <td><?php echo $row["id"]; ?></td>
            <td><?php echo $row["nama_pelanggan"]; ?></td>
            <td><?php echo $row["alamat"]; ?></td>
            <td><?php echo $row["no_telp"]; ?></td>
            <td><?php echo $row["tanggal_transaksi"]; ?></td>
        </tr>
        <?php endwhile ?>
    </table>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous">

    </script>
    
</body>
</html>