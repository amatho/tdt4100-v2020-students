package folder;

import java.util.Optional;

public class FSNode {
  private Optional<FSNode> parent = Optional.empty();
  private FSItem value;
  private LazyList<FSNode> children = new LazyList<>();

  public FSNode(FSItem value) {
    this.value = value;
  }

  public FSNode addChild(FSItem child) {
    if (!value.canHaveChildren()) {
      throw new IllegalStateException("Cannot add children to this FSItem");
    }

    var childNode = new FSNode(child);
    childNode.parent = Optional.of(this);
    children.add(childNode);
    return childNode;
  }

  public boolean canAddChild() {
    return value.canHaveChildren();
  }

  public FSItem getValue() {
    return value;
  }

  public void moveTo(FSNode node) {
    if (!node.canAddChild()) {
      throw new IllegalArgumentException("Cannot move to a FSItem that can't have children");
    } else if (node.hasIndirectParent(this)) {
      throw new IllegalArgumentException("Cannot move a folder to any of it's children");
    }

    parent = Optional.of(node);
  }

  public String getPath() {
    return parent.map(p -> p.getPath() + "/" + value.getName()).orElse("/" + value.getName());
  }

  private boolean hasIndirectParent(FSNode node) {
    if (parent.isEmpty()) {
      return false;
    }

    return parent.filter(p -> p != node).map(p -> p.hasIndirectParent(node)).orElse(true);
  }

  public static void main(String[] args) {
    var home = new FSNode(new Folder("home"));
    var doc = home.addChild(new Folder("documents"));
    home.addChild(new Folder("pictures"));
    var d = home.addChild(new Folder("downloads"));
    var y = d.addChild(new File("yeet"));
    y.moveTo(doc);

    System.out.println(y.getPath());
  }
}
