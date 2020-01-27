package encapsulation;

import java.util.regex.Pattern;
import java.util.EnumSet;
import java.util.function.Function;

enum VehicleType {
	Car('C'), Motorcycle('M');

	public char vehicleTypeChar;

	private VehicleType(char typeChar) {
		this.vehicleTypeChar = typeChar;
	}
}

enum FuelType {
	Hydrogen('H'), Electicity('E'), Diesel('D'), Gasoline('G');

	public char fuelTypeChar;

	private FuelType(char fuelChar) {
		this.fuelTypeChar = fuelChar;
	}
}

public class Vehicle {
	VehicleType vehicleType;
	FuelType fuelType;
	String registrationNumber;

	private static final Pattern carRegistrationPattern = Pattern.compile("[A-Z]{2}[0-9]{5}");
	private static final Pattern mcRegistrationPattern = Pattern.compile("[A-Z]{2}[0-9]{4}");

	public Vehicle(char type, char fuel, String registrationNumber) throws IllegalArgumentException {
		if (type == 'C')
			this.vehicleType = VehicleType.Car;
		else if (type == 'M')
			this.vehicleType = VehicleType.Motorcycle;
		else
			throw new IllegalArgumentException("'type' must be one of 'C' and 'M'");

		if (this.vehicleType == VehicleType.Car && fuel == 'H')
			this.fuelType = FuelType.Hydrogen;
		else if (fuel == 'E')
			this.fuelType = FuelType.Electicity;
		else if (fuel == 'D')
			this.fuelType = FuelType.Diesel;
		else if (fuel == 'G')
			this.fuelType = FuelType.Gasoline;
		else
			throw new IllegalArgumentException(
					"'fuel' must be one of 'H', 'E', 'D', and 'G'. Only cars can use hydrogen");

		if (!ValidateRegistrationNumber(registrationNumber))
			throw new IllegalArgumentException("Registration number is not valid");

		this.registrationNumber = registrationNumber;
	}

	public String getRegistrationNumber() {
		return registrationNumber;
	}

	public void setRegistrationNumber(String registrationNumber) throws IllegalArgumentException {
		if (!ValidateRegistrationNumber(registrationNumber))
			throw new IllegalArgumentException("Registration number is not valid");

		this.registrationNumber = registrationNumber;
	}

	public char getVehicleType() {
		return vehicleType.vehicleTypeChar;
	}

	public char getFuelType() {
		return fuelType.fuelTypeChar;
	}

	private boolean ValidateRegistrationNumber(String registrationNumber) {
		if (this.vehicleType == VehicleType.Car) {
			if (!carRegistrationPattern.matcher(registrationNumber).matches())
				return false;

			var letters = registrationNumber.substring(0, 2);

			if (EnumSet.of(FuelType.Diesel, FuelType.Gasoline).contains(this.fuelType)
					&& (letters.equals("EL") || letters.equals("EK") || letters.equals("HY")))
				return false;
			else if (this.fuelType == FuelType.Electicity && !(letters.equals("EL") || letters.equals("EK")))
				return false;
			else if (this.fuelType == FuelType.Hydrogen && !letters.equals("HY"))
				return false;
		} else {
			if (!mcRegistrationPattern.matcher(registrationNumber).matches())
				return false;

			var letters = registrationNumber.substring(0, 2);

			if (EnumSet.of(FuelType.Diesel, FuelType.Gasoline).contains(this.fuelType)
					&& (letters.equals("EL") || letters.equals("EK") || letters.equals("HY")))
				return false;
			else if (this.fuelType == FuelType.Electicity && !(letters.equals("EL") || letters.equals("EK")))
				return false;
		}

		return true;
	}
	
	public static void main(String[] args) {
		String a = "foo";
		String b = new String("foo");
		System.out.println(a.equals(b));
	}
}
