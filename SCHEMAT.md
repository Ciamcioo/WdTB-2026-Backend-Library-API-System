# Schemat bazy danych

Plik generują reguły projektu (panel Maven → Lifecycle → verify). Nie edytujcie go ręcznie.

Tabele: 7 (w tym tabele łączące @ManyToMany: book_rent) · kolumny: 34 · relacje: 3 × @ManyToOne, 2 × @OneToMany, 1 × @OneToOne, 2 × @ManyToMany

| Tabela | Encja | Kolumny | Klucze obce |
|---|---|---|---|
| author | Author | 5 | — |
| book | Book | 6 | author_id |
| library_card | LibraryCard | 5 | location_id, user_id |
| location | Location | 8 | — |
| rent | Rent | 5 | user_id |
| user_account | UserAccount | 5 | — |

```mermaid
erDiagram
    author {
        Long id PK
        LocalDate birth_date
        LocalDate death_date
        String first_name
        String last_name
    }
    book {
        Long isbn PK
        Long author_id FK
        Long pages
        Integer publish_year
        String title
        Type type
    }
    library_card {
        Long id PK
        LocalDate expiring_date
        LocalDate issue_date
        Long location_id FK
        Long user_id FK
    }
    location {
        Long id PK
        String city
        String close_hour
        String name
        String postal_code
        String province
        String start_hour
        String street
    }
    rent {
        Long id PK
        LocalDate end_date
        Boolean is_returned
        LocalDate start_date
        Long user_id FK
    }
    user_account {
        Long id PK
        LocalDateTime created_at
        String display_name
        String email
        AccountRole role
    }
    author ||--o{ book : "author_id"
    location |o--o{ library_card : "location_id"
    rent }o--o{ book : "book_rent"
    user_account |o--o{ rent : "user_id"
    user_account ||--o| library_card : "user_id"
```
