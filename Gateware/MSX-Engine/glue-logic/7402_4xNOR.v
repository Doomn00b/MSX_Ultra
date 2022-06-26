module 7402_4xNOR(
    input 1A, 1B, 2A, 2B, 3A, 3B, 4A, 4B, output 1Y, 2Y 3Y, 4Y)
    nor(Y1, (1A, 1B));
    nor(Y2, (2A, 2B));
    nor(Y3, (3A, 3B));
    nor(Y4, (4A, 4B));
endmodule