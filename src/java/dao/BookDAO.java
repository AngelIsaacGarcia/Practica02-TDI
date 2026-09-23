package dao;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;
import java.util.stream.Collectors;

import model.Book;

public class BookDAO {
    
    private static List<Book> books = new ArrayList<>();
    
    static {
        books.add(new Book("Cien años de soledad", "Gabriel García Márquez", 360.00));
        books.add(new Book("La muerte del comendador", "Haruki Murakami", 280.00));
        books.add(new Book("La invención de la soledad", "Paul Auster", 230.00));
        books.add(new Book("Noches Blancas", "Fiódor Dostoyevski", 320.00));
        books.add(new Book("Kafka en la orilla", "Haruki Murakami", 310.00));
        books.add(new Book("La metamorfosis", "Franz Kafka", 270.00));
    }

    public void addBook(Book book) {
        books.add(book);
    }
    
    public List<Book> getAllBooks() {
        return books;
    }
    

    public List<Book> filterBooks(String name, String author, double minPrice, double maxPrice) {

        return books.stream()
                .filter(nameFilter(name))
                .filter(authorFilter(author))
                .filter(priceFilter(minPrice, maxPrice))
                .collect(Collectors.toList());
    }

    private Predicate<Book> nameFilter(String name) {
        if (name == null || name.trim().isEmpty()) {
            return book -> true;
        }
        return book -> book.getName().toLowerCase().contains(name.toLowerCase());
    }

    private Predicate<Book> authorFilter(String author) {
        if (author == null || author.trim().isEmpty()) {
            return book -> true;
        }
        
        return book -> book.getAuthor().toLowerCase().contains(author.toLowerCase());
    }

    private Predicate<Book> priceFilter(double minPrice, double maxPrice) {

        if(minPrice == 0 || maxPrice == Double.MAX_VALUE) {
            return book -> true;
        }

        return book -> book.getPrice() <= maxPrice && book.getPrice() >= minPrice;

    }
}
