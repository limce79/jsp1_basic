package project.vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.ToString;

@Getter
@AllArgsConstructor
@EqualsAndHashCode
@ToString
public class CustomerBuyVo {
    private int buy_idx;
    private String pcode;
    private String pname;
    private int price;
    private int quantity;
    private Timestamp buy_date;
}
