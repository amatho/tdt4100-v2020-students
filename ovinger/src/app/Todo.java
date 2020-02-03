package app;

import java.util.UUID;

public class Todo {
  private UUID id;
  private String name;
  private String description;
  
  public Todo(String name, String description) {
    id = UUID.randomUUID();
    this.name = name;
    this.description = description;
  }
  
  public UUID getId() {
    return id;
  }
  
  public String getName() {
    return name;
  }
  
  public String getDescription() {
    return description;
  }
  
  @Override
  public String toString() {
    return String.format("Id: %s Name: %s Description: %s", id, name, description);
  }
}
