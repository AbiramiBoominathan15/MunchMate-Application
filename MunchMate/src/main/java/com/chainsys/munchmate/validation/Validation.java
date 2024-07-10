package com.chainsys.munchmate.validation;

public class Validation {

    public boolean validatePhoneNumber(String phoneNumber) {
        return phoneNumber != null && phoneNumber.matches("\\d{10}");
    }

    public boolean validatePassword(String password) {
        return password != null && password.length() >= 6;
    }

    public boolean validateEmail(String mailId) {
        return mailId != null && mailId.matches("[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}");
    }

    public boolean validateAllFields(String phoneNumber, String password, String mailId) {
        return validatePhoneNumber(phoneNumber) && validatePassword(password) && validateEmail(mailId);
    }
    
    public boolean validateHotelPhoneNumber(String phoneNumber) {
        return phoneNumber != null && phoneNumber.matches("\\d{10}");
    }

    public boolean validateHotelEmail(String mailId) {
        return mailId != null && mailId.matches("[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}");
    }

    public boolean validateHotelPassword(String password) {
        return password != null && password.length() >= 6;
    }

    public boolean validateHotelStatus(String status) {
        return status != null && (status.equalsIgnoreCase("Active") || status.equalsIgnoreCase("Inactive"));
    }

    public boolean validateAllFields(String phoneNumber, String email, String password, String status) {
        return validateHotelPhoneNumber(phoneNumber) && validateHotelEmail(email)
                && validateHotelPassword(password) && validateHotelStatus(status);
    }

public boolean validateFoodPrice(int price) {
    return price > 0;
}

public boolean validateFoodQuantity(int quantity) {
    return quantity > 0;
}

public boolean validateFoodSession(String session) {
    return session != null && (session.equalsIgnoreCase("Breakfast")
            || session.equalsIgnoreCase("Lunch")
            || session.equalsIgnoreCase("Dinner"));
}

public boolean validateFoodAvailability(String availability) {
    return availability != null && (availability.equalsIgnoreCase("Available")
            || availability.equalsIgnoreCase("Unavailable"));
}

public boolean validateAllFields(int price, int quantity, String session, String availability) {
    return validateFoodPrice(price) && validateFoodQuantity(quantity)
            && validateFoodSession(session) && validateFoodAvailability(availability);
}
public boolean validateFoodName(String foodName) {
    return foodName != null && !foodName.trim().isEmpty();
}

public boolean validateFoodImage(byte[] foodImage) {
    return foodImage != null && foodImage.length > 0;
}

public boolean validateQuantity(int quantity) {
    return quantity > 0;
}

public boolean validateHotelId(int hotelId) {
    return hotelId > 0;
}

public boolean validateCartItemId(int cartItemId) {
    return cartItemId > 0;
}

public boolean validateUserId(int userId) {
    return userId > 0;
}

public boolean validateFoodId(int foodId) {
    return foodId > 0;
}

public boolean validateTotalPrice(double totalPrice) {
    return totalPrice > 0;
}

public boolean validateFoodSession1(String foodSession) {
    return foodSession != null && (foodSession.equalsIgnoreCase("Breakfast")
            || foodSession.equalsIgnoreCase("Lunch")
            || foodSession.equalsIgnoreCase("Dinner"));
}

public boolean validateOverAllPrice(double overAllPrice) {
    return overAllPrice >= 0;
}

public boolean validateAllFields(String foodName, byte[] foodImage, int quantity, int hotelId, int cartItemId,
        int userId, int foodId, double totalPrice, String foodSession, double overAllPrice) {
return validateFoodName(foodName) && validateFoodImage(foodImage) && validateQuantity(quantity)
&& validateHotelId(hotelId) && validateCartItemId(cartItemId) && validateUserId(userId)
&& validateFoodId(foodId) && validateTotalPrice(totalPrice) && validateFoodSession(foodSession)
&& validateOverAllPrice(overAllPrice);
}

}



