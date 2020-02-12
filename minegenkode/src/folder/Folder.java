package folder;

public class Folder {
  private Folder parent;
  private String value;
  private LazyList<Folder> children = new LazyList<>();

  public Folder(String value) {
    this.value = value;
  }

  public Folder addChild(String child) {
    var childNode = new Folder(child);
    childNode.parent = this;
    children.add(childNode);
    return childNode;
  }
  
  public String getValue() {
    return value;
  }
  
  public boolean isRoot() {
    return parent == null;
  }
  
  public void moveTo(Folder folder) {
    if (folder.hasIndirectParent(this)) {
      throw new IllegalArgumentException("Cannot move a folder to any of it's children");
    }
    
    parent = folder;
  }
  
  public String getPath() {
    if (isRoot()) {
      return "/" + value;
    }
    
    return parent.getPath() + "/" + value;
  }
  
  private boolean hasIndirectParent(Folder folder) {
    if (isRoot()) {
      return false;
    }
    
    if (parent == folder) {
      return true;
    }
    
    return parent.hasIndirectParent(folder);
  }
  
  public static void main(String[] args) {
    var home = new Folder("home");
    var doc = home.addChild("documents");
    home.addChild("pictures");
    var d = home.addChild("downloads");
    var y = d.addChild("yeet");
    y.moveTo(doc);
    
    System.out.println(y.getPath());
  }
}
