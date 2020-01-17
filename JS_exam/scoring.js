$(document).ready(function(){//htmlの読み込みが終わってから実行
  function score_indicate(){
    // このような記述をすることで、subject_pointsという変数の中に
    // [国語の点数,英語の点数,数学の点数,理科の点数,社会の点数]という配列を作成できる。
    let subject_points = [Number($('#national_language').val()),
                          Number($('#english').val()),
                          Number($('#mathematics').val()),
                          Number($('#science').val()),
                          Number($('#society').val())
                          ];

    // さらにこのような記述をすることで、「合計点：」となっている右の部分に合計点が出力される
      let sum = subject_points[0];
      sum = sum + subject_points[1];
      sum = sum + subject_points[2];
      sum = sum + subject_points[3];
      sum = sum + subject_points[4];
      $("#sum_indicate").text(sum);

    let average = sum / subject_points.length;

    $('#average_indicate').text(average);

    // ここに、上記を参考にして平均点を出力する処理を書き込む
    return average;
    //return subject_points;
  };
//var average = document.getElementById('average_indicate');
  function get_achievement(){
    // console.log(score_indicate);
      let average2 = score_indicate();

    // ここに、ランクの値の文字列（平均点が80点以上なら"A"、60点以上なら"B"、40点以上なら"C"、それ以下なら"D"）を出力する処理を書き込む
      if(average2 >= 80){
        return "A";
      }else if (average2 >= 60) {
        return "B";
      }else if (average2 >= 40) {
        return "C";
      }else{
        return "D";
      }
    };

    function get_pass_or_failure(){
        //let number = score_indicate();
        let subject_points = [Number($('#national_language').val()),
                              Number($('#english').val()),
                              Number($('#mathematics').val()),
                              Number($('#science').val()),
                              Number($('#society').val())
                              ];
        let number = subject_points.length;
      for(let i = 0; i < number; i++){
        if(subject_points[i] >= 60 ){
          return "合格";
      //  $("#judge").text("合格");
        }else{
          return "不合格";
       //$("#judge").text("不合格");
      };
    };
  //  return judge
      // ここに、全ての教科が60点以上なら"合格"の文字列、一つでも60点未満の教科があったら"不合格"の文字列を出す処理を書き込む
    };


    function judgement(){
        let averageIndicate  = get_achievement();

        let pass = get_pass_or_failure();

      // ここに、「最終ジャッジ」のボタンを押したら「あなたの成績はAです。合格です」といった内容を出力する処理を書き込む
      // 下記の記述をすることで、「最終ジャッジ」のボタンを押すと「あなたの成績は（ここに「ランク」の値を入れる）です。（ここに「判定」の値を入れる）です」という文字の入った水色のフキダシが出力される処理が実装される。
      $('#declaration').append(`<label id="alert-indicate" class="alert alert-info">あなたの成績は ${averageIndicate}です。  ${pass}です</label>`);
    };//親要素の中に子要素を追加する

    $('#national_language, #english, #mathematics, #science, #society').change(function() {
      score_indicate();//点数が変わるとscore_indicate()の処理をする
    });

    $('#btn-evaluation').click(function() {

      let averageIndicate =  get_achievement();
      $('#evaluation').text(averageIndicate);

    });

    $('#btn-judge').click(function() {
      let pass_or_failure = get_pass_or_failure
    //  let exam =
    $('#judge').text(pass_or_failure);
    //  $('judge').text(exam);
    });

    $('#btn-declaration').click(function() {
      //let averageIndicate  = get_achievement();

        //let pass_or_failure = get_pass_or_failure();

        //$('#declaration').text(averageIndicate);

//      <p><label class="btn btn-warning" id="btn-declaration">最終ジャッジ</label> ： <label id="declaration"></label></p>
      //var array1 = ['get_achievement()','get_pass_or_failure()'];
      //$('#declaration').text(array1);
    //  $('#declaration').text(function(judgement();)

       judgement();
       });
    });


    //$('rank','judge').text(judgement());
    //最終ジャッジボタンを押したら処理が始まる

  // ここに書かれているjsの記述はあくまでヒントとして用意された雛形なので、書かれている記述に従わずに実装したいという場合は、自分の好きに実装して構わない。課題要件を満たし、コードの品質が一定の水準にあると判定されればどのような実装でも合格になる。
  /*$('#btn-evaluation').click(function() {
    let averageIndicate = "テスト"
    $("#evaluation").text(averageIndicate)
  });*/
