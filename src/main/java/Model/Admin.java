package Model;

public class Admin extends User{

    String position;

    public Admin() {
    }

    public Admin(int id, String name, String email) {
        super(id, name, email);
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }
}
