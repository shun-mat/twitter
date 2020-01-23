function get_achievement(x,y,z){
 let sum = x + y + z;
 if(sum >= 250){
  return "A";
}else if(sum >= 200){
  return "B";
}else if(sum >= 100){
  return "c";
}else {
  return "D";
}
}


/*
function get_achievement(x,y,z){
let sum = x + y + z;
switch (true) {
  case(sum >= 250):
      console.log("A")
      break;
  case(sum >= 200):
      console.log("B");
      break;
  case(sum >= 100):
      console.log("C");
      break;
  default:
  console.log("D");

}
}
console.log(get_achievement(100,100,50));
*/

function get_pass_or_failure(x,y,z){
  if(x >= 60 && y >= 60 && z >= 60){
    return "合格";
  }else {
    return "不合格";
  }
}

/*
function get_pass_or_failure(x,y,z){
if(x<60){
return “不合格”;
}else if (y<60) {
return “不合格”;
}else if (z<60) {
return “不合格”;
}else {
return “合格”};
};*/


function judgement(x,y,z){
  let achievement = get_achievement(x,y,z);
  let pass_or_failure = get_pass_or_failure(x,y,z);

  return `あなたの成績は${achievement}です。${pass_or_failure}です！`;
}
console.log(judgement(30,100,40));
