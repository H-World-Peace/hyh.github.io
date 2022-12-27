package com.demo.blogapi.test;

import java.util.ArrayList;
import java.util.List;

/**
 * @author Cbo
 * @date 2022/11/21 0021 15:03
 */
public class 猜算式3 {


    public static void main(String[] args) {

        List list = new ArrayList();
        //初始时间
        long startTime = System.currentTimeMillis();
        for (int a = 1; a <= 9; a++) {
            for (int b = 1; b <= 9; b++) {
                for (int c = 1; c <= 9; c++) {
                    for (int d = 1; d <= 9; d++) {
                        for (int e = 1; e <= 9; e++) {
                            for (int f = 1; f <= 9; f++) {
                                for (int g = 1; g <= 9; g++) {
                                    for (int h = 1; h <= 9; h++) {
                                        for (int i = 1; i <= 9; i++) {
                                            if (a == b || a == c || a == d || a == e || a == f || a == g || a == h || a == i || b == c || b == d || b == e || b == f || b == g || b == h || b == i)
                                                continue;
                                            else if (c == d || c == e || c == f || c == g || c == h || c == i || d == e || d == f || d == g || d == h || d == i || e == f || e == g || e == h || e == i || f == g || f == h || f == i || g == h || g == i || h == i)
                                                continue;
                                            if ((a * 10 + b) * (c * 10 + d) == (e * 10 + f) * (g * 100 + h * 10 + i))

                                                System.out.format("%d x %d = %d x %d\n", a * 10 + b, c * 10 + d, e * 10 + f, g * 100 + h * 10 + i);
                                        }

                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        long endTime = System.currentTimeMillis();
        //打印
        System.out.println("程序运行时间：" + (endTime - startTime) + "ms");

    }

}


