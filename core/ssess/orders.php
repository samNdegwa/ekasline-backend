<?php
class Order {
    //database declarations
    public $conn;

    //Order properties
    public $order_id;
    public $user_id;
    public $product_id;
    public $quantity;
    public $date_placed;
    public $amount_due;
    public $id;
    public $phone_number;
    public $county_to_send;
    public $sub_county;
    public $city;
    public $postal_address;
    public $description;

     //constructor with db connection
     public function __construct($db) {
        $this->conn = $db;
    }
    
    //create order function
    public function createOrder() {
        $orderQuery = 'INSERT INTO  tb_orders SET  user_id = :user_id, date_placed = :date_placed, amount_due = :amount_due';
        //prepare statement
        $stmt = $this->conn->prepare($orderQuery);

        //clean data
        // $this->id           =htmlspecialchars(strip_tags($this-> conn->lastInsertId()));
        $this->user_id           =htmlspecialchars(strip_tags($this-> user_id));
        $this->date_placed       =htmlspecialchars(strip_tags($this-> date_placed));
        $this->amount_due        =htmlspecialchars(strip_tags($this-> amount_due));

         //binding of paramters
       // $stmt->bindParam(':id',$this->id);
        $stmt->bindParam(':user_id',$this->user_id);
        $stmt->bindParam(':date_placed',$this->date_placed);
        $stmt->bindParam(':amount_due',$this->amount_due);

       // $last = conn->insert_id;
    
        //execute the query
         if($stmt->execute()) {
             return true;
         }
        //print error if something goes wrong
        printf("Error %s. \n", $stmt->error);
            return false;
        
    }

    //Create order details function
    public function createOrderDetails() {
        $orderDetailsQuery = 'INSERT INTO tb_order_details SET order_id = :order_id, product_id = :product_id, quantity = :quantity';
        //prepare statement
        $stmt = $this->conn->prepare($orderDetailsQuery);

        //clean data
        $this->order_id           =htmlspecialchars(strip_tags($this-> order_id));
        $this->product_id         =htmlspecialchars(strip_tags($this-> product_id));
        $this->quantity           =htmlspecialchars(strip_tags($this-> quantity));

         //binding of paramters
        $stmt->bindParam(':order_id',$this->order_id);
        $stmt->bindParam(':product_id',$this->product_id);
        $stmt->bindParam(':quantity',$this->quantity);
    
        //execute the query
         if($stmt->execute()) {
             return true;
         }
        //print error if something goes wrong
        printf("Error %s. \n", $stmt->error);
            return false;
        
    }

    public function read_orders_details() {
 //create query
    $productQuery ="SELECT
           o.id,
           od.product_id, 
           p.title as name,
           p.description,
           p.price,
           p.image,
           od.quantity
           FROM
          tb_orders o
           JOIN
           tb_order_details od ON od.order_id = o.id 
           JOIN 
           products p ON p.id = od.product_id 

           WHERE o.id = ?";

          //prepare statement
          $stmt = $this->conn->prepare($productQuery);
          //binding param
          $stmt->bindParam(1, $this->id);
           //execute query
           $stmt->execute();

           return $stmt;

}

 public function read_user_orders() {
 //create query
    $productQuery ="SELECT
           id,
           user_id,
           date_placed,
           date_served,
           amount_due, 
           amount_paid,
           status
           FROM tb_orders 
           WHERE user_id = ? ORDER BY id DESC";

          //prepare statement
          $stmt = $this->conn->prepare($productQuery);
          //binding param
          $stmt->bindParam(1, $this->user_id);
           //execute query
           $stmt->execute();

           return $stmt;

}

public function read_all_orders() {
    //create query
       $productQuery ="SELECT
              id,
              user_id,
              date_placed,
              date_served,
              amount_due, 
              amount_paid,
              status
              FROM tb_orders ORDER BY id DESC";
   
             //prepare statement
             $stmt = $this->conn->prepare($productQuery);
             //binding param
            // $stmt->bindParam(1, $this->user_id);
              //execute query
              $stmt->execute();
   
              return $stmt;
   
   }

   //Read unopen/new orders
   public function read_new_orders() {
    //create query
       $productQuery ="SELECT
              id,
              user_id,
              date_placed,
              date_served,
              amount_due, 
              amount_paid,
              status
              FROM tb_orders WHERE stage_status=0 ORDER BY id DESC";
   
             //prepare statement
             $stmt = $this->conn->prepare($productQuery);
             //binding param
            // $stmt->bindParam(1, $this->user_id);
              //execute query
              $stmt->execute();
   
              return $stmt;
   
   }

   //Read open orders
   public function read_open_orders() {
    //create query
       $productQuery ="SELECT
              id,
              user_id,
              date_placed,
              date_served,
              amount_due, 
              amount_paid,
              status
              FROM tb_orders WHERE stage_status=1 ORDER BY id DESC";
   
             //prepare statement
             $stmt = $this->conn->prepare($productQuery);
             //binding param
            // $stmt->bindParam(1, $this->user_id);
              //execute query
              $stmt->execute();
   
              return $stmt;
   
   }

   //Read closed orders
   public function read_closed_orders() {
    //create query
       $productQuery ="SELECT
              id,
              user_id,
              date_placed,
              date_served,
              amount_due, 
              amount_paid,
              status
              FROM tb_orders WHERE stage_status=2 ORDER BY id DESC";
   
             //prepare statement
             $stmt = $this->conn->prepare($productQuery);
             //binding param
            // $stmt->bindParam(1, $this->user_id);
              //execute query
              $stmt->execute();
   
              return $stmt;
   
   }
   
//Order status update
   public function orderStatusUpdate() {
    //create query
    $query = 'UPDATE tb_orders SET status = :status WHERE id = :id';
    //prepare statement
    $stmt = $this->conn->prepare($query);
    //clean data 
    $this->id                =htmlspecialchars(strip_tags($this->id));
    $this->status          =htmlspecialchars(strip_tags($this->status));
    
    //binding of paramters
    $stmt->bindParam(':id',$this->id);
    $stmt->bindParam(':status',$this->status);
    
    //execute the query
    if($stmt->execute()) {
        return true;
    }
    //print error if something goes wrong
    printf("Error %s. \n", $stmt->error);
    return false;
} 
//Order status update
   public function orderPaymentUpdate() {
    //create query
    $query = 'UPDATE tb_orders SET amount_paid = :payment WHERE id = :id';
    //prepare statement
    $stmt = $this->conn->prepare($query);
    //clean data 
    $this->id              =htmlspecialchars(strip_tags($this->id));
    $this->payment          =htmlspecialchars(strip_tags($this->payment));
    
    //binding of paramters
    $stmt->bindParam(':id',$this->id);
    $stmt->bindParam(':payment',$this->payment);
    
    //execute the query
    if($stmt->execute()) {
        return true;
    }
    //print error if something goes wrong
    printf("Error %s. \n", $stmt->error);
    return false;
}

// Get a single order
public function read_single_order() {
 //create query
    $productQuery ="SELECT
           id,user_id,date_placed,date_served,amount_due,amount_paid,status FROM tb_orders WHERE id = ?";

          //prepare statemen
          $stmt = $this->conn->prepare($productQuery);
          //binding param
          $stmt->bindParam(1, $this->id);
           //execute query
           $stmt->execute();

           $row = $stmt->fetch(PDO::FETCH_ASSOC);
            
           $this->id = $row['id'];
           $this->user_id = $row['user_id'];
           $this->date_placed = $row['date_placed'];
           $this->amount_due = $row['amount_due'];
           $this->amount_paid = $row['amount_paid'];
           $this->status = $row['status'];
        

}

// Get a single order address
public function read_single_order_address() {
 //create query
    $productQuery ="SELECT  id,phone_number,county_to_send,sub_county,city,postal_address,description,order_id FROM addresses WHERE order_id = ?";

          //prepare statemen
          $stmt = $this->conn->prepare($productQuery);
          //binding param
          $stmt->bindParam(1, $this->order_id);
           //execute query
           $stmt->execute();

           $row = $stmt->fetch(PDO::FETCH_ASSOC);
            
           $this->id = $row['id'];
           $this->phone_number = $row['phone_number'];
           $this->county_to_send = $row['county_to_send'];
           $this->sub_county = $row['sub_county'];
           $this->city = $row['city'];
           $this->postal_address = $row['postal_address'];
           $this->description = $row['description'];
        

}

//creating a new order
//Register new user
 public function addNewOrder() {
     //create query
    $userQuery = 'INSERT INTO tb_orders SET user_id = :user_id, date_placed = :date_placed, amount_due = :amount_due';
        //prepare statement
        $stmt = $this->conn->prepare($userQuery);

        //clean data
        $this->user_id        =htmlspecialchars(strip_tags($this->user_id ));
        $this->date_placed           =htmlspecialchars(strip_tags($this->date_placed ));
        $this->amount_due           =htmlspecialchars(strip_tags($this->amount_due ));

         //binding of paramters
        $stmt->bindParam(':user_id',$this->user_id);
        $stmt->bindParam(':date_placed',$this->date_placed);
        $stmt->bindParam(':amount_due',$this->amount_due);
        
        //execute the query
         if($stmt->execute()) {
             return true;
         }
        //print error if something goes wrong
        printf("Error %s. \n", $stmt->error);
            return false;
 }

}
?>