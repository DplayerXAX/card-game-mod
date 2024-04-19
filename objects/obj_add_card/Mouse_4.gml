/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 



if(!cardChoosed&&getCardNum>0)
{
	create_card(_type,0);
	number++;
	getCardNum--;
	selectCard=ds_list_find_value(card_deck,ds_list_size(card_deck)-1);
	selectCard.x=x;
	selectCard.y=y;
	selectCard.devi=ds_list_size(card_deck)-1;
	selectCard.depth=selectCard.devi;
	selectCard.sendCardToDeck=true;
	instance_destroy(obj_add_card);
	selectCardCreate=false;
}
