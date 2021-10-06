<?php
class Product {
    //database declarations
    public $conn;

    //product properties
    public $category;
    public $sub_category;
    public $title;
    public $description;
    public $price;
    public $quantity;
    public $image;
    public $id;
    public $short_desc;
    public $sub_id;
    public $mfr_part;
    public $manufacturer;
    public $package;
    public $packaging;
    public $page;

    //constructor with db connection
     public function __construct($db) {
         $this->conn = $db;
     }

     // getting products from db
     public function getAllProducts(){
         // query
        $productsQuery ='SELECT 
           c.title as category,
           sc.name as sub_category,
           p.title as name,
           p.description,
           p.price,
           p.quantity,
           p.image,
           p.id
           FROM
           products p
           JOIN
           sub_categories sc ON p.sub_id = sc.id
           JOIN
           categories c ON sc.cat_id = c.id 
            LIMIT ?,16';

           //prepare statement
           $stmt = $this->conn->prepare($productsQuery);
           //binding param
          $stmt->bindParam(1, $this->page);
           //execute query
           $stmt->execute();

           return $stmt;
     }

     // getting single product from database
 public function read_single_product() {
    //create query
    $productQuery ='SELECT 
           c.title as category,
           sc.name as sub_category,
           p.title as name,
           p.description,
           p.price,
           p.quantity,
           p.image,
           p.id,
           p.short_desc,
           p.mfr_part,
           p.manufacturer,
           p.packaging
           FROM
            products p
           JOIN
           sub_categories sc ON p.sub_id = sc.id
           JOIN
           categories c ON sc.cat_id = c.id WHERE p.id= ? ';

          //prepare statement
          $stmt = $this->conn->prepare($productQuery);
          //binding param
          $stmt->bindParam(1, $this->id);
           //execute query
           $stmt->execute();

           $row = $stmt->fetch(PDO::FETCH_ASSOC);

           $this->name = $row['name'];
           $this->category = $row['category'];
           $this->sub_category = $row['sub_category'];
           $this->description = $row['description'];
           $this->quantity = $row['quantity'];
           $this->price = $row['price'];
           $this->image = $row['image'];
           $this->short_desc= $row['short_desc'];
           $this->mfr_part= $row['mfr_part'];
           $this->manufacturer= $row['manufacturer'];
           $this->packaging = $row['packaging'];
}

 public function productsCounter(){
         // query
        $productsQuery ='SELECT * FROM  products';

           //prepare statement
           $stmt = $this->conn->prepare($productsQuery);
           //execute query
           $stmt->execute();

           return $stmt;
     }

// getting single product from database
public function read_product_category() {
    //create query
    $productQuery ="SELECT 
           c.title as category,
           sc.name as sub_category,
           p.title as name,
           p.description,
           p.price,
           p.quantity,
           p.image,
           p.id
           FROM
          products p
           JOIN
           sub_categories sc ON p.sub_id = sc.id
           JOIN
           categories c ON sc.cat_id = c.id WHERE c.title LIKE  '%$this->cat%' OR p.title LIKE '%$this->cat%'";

          //prepare statement
          $stmt = $this->conn->prepare($productQuery);
          //binding param
          $stmt->bindParam(1, $this->cat);
           //execute query
           $stmt->execute();

           return $stmt;

}

// function to update product quantity
public function updateQuantity() {
    //create query
    $query = 'UPDATE products SET quantity = :quantity WHERE id = :id';
    //prepare statement
    $stmt = $this->conn->prepare($query);
    //clean data 
    $this->id                =htmlspecialchars(strip_tags($this->id));
    $this->quantity          =htmlspecialchars(strip_tags($this->quantity));
    
    //binding of paramters
    $stmt->bindParam(':id',$this->id);
    $stmt->bindParam(':quantity',$this->quantity);
    
    //execute the query
    if($stmt->execute()) {
        return true;
    }
    //print error if something goes wrong
    printf("Error %s. \n", $stmt->error);
    return false;
}

public function registerProduct() {
  $prodQuery = 'INSERT INTO products SET  title =:title, image =:image,description =:description, price =:price, quantity =:quantity, short_desc =:short_desc, sub_id =:sub_id, mfr_part =:mfr_part, manufacturer =:manufacturer, package =:package, packaging =:packaging';
        //prepare statement
        $stmt = $this->conn->prepare($prodQuery);

        //clean data
        $this->title               =htmlspecialchars(strip_tags($this-> title));
        $this->image               =htmlspecialchars(strip_tags($this-> image));
        $this->description               =htmlspecialchars(strip_tags($this-> description));
        $this->price               =htmlspecialchars(strip_tags($this-> price));
        $this->quantity               =htmlspecialchars(strip_tags($this-> quantity));
        $this->short_desc               =htmlspecialchars(strip_tags($this-> short_desc));
        $this->sub_id               =htmlspecialchars(strip_tags($this-> sub_id));
        $this->mfr_part               =htmlspecialchars(strip_tags($this-> mfr_part));
        $this->manufacturer               =htmlspecialchars(strip_tags($this-> manufacturer));
        $this->package               =htmlspecialchars(strip_tags($this-> package));
        $this->packaging               =htmlspecialchars(strip_tags($this-> packaging));
        
         //binding of paramters
        $stmt->bindParam(':title',$this->title);
        $stmt->bindParam(':image',$this->image);
        $stmt->bindParam(':description',$this->description);
        $stmt->bindParam(':price',$this->price);
        $stmt->bindParam(':quantity',$this->quantity);
        $stmt->bindParam(':short_desc',$this->short_desc);
        $stmt->bindParam(':sub_id',$this->sub_id);
        $stmt->bindParam(':mfr_part',$this->mfr_part);
        $stmt->bindParam(':manufacturer',$this->manufacturer);
        $stmt->bindParam(':package',$this->package);
        $stmt->bindParam(':packaging',$this->packaging);
       
        
    
        //execute the query
         if($stmt->execute()) {
             return true;
         }
        //print error if something goes wrong
        printf("Error %s. \n", $stmt->error);
            return false;
}

//Editing product details
public function editProduct(){
   //create query
    $query = 'UPDATE products SET title = :name,image = :image,description = :description,price = :price, quantity = :quantity,short_desc = :short_desc,mfr_part = :mfr_part,manufacturer = :manufacturer, packaging = :packaging WHERE id = :id';
    //prepare statement
    $stmt = $this->conn->prepare($query);
    //clean data 
    $this->id                 =htmlspecialchars(strip_tags($this->id));
    $this->name               =htmlspecialchars(strip_tags($this->name));
    $this->image               =htmlspecialchars(strip_tags($this->image));
    $this->description        =htmlspecialchars(strip_tags($this->description));
    $this->price              =htmlspecialchars(strip_tags($this->price));
    $this->quantity           =htmlspecialchars(strip_tags($this->quantity));
    $this->short_desc         =htmlspecialchars(strip_tags($this->short_desc));
    $this->mfr_part           =htmlspecialchars(strip_tags($this->mfr_part));
    $this->manufacturer       =htmlspecialchars(strip_tags($this->manufacturer));
    $this->packaging          =htmlspecialchars(strip_tags($this->packaging));
  
    
   //binding of paramters
    $stmt->bindParam(':id',$this->id);
    $stmt->bindParam(':name',$this->name);
    $stmt->bindParam(':image',$this->image);
    $stmt->bindParam(':description',$this->description);
    $stmt->bindParam(':price',$this->price);
    $stmt->bindParam(':quantity',$this->quantity);
    $stmt->bindParam(':short_desc',$this->short_desc);
    $stmt->bindParam(':mfr_part',$this->mfr_part);
    $stmt->bindParam(':manufacturer',$this->manufacturer);
    $stmt->bindParam(':packaging',$this->packaging);
    
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