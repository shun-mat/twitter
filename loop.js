/*while (i < 100){
  console.log(i);
  i = i + 1;
}*/

/*while(true){
  console.log('無限ループ');
}*/

/*let i = 0;
while(i < 100){
  console.log(i);
  i = i + 1;
}の別の書き方
*/
let i = 0;
while(true){
  if(i === 100){
    break;
  }
  console.log(i);
  i = i + 2;
}
