//Add hovered class to selsect list item

let list = document.querySelectorAll(".das_navigation li");

function activeLink(){
    list.forEach(item=>{
        item.classList.remove("hovered");
    })
    this.classList.add("hovered");
}

list.forEach(item => item.addEventListener("mouseover", activeLink));


//Menu toggle section start

let toggle = document.querySelector(".toggle");
let navigation = document.querySelector(".das_navigation");
let main = document.querySelector(".main_content");

toggle.onclick = function (){
    navigation.classList.toggle("active");
    main.classList.toggle("active");
};

// Chart section start

const ctx = document.getElementById('myChart');
const earn = document.getElementById('earning');



var mychart = new Chart(ctx, {
  type: 'polarArea',
  data: {
    labels: ['Web Devlopment', 'Digital Markiting', 'Graphice Degine'],
    datasets: [{
      label: 'Traffic Source',
      data: [1200, 1900, 3000],
      backgroundColor: [
          'rgba(255, 99, 132, 1)',
          'rgba(54, 162, 235, 1)',
          'rgba(255, 206, 86, 1)'
      ],
    }]
  },
  options: {
    responsive:true
  }
});



var myChart = new Chart(earn, {
  type: 'bar',
  data: {
    labels: ['January', 'February', 'March', 'April', 'May', 'June', 'August', 'September', 'Octuber', 'November', 'December'],
    datasets: [{
      label: 'Earning',
      data: [1200, 1900, 300, 500, 2000, 300, 700, 500, 156, 852, 789, 445, 852 ],
      backgroundColor: [
          'rgba(255, 99, 132, 1)',
          'rgba(54, 162, 235, 1)',
          'rgba(255, 206, 86, 1)',
          'rgba(75, 192, 192, 1)',
          'rgba(153, 102, 255, 1)',
          'rgba(255, 159, 64, 1)',
          'rgba(255, 99, 132, 1)',
          'rgba(54, 162, 235, 1)',
          'rgba(255, 206, 86, 1)',
          'rgba(75, 192, 192, 1)',
          'rgba(153, 102, 255, 1)',
          'rgba(255, 159, 64, 1)'
        ],
      //   borderColor: [
      //     'rgb(255, 99, 132, 1)',
      //     'rgb(54, 162, 235, 1)',
      //     'rgb(255, 206, 86, 1)',
      //     'rgb(75, 192, 192, 1)',
      //     'rgb(153, 102, 255, 1)',
      //     'rgb(255, 102, 255, 1)'
      //   ],
      //   borderWidth:1
    }]
  },
  options: {
      responsive:true,
  }
});


  // Chart section end