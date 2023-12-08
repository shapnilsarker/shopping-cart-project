package Model;

public class Order {
    int id;
    int productId;
    int buyerId;
    int SellerId;
    int quantity;
    String date;
    String name;
    Double price;

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

    public Order(int productId, int buyerId, int SellerId, String name, Double price, int quantity, String date) {
        this.productId = productId;
        this.buyerId = buyerId;
        this.SellerId = SellerId;
        this.quantity = quantity;
        this.date = date;
        this.name = name;
        this.price = price;
    }

    public Order(int productId, int buyerId, int sellerId, int quantity, String date) {
        this.productId = productId;
        this.buyerId = buyerId;
        SellerId = sellerId;
        this.quantity = quantity;
        this.date = date;
    }

    public Order(int id, int productId, int buyerId, int sellerId, int quantity, String date) {
        this.id = id;
        this.productId = productId;
        this.buyerId = buyerId;
        SellerId = sellerId;
        this.quantity = quantity;
        this.date = date;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getBuyerId() {
        return buyerId;
    }

    public void setBuyerId(int buyerId) {
        this.buyerId = buyerId;
    }

    public int getSellerId() {
        return SellerId;
    }

    public void setSellerId(int sellerId) {
        SellerId = sellerId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
}
