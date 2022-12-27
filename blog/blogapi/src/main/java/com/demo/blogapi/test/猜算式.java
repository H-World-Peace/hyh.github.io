package com.demo.blogapi.test;

/**
 * @author Cbo
 * @date 2022/11/20 0020 14:17
 */

import java.util.ArrayList;
import java.util.List;


public class 猜算式 {
    static List<String> lis=new ArrayList<String>();//结果1（有重复的结果）
    static List<String> lis2=new ArrayList<String>();//结果2（去重复后的结果）
    //初始化数组为1~9
    public static void init(int[] n){
        for(int i=0;i<9;i++)
            n[i]=i+1;
    }

    private static void print() {
        for(String s:lis2){
            String a=s.substring(0,2);
            String b=s.substring(2,4);
            String c=s.substring(4,6);
            String d=s.substring(6);
            System.out.println(a+"X"+b+"="+c+"X"+d);
        }
    }


    private static void fun() {
        int[] n=new int[9];
        init(n);//初始化数组为1~9
        allSort(n,0,n.length-1); //全排列测试
        removeDuplicate();//去重复元素
    }
    private static void removeDuplicate() {
        lis2.add(lis.get(0));
        for(int i=1;i<lis.size();i++){
            boolean flag=true;//标记是否重复
            for(int j=0;j<lis2.size();j++){
                flag=isDup(lis.get(i),lis2.get(j));//判断是否重复
                if(flag)break;//如果重复，直接跳出这层循环
            }
            if(!flag){
                lis2.add(lis.get(i));//不重复，则添加
            }
        }

    }

    private static boolean isDup(String s1, String s2) {
        String a1=s1.substring(0,2);
        String a2=s1.substring(2,4);
        String b1=s2.substring(0,2);
        String b2=s2.substring(2,4);
        if(a1.equals(b2)&&a2.equals(b1)){
            return true;
        }else {
            return false;
        }
    }

    private static void allSort(int[] n, int start, int end) {
        if(start==end){
            check(n);//检测结果，符合条件的输出
            return;
        }else{
            for(int i=start;i<=end;i++){
                int t=n[start];//交换元素
                n[start]=n[i];
                n[i]=t;
                //递归全排列
                allSort(n, start+1, end);
                t=n[start];//还原元素
                n[start]=n[i];
                n[i]=t;
            }
        }

    }

    private static void check(int[] n) {
        StringBuffer sb=new StringBuffer();
        for(int x:n){//数字数组转为字符串
            sb.append(x);
        }
        int a=Integer.parseInt(sb.substring(0,2).toString());
        int b=Integer.parseInt(sb.substring(2,4).toString());
        int c=Integer.parseInt(sb.substring(4,6).toString());
        int d=Integer.parseInt(sb.substring(6).toString());
        if(a*b==c*d){
            lis.add(sb.toString());//添加结果
        }
    }

    public static void main(String[] args) {
        fun();
        print();

    }




}

