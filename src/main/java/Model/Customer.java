package Model;

public class Customer extends User{
    int id;
    String contactNo;
    String address;

    public Customer() {
    }

    public Customer(int id, String contactNo, String address) {
        this.id = id;
        this.contactNo = contactNo;
        this.address = address;
    }

    public Customer(int id, String name, String email, int id1, String contactNo, String address) {
        super(id, name, email);
        this.id = id1;
        this.contactNo = contactNo;
        this.address = address;
    }

    @Override
    public int getId() {
        return id;
    }

    @Override
    public void setId(int id) {
        this.id = id;
    }

    public String getContactNo() {
        return contactNo;
    }

    public void setContactNo(String contactNo) {
        this.contactNo = contactNo;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
