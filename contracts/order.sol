// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/** 
 * @title Ballot
 * @dev Implements voting process along with vote delegation
 */
contract order {
    
    // seller's address (thread inc)
    address public seller;
    
    // buyer's address (beach tshirts)
    address public buyer;
    
    struct order_details{
        address buyer;
        uint qty;
        string size;
        string product_name;
    }
    
    struct order_accept{
        uint order_no;
        uint cost;
        string order_status;
    }
    
    struct payment_details{
        string pay_status;
    }
    
    mapping (address => order_details) buyer_order;
    mapping (address => order_accept) seller_confirm;
    mapping (address => payment_details) paydone;
    
    
    event gen_order (address buyer, string product_name, uint qty, string size);
    
    event seller_accept(address buyer, uint order_no, string order_status, uint _cost);
    
    event payment_status(address buyer, string pay_status);
    
    function make_order(address _buyer, string _product_name, uint _qty, string _size){
        var order = buyer_order[_buyer];
        
        order.product_name = _product_name;
        order.qty = _qty;
        order.size = _size;
        
        emit gen_order(msg.sender, product_name, qty, size);
    }
    
    function validate_order(address _buyer, string _order_no, string order_status, uint _cost, uint qty){
        var o_stat = seller_confirm[_buyer];
        
        uint _cost = (qty * 250);
        uint _order_no = 00546347; //random no
        
        o_stat.cost = _cost;
        o_stat.order_status = "Confirm";
        o_stat.order_no = _order_no;
        
        emit seller_accept(msg.sender, order_no, order_status, cost);
        
    }
    
    function payemnt(address _buyer, string _pay_status){
        var pay = paydone[_buyer];
        
        pay.pay_status = _pay_status;
        
        emit payment_status(msg.sender, payment_status);
    }

}    
