/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
randomize();
globalvar cardChoosed;
cardChoosed=false;
getCardNum=4;
selectNum=0;
selectDeck=ds_list_create();
addCardType=["eye","heart","mouth","ETH","HTE","HTM","destroy","stealHeart","stealEye"];

for(var i=0;i<3;i++)
{
	
	newCard=instance_create_layer(0,0,"Instances",obj_add_card);
	newCard.devi=i;
	newCard.selecting=true;
	newCard.isReveal=true;
	newCard._type=addCardType[irandom(8)];
	ds_list_add(selectDeck,newCard);
}