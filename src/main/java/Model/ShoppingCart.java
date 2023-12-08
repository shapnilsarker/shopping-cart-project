package Model;
public class ShoppingCart {
    int id;
    int productId;
    int buyerId;
    int quantity;
    String date;

    public ShoppingCart(int productId, int buyerId, int quantity, String date) {
        this.productId = productId;
        this.buyerId = buyerId;
        this.quantity = quantity;
        this.date = date;
    }

    public ShoppingCart(int id, int productId, int buyerId, int quantity, String date) {
        this.id = id;
        this.productId = productId;
        this.buyerId = buyerId;
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
