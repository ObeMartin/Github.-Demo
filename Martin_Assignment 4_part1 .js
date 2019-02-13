let myArray = [1,3,5,7,9,11];

let mySet = new Set (myArray);

mySet.add('2,4,6,8');
mySet.add ('apple, bear, duck, egg, frog: guitar, hat: ink, juice: key' );
mySet.delete (9)
mySet.forEach(function(val){
    console.log(val);
})
//console.log(mySet);
//I made a set, in which you can pick from available numbers and desplay it, erase it or add more numbers.