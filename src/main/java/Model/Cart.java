package Model;

public class Cart {
    int id;
    int seller_id;
    String name;
    Double price;
    String category;
    int quantity;

     public Cart(Product product) {
        this.id = product.getId();
        this.seller_id = product.getSeller_id();
        this.name = product.getName();
        this.price = product.getPrice();
        this.category = product.getCategory();
        this.quantity = 1;
    }
    public Cart(int id, int seller_id, String name, Double price, String category, int quantity) {
        this.id = id;
        this.seller_id = seller_id;
        this.name = name;
        this.price = price;
        this.category = category;
        this.quantity = quantity;
    }

    
    public Cart(int seller_id, String name, Double price, String category, int quantity) {
        this.seller_id = seller_id;
        this.name = name;
        this.price = price;
        this.category = category;
        this.quantity = quantity;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getSeller_id() {
        return seller_id;
    }

    public void setSeller_id(int seller_id) {
        this.seller_id = seller_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
    
}
