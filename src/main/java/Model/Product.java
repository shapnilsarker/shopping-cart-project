package Model;

public class Product {
    int id;
    int seller_id;
    String name;
    String description;
    Double price;
    Double shipmentCharges;
    String pictureFile;
    String category;
    int quantity;

    public Product(int seller_id, String name, String description, Double price, Double shipmentCharges, String pictureFile, String category, int quantity) {
        this.seller_id = seller_id;
        this.name = name;
        this.description = description;
        this.price = price;
        this.shipmentCharges = shipmentCharges;
        this.pictureFile = pictureFile;
        this.category = category;
        this.quantity = quantity;
    }

    public Product(int id, int seller_id, String name, String description, Double price, Double shipmentCharges, String pictureFile, String category, int quantity) {
        this.id = id;
        this.seller_id = seller_id;
        this.name = name;
        this.description = description;
        this.price = price;
        this.shipmentCharges = shipmentCharges;
        this.pictureFile = pictureFile;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Double getShipmentCharges() {
        return shipmentCharges;
    }

    public void setShipmentCharges(Double shipmentCharges) {
        this.shipmentCharges = shipmentCharges;
    }

    public String getPictureFile() {
        return pictureFile;
    }

    public void setPictureFile(String pictureFile) {
        this.pictureFile = pictureFile;
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
