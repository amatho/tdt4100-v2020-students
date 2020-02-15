package folder;

public class File implements FSItem {
  private String name;

  public File(String name) {
    this.name = name;
  }

  @Override
  public boolean canHaveChildren() {
    return false;
  }

  @Override
  public String getName() {
    return name;
  }

}
