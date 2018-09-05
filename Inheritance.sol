pragma solidity ^0.4.0;

contract Vehicle{
    string internal color;
    
    function getColor() external returns (string){
        return color;
    }
}

contract Car is Vehicle{
    function Car(string colorValue){
        color = colorValue;
    }
}

contract Client{
    function getClient() returns (string){
        Car car = new Car("Yellow");
        return car.getColor();
    }
}
