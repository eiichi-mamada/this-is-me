$(document).ready(function(){

  // data属性から変数を定義
  var p_inde = $('#status-past-independence').data('past-inde');
  var p_exec = $('#status-past-execution').data('past-exec');
  var p_crea = $('#status-past-creativity').data('past-crea');
  var p_plan = $('#status-past-planning').data('past-plan');
  var p_team = $('#status-past-teamwork').data('past-team');
  var p_comm = $('#status-past-communication').data('past-comm');
  // 色の設定
  var colorSet = {
    red: 'rgb(255, 99, 132)',
    yellow: 'rgb(255, 205, 86)',
    green: 'rgb(75, 192, 192)',
  };

  // 色のRGB変換
  var color = Chart.helpers.color;

  // チャートの設定
  var config = {
    // チャート型の指定
    type: 'radar',
    data: {
      labels: ["主体性", "実行力", "創造力", "計画力", "チームワーク", "コミュニケーション"],
      datasets: [{
        // チャート軸ラベルの設定
        label: "rank",
        backgroundColor: color(colorSet.red).alpha(0.5).rgbString(),
        borderColor: colorSet.red,
        pointBackgroundColor: colorSet.red,
        data: [p_inde, p_exec, p_crea, p_plan, p_team, p_comm]
      },]
    },
    options: {
      animation:false,
      showTooltips: false,
      // チャートタイトルの設定
      legend: { position: 'bottom' },
      title: {
        // 表示、非表示
        display: true,
        fontSize:20,
        fontColor:'#666',
        text: '過去のあなた'
      },
      // チャート軸の設定（A,B,C...）
      scale: {
        display: true,
        pointLabels: {
          fontSize: 15,
          fontColor: colorSet.yellow
        },
        ticks: {
          // チャート目盛りの設定（20,40,60...）
          display: true,
          fontSize: 12,
          fontColor: colorSet.green,
          min: 0,
          max: 10,
          // trueの場合、スケールにまだ含まれていない場合、0が含まれる
          beginAtZero: true
        },
        gridLines: {
          // 蜘蛛の巣上のラインの設定
          display: true,
          color: colorSet.yellow
        }
      }
    }
  };

    // チャートの作成
    new Chart($("#myChart"), config);

});