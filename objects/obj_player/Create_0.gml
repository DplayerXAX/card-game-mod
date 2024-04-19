/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

globalvar card_deck;
card_deck=ds_list_create();
//The original deck
	for(var i=0;i<6;i++){
		create_card(all_type[i%3],i);
		number++;
		}
	for(var i=0;i<12;i++){
		create_card(all_type[i%3],i);
		number++;
		}
	littleCard=number-1;