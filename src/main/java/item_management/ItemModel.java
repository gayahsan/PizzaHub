package item_management;

public class ItemModel {
	private int itemID;
	private String itemName;
	private String itemDescription;
	private String itemCategory;
	private String itemPrice;
	private String itemImage;
	public int getItemID() {
		return itemID;
	}
	public void setItemID(int itemID) {
		this.itemID = itemID;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public String getItemDiscription() {
		return itemDescription;
	}
	public void setItemDiscription(String itemDiscription) {
		this.itemDescription = itemDiscription;
	}
	public String getItemCategory() {
		return itemCategory;
	}
	public void setItemCategory(String itemCategory) {
		this.itemCategory = itemCategory;
	}
	public String getItemPrice() {
		return itemPrice;
	}
	public void setItemPrice(String itemPrice) {
		this.itemPrice = itemPrice;
	}
	public String getItemImage() {
		return itemImage;
	}
	public void setItemImage(String itemImage) {
		this.itemImage = itemImage;
	}
	@Override
	public String toString() {
		return "ItemModel [itemID=" + itemID + ", itemName=" + itemName + ", itemDiscription=" + itemDescription
				+ ", itemCategory=" + itemCategory + ", itemPrice=" + itemPrice + ", itemImage=" + itemImage + "]";
	}
	public ItemModel(int itemID, String itemName, String itemDescription, String itemCategory, String itemPrice,
			String itemImage) {
		super();
		this.itemID = itemID;
		this.itemName = itemName;
		this.itemDescription = itemDescription;
		this.itemCategory = itemCategory;
		this.itemPrice = itemPrice;
		this.itemImage = itemImage;
	}
	public ItemModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
