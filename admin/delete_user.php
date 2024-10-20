<?php
if (isset($_GET['delete_users'])) {
    $delete_id = $_GET['delete_users'];
    
    $delete_query = "DELETE FROM `user_table` WHERE user_id = $delete_id";
    $delete_result = mysqli_query($con, $delete_query);
    
    if ($delete_result) {
        $delete_orders_query = "DELETE FROM `user_orders` WHERE user_id = $delete_id";
        $delete_orders_result = mysqli_query($con, $delete_orders_query);
        
        echo "<script>window.alert('User and their orders deleted successfully');</script>";
        echo "<script>window.open('index.php?list_users', '_self');</script>";
    } else {
        echo "<script>window.alert('Error deleting user.');</script>";
    }
}
?>
