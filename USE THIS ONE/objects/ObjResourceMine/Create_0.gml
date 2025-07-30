//can't mine if far away
can_interact = false

//amount of gold given per mine
//can be adjusted
gold_amount = 10;

//cooldown on mining
if (!variable_global_exists("mine_cooldown")) {
    mine_cooldown = 0;
}