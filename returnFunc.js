/*function add(i,j){
  let sum = i + j;
  return i;
}

console.log(add(2,3));*/

/*function isOverTen(i) {
  if(i >= 10){
    return true;
  }else {
    return false;
  }
}


console.log(isOverTen(10));
console.log(isOverTen(8));
下は短縮形*/
/*
function isOverTen(i) {
  return i >= 10;
}
console.log(isOverTen(10));
console.log(isOverTen(8));
*/
/*function divide(i,j){
  if(j === 0){
    return "error";
  }else {
    return i / j;
  }
}

console.log(divide(2,5));
console.log(divide(2,0));
*/
/*
function showResult(i,j){
  let result = divide(i,j);
  if(result === "error"){
    return result;
  }else {
    return `${result * 100}パーセントです`;
  }
}

console.log(showResult(2,4));
*/
/*
function divide(i,j){
  if(j  === 0){
    return "error";
  }else {
    return i / j;
  }
}

function showResult(i,j,computeFunc){
  let result = computeFunc(i,j);
  if(result === "error"){
    return result;
 }else {
  return `${result * 100}パーセントです`;
 }
}

console.log(showResult(2,4,divide));
*/

function add(i,j){
  let sum = i + j;
  if(sum < 50){
  return "50より小さい";
}else{
  return  "50以上です";
}
}
console.log(add(10,20));
