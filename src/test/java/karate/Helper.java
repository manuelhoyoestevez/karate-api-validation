package karate;

public class Helper {
    public static Boolean checkToken(String token) {
        /*
        TODO:
        - Decodificar
        - Comprobar datos
        - Comprobar firma
         */
        return token.length() > 5;
    }
}
