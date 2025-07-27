<?php

include '../components/connect.php';
?>

<!DOCTYPE html>
<html>
<head>
    <title>Date-wise Order Report</title>
</head>
<body>

<h2>Search Orders by Date</h2>
<form method="post" action="">
    Date: <input type="date" name="date">
    <input type="submit" name="search" value="Search">
</form>

<?php
if (isset($_POST['search'])) {
    // Connect to your database
    $dsn = "mysql:host=localhost;dbname=shop_db;charset=utf8mb4";
    $user = "root";
    $password = "";

    try {
        $conn = new PDO($dsn, $user, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $date = $_POST['date'] ?? null;

        if (!empty($date)) {
            // Query for a specific date
            $sql = "SELECT * FROM orders WHERE DATE(placed_on) = :date";
            $stmt = $conn->prepare($sql);
            $stmt->execute([':date' => $date]);
        } else {
            // If no date is provided, you might want to handle this case differently
            echo "<p>Please enter a date to search.</p>";
            exit; // Stop further execution if no input is given
        }

        if ($stmt->rowCount() > 0) {
            echo "<table border='1'>
                    <tr>
                    <th>User ID</th>
                    <th>User Name</th>
                    <th>Order Date</th>
                    <th>Total Price</th>
                    <th>Status</th>
                    </tr>";

            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                echo "<tr>
                <td>".$row['user_id']."</td>
                <td>".$row['name']."</td>
                <td>".$row['placed_on']."</td>
                <td>".$row['total_price']."</td>
                <td>".$row['payment_status']."</td>
                      </tr>";
            }

            echo "</table>";
        } else {
            echo "<p>No orders found for the specified date.</p>";
        }

    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
    }
}
?>

</body>
</html>

