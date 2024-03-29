package folder;

public class Folder implements FSItem {
  private String name;

  public Folder(String name) {
    this.name = name;
  }

  @Override
  public boolean canHaveChildren() {
    return true;
  }

  @Override
  public String getName() {
    return name;
  }
}
