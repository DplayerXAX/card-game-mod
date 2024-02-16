/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 




if(string_length(printString1)<string_length(fullString1)){
if(timer_type>0){timer_type--;}
else{
printString1=string_copy(fullString1,0,countLength1);
countLength1++;
timer_type=6;
}


}else{printDone1=true;}



if(printDone1 &&string_length(printString2)<string_length(fullString2)){
if(timer_type>0){timer_type--;}
else{
printString2=string_copy(fullString2,0,countLength2);
countLength2++;
timer_type=6;
}

}
