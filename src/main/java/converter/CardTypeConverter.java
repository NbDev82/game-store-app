/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package converter;

import com.myproject.game.store.app.v1.resources.model.enums.EMethod;

/**
 *
 * @author Van Hoang
 */
public class CardTypeConverter {
    public static EMethod convertToEMethod(String cardType) {
        EMethod result = null;
        for (EMethod method : EMethod.values()) {
            if (method.name().equalsIgnoreCase(cardType)) {
                result = method;
                break;
            }
        }
        return result;
    }
}
