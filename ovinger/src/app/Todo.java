package app;

import java.util.UUID;

public class Todo {
    private UUID id;
    private String name;
    private String description;

    public Todo(String name, String description) {
	if (name.isBlank()) {
	    throw new IllegalArgumentException("Todo name cannot be blank");
	}

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
    public boolean equals(Object o) {
	if (o instanceof Todo) {
	    return id.equals(((Todo) o).id);
	}

	return false;
    }

    @Override
    public String toString() {
	return String.format("Id: %s Name: %s Description: %s", id, name, description);
    }
}
