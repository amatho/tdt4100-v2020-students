package app;

import java.io.IOException;

public interface TodoStorage {
    public void save(Todo[] todos) throws IOException;

    public Todo[] load() throws IOException;
}
