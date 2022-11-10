package services;

//region Singleton (can do inheritance compared to static method)
public class DBConnection {
    private static DBConnection instance;

    private DBConnection() {
    }

    public static DBConnection getInstance() {
        if (instance == null) {
            instance = new DBConnection();
        }
        return instance;
    }
    //endregion
}