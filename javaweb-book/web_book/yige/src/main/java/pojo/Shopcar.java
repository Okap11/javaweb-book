package pojo;

public class Shopcar {
    private int id;
    private int userid;
    private String name;
    private int price;
    private String Abstract;
    private String author;
    private String img;
    private int checked;
    private int number;
    private int[] deleteArr;

    public int[] getDeleteArr() {
        return deleteArr;
    }

    public void setDeleteArr(int[] deleteArr) {
        this.deleteArr = deleteArr;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getChecked() {
        return checked;
    }

    public void setChecked(int checked) {
        this.checked = checked;
    }

    @Override
    public String toString() {
        return "Shopcar{" +
                "id=" + id +
                ", userid=" + userid +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", Abstract='" + Abstract + '\'' +
                ", author='" + author + '\'' +
                ", img='" + img + '\'' +
                ", checked=" + checked +
                ", number=" + number +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getAbstract() {
        return Abstract;
    }

    public void setAbstract(String anAbstract) {
        Abstract = anAbstract;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }
}
