package Model;

public class Seller extends User{
    int id;
    String contact;
    double balance;

    public Seller() {
    }

    public Seller(int id, String contact, double balance) {
        this.id = id;
        this.contact = contact;
        this.balance = balance;
    }

    public Seller(int id, String name, String email, int id1, String contact, double balance) {
        super(id, name, email);
        this.id = id1;
        this.contact = contact;
        this.balance = balance;
    }

    @Override
    public int getId() {
        return id;
    }

    @Override
    public void setId(int id) {
        this.id = id;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }
}
