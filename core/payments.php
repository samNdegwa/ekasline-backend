<?php
class Payment {
public $id;
public $order_id;
public $amount;
public $reference;
public $payment_mode;
public $created_date;
public $userId;

 //constructor with db connection
  public function __construct($db) {
         $this->conn = $db;
    }
    //create payment function
    public function createPayment() {
        $payQuery = 'INSERT INTO payments SET  order_id = :order_id, amount = :amount, reference = :reference, payment_mode =:payment_mode, created_date =:created_date';
        //prepare statement
        $stmt = $this->conn->prepare($payQuery);

        //clean data
        $this->order_id               =htmlspecialchars(strip_tags($this-> order_id));
        $this->amount                 =htmlspecialchars(strip_tags($this-> amount));
        $this->reference              =htmlspecialchars(strip_tags($this-> reference));
        $this->payment_mode           =htmlspecialchars(strip_tags($this-> payment_mode));
        $this->created_date           =htmlspecialchars(strip_tags($this-> created_date));
       
         //binding of paramters
       // $stmt->bindParam(':id',$this->id);
        $stmt->bindParam(':order_id',$this->order_id);
        $stmt->bindParam(':amount',$this->amount);
        $stmt->bindParam(':reference',$this->reference);
        $stmt->bindParam(':payment_mode',$this->payment_mode);
        $stmt->bindParam(':created_date',$this->created_date);
        
    
        //execute the query
         if($stmt->execute()) {
             return true;
         }
        //print error if something goes wrong
        printf("Error %s. \n", $stmt->error);
            return false;
        
    }

    //payments from an order
    public function getOrderPayments() {
    	 //create query
    $payQuery ="SELECT id, order_id, amount, reference, payment_mode, created_date FROM payments WHERE order_id = ? ";

          //prepare statement
          $stmt = $this->conn->prepare($payQuery);
          //binding param
          $stmt->bindParam(1, $this->order_id);
           //execute query
           $stmt->execute();

           return $stmt;
    }

    //payments from user
    public function getUserPayments() {
       //create query
    $payQuery ="SELECT id, order_id, amount, reference, payment_mode, created_date FROM payments WHERE userId = ? ORDER BY id DESC ";

          //prepare statement
          $stmt = $this->conn->prepare($payQuery);
          //binding param
          $stmt->bindParam(1, $this->userId);
           //execute query
           $stmt->execute();

           return $stmt;
    }

}
?>