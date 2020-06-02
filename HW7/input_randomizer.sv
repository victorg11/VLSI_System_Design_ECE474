class input_data;
rand bit[31:0] dataA;
rand bit[31:0] dataB;

constraint rangeA {dataA <= 500;} //A must be less than 500
constraint positB {dataB >= 0;} //value B must be positive
constraint sum {dataA + dataB == 500;} //sum must be 500

endclass
