package com.greedystar.generator.application;

import com.greedystar.generator.invoker.Many2ManyInvoker;
import com.greedystar.generator.invoker.One2ManyInvoker;
import com.greedystar.generator.invoker.SingleInvoker;
import com.greedystar.generator.invoker.base.Invoker;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Author GreedyStar
 * Date   2018/9/5
 */
public class Main {

    public static void main(String[] args) {
        single();
    }

    public static void many2many() {
        Invoker invoker = new Many2ManyInvoker.Builder()
                .setTableName("user")
                .setClassName("User")
                .setParentTableName("role")
                .setParentClassName("Role")
                .setRelationTableName("user_role")
                .setForeignKey("userId")
                .setParentForeignKey("roleId")
                .build();
        invoker.execute();
    }

    public static void one2many() {
        Invoker invoker = new One2ManyInvoker.Builder()
                .setTableName("user")
                .setClassName("User")
                .setParentTableName("office")
                .setParentClassName("Office")
                .setForeignKey("officeId")
                .build();
        invoker.execute();
    }

    public static void single() {

//        t_borrow_amount
//
//        t_product_amount

        List<Map> list=new ArrayList();











        Map map=null;
        map=new HashMap();
        map.put("tableName","t_amount_event");
        map.put("beanName","AmountEvent");
        list.add(map);        map=new HashMap();
        map.put("tableName","t_borrow_amount");
        map.put("beanName","BorrowAmount");
        list.add(map);

        map=new HashMap();
        map.put("tableName","t_borrow_amount_detail");
        map.put("beanName","BorrowAmountDetail");
        list.add(map);

        map=new HashMap();
        map.put("tableName","t_borrow_protocol_amount");
        map.put("beanName","BorrowProtocolAmount");
        list.add(map);

        map=new HashMap();
        map.put("tableName","t_credit_amount");
        map.put("beanName","CreditAmount");
        list.add(map);        map=new HashMap();
        map.put("tableName","t_product_amount");
        map.put("beanName","ProductAmount");
        list.add(map);        map=new HashMap();
        map.put("tableName","t_product_amount_detail");
        map.put("beanName","ProductAmountDetail");
        list.add(map);        map=new HashMap();
        map.put("tableName","t_product_protocol_amount");
        map.put("beanName","ProductProtocolAmount");
        list.add(map);        map=new HashMap();
        map.put("tableName","t_product_protocol_attr");
        map.put("beanName","ProductProtocolAttr");
        list.add(map);

        for (Map o : list) {
            Invoker invoker = new SingleInvoker.Builder()
                    .setTableName(o.get("tableName")+"")
                    .setClassName(o.get("beanName")+"").build();
            invoker.execute();
        }

    }

}
