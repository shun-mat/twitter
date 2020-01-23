/*function scope_test01(x){
  return x + 6;
}

console.log(scope_test01(4));
console.log(scope_test01(x));*/
/*
let x = 3;
function scope_test02(){
  console.log(x);
  console.log(y);
}
scope_test02();
let y = 3;*/
/*
{
  let block = 5;
  console.log(block);
}

console.log(block);*/
let x = -6;
function scope_test01(x){
  return x + 6;
}

console.log(scope_test01(4));
console.log(scope_test01(x));
