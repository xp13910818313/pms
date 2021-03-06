<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="luminoPro">
    <script src="${request.contextPath}/js/Highcharts-4.1.6/js/highcharts.js"></script>
    <!--<script src="${request.contextPath}/js/Highcharts-4.1.6/js/themes/dark-unica.js"></script>-->
    <script src="${request.contextPath}/js/Highcharts-4.1.6/js/highcharts-3d.js"></script>
    <script src="${request.contextPath}/js/Highcharts-4.1.6/js/highcharts-more.js"></script>
    <script src="${request.contextPath}/js/Highcharts-4.1.6/js/modules/exporting.js"></script>

    <script src="${request.contextPath}/js/Highmaps-1.1.6/js/modules/map.js"></script>
    <script src="${request.contextPath}/js/Highmaps-1.1.6/mapData/world-highres.js"></script>
    <script src="${request.contextPath}/js/Highmaps-1.1.6/relayJs/proj4.js"></script>
    <script type="text/javascript">
        $(function () {

            // Prepare demo data
            var data = [
                {
                    "hc-key": "dz",
                    "value": 0
                },
                {
                    "hc-key": "ao",
                    "value": 1
                },
                {
                    "hc-key": "eg",
                    "value": 2
                },
                {
                    "hc-key": "bd",
                    "value": 3
                },
                {
                    "hc-key": "ne",
                    "value": 4
                },
                {
                    "hc-key": "qa",
                    "value": 5
                },
                {
                    "hc-key": "na",
                    "value": 6
                },
                {
                    "hc-key": "bg",
                    "value": 7
                },
                {
                    "hc-key": "bo",
                    "value": 8
                },
                {
                    "hc-key": "gh",
                    "value": 9
                },
                {
                    "hc-key": "pk",
                    "value": 10
                },
                {
                    "hc-key": "pa",
                    "value": 11
                },
                {
                    "hc-key": "hn",
                    "value": 12
                },
                {
                    "hc-key": "jo",
                    "value": 13
                },
                {
                    "hc-key": "eh",
                    "value": 14
                },
                {
                    "hc-key": "ly",
                    "value": 15
                },
                {
                    "hc-key": "my",
                    "value": 16
                },
                {
                    "hc-key": "pr",
                    "value": 17
                },
                {
                    "hc-key": "kp",
                    "value": 18
                },
                {
                    "hc-key": "tz",
                    "value": 19
                },
                {
                    "hc-key": "pt",
                    "value": 20
                },
                {
                    "hc-key": "kh",
                    "value": 21
                },
                {
                    "hc-key": "py",
                    "value": 22
                },
                {
                    "hc-key": "sa",
                    "value": 23
                },
                {
                    "hc-key": "me",
                    "value": 24
                },
                {
                    "hc-key": "si",
                    "value": 25
                },
                {
                    "hc-key": "bf",
                    "value": 26
                },
                {
                    "hc-key": "ch",
                    "value": 27
                },
                {
                    "hc-key": "mr",
                    "value": 28
                },
                {
                    "hc-key": "hr",
                    "value": 29
                },
                {
                    "hc-key": "cl",
                    "value": 30
                },
                {
                    "hc-key": "cn",
                    "value": 31
                },
                {
                    "hc-key": "kn",
                    "value": 32
                },
                {
                    "hc-key": "jm",
                    "value": 33
                },
                {
                    "hc-key": "dj",
                    "value": 34
                },
                {
                    "hc-key": "gn",
                    "value": 35
                },
                {
                    "hc-key": "fi",
                    "value": 36
                },
                {
                    "hc-key": "uy",
                    "value": 37
                },
                {
                    "hc-key": "va",
                    "value": 38
                },
                {
                    "hc-key": "np",
                    "value": 39
                },
                {
                    "hc-key": "ma",
                    "value": 40
                },
                {
                    "hc-key": "ye",
                    "value": 41
                },
                {
                    "hc-key": "ph",
                    "value": 42
                },
                {
                    "hc-key": "za",
                    "value": 43
                },
                {
                    "hc-key": "ni",
                    "value": 44
                },
                {
                    "hc-key": "cyn",
                    "value": 45
                },
                {
                    "hc-key": "vi",
                    "value": 46
                },
                {
                    "hc-key": "sy",
                    "value": 47
                },
                {
                    "hc-key": "li",
                    "value": 48
                },
                {
                    "hc-key": "kz",
                    "value": 49
                },
                {
                    "hc-key": "mn",
                    "value": 50
                },
                {
                    "hc-key": "sr",
                    "value": 51
                },
                {
                    "hc-key": "ie",
                    "value": 52
                },
                {
                    "hc-key": "dm",
                    "value": 53
                },
                {
                    "hc-key": "bj",
                    "value": 54
                },
                {
                    "hc-key": "ng",
                    "value": 55
                },
                {
                    "hc-key": "be",
                    "value": 56
                },
                {
                    "hc-key": "tg",
                    "value": 57
                },
                {
                    "hc-key": "de",
                    "value": 58
                },
                {
                    "hc-key": "lk",
                    "value": 59
                },
                {
                    "hc-key": "gb",
                    "value": 60
                },
                {
                    "hc-key": "mw",
                    "value": 61
                },
                {
                    "hc-key": "cr",
                    "value": 62
                },
                {
                    "hc-key": "cm",
                    "value": 63
                },
                {
                    "hc-key": "kas",
                    "value": 64
                },
                {
                    "hc-key": "km",
                    "value": 65
                },
                {
                    "hc-key": "ug",
                    "value": 66
                },
                {
                    "hc-key": "tm",
                    "value": 67
                },
                {
                    "hc-key": "tt",
                    "value": 68
                },
                {
                    "hc-key": "nl",
                    "value": 69
                },
                {
                    "hc-key": "td",
                    "value": 70
                },
                {
                    "hc-key": "ge",
                    "value": 71
                },
                {
                    "hc-key": "ro",
                    "value": 72
                },
                {
                    "hc-key": "scr",
                    "value": 73
                },
                {
                    "hc-key": "lv",
                    "value": 74
                },
                {
                    "hc-key": "bz",
                    "value": 75
                },
                {
                    "hc-key": "mm",
                    "value": 76
                },
                {
                    "hc-key": "af",
                    "value": 77
                },
                {
                    "hc-key": "bi",
                    "value": 78
                },
                {
                    "hc-key": "by",
                    "value": 79
                },
                {
                    "hc-key": "gd",
                    "value": 80
                },
                {
                    "hc-key": "lr",
                    "value": 81
                },
                {
                    "hc-key": "gr",
                    "value": 82
                },
                {
                    "hc-key": "ls",
                    "value": 83
                },
                {
                    "hc-key": "gl",
                    "value": 84
                },
                {
                    "hc-key": "ad",
                    "value": 85
                },
                {
                    "hc-key": "mz",
                    "value": 86
                },
                {
                    "hc-key": "tj",
                    "value": 87
                },
                {
                    "hc-key": "th",
                    "value": 88
                },
                {
                    "hc-key": "ht",
                    "value": 89
                },
                {
                    "hc-key": "mx",
                    "value": 90
                },
                {
                    "hc-key": "zw",
                    "value": 91
                },
                {
                    "hc-key": "lc",
                    "value": 92
                },
                {
                    "hc-key": "in",
                    "value": 93
                },
                {
                    "hc-key": "vc",
                    "value": 94
                },
                {
                    "hc-key": "bt",
                    "value": 95
                },
                {
                    "hc-key": "vn",
                    "value": 96
                },
                {
                    "hc-key": "no",
                    "value": 97
                },
                {
                    "hc-key": "cz",
                    "value": 98
                },
                {
                    "hc-key": "ag",
                    "value": 99
                },
                {
                    "hc-key": "fj",
                    "value": 100
                },
                {
                    "hc-key": "ir",
                    "value": 101
                },
                {
                    "hc-key": "mu",
                    "value": 102
                },
                {
                    "hc-key": "do",
                    "value": 103
                },
                {
                    "hc-key": "lu",
                    "value": 104
                },
                {
                    "hc-key": "il",
                    "value": 105
                },
                {
                    "hc-key": "sm",
                    "value": 106
                },
                {
                    "hc-key": "pe",
                    "value": 107
                },
                {
                    "hc-key": "id",
                    "value": 108
                },
                {
                    "hc-key": "vu",
                    "value": 109
                },
                {
                    "hc-key": "mk",
                    "value": 110
                },
                {
                    "hc-key": "cd",
                    "value": 111
                },
                {
                    "hc-key": "cg",
                    "value": 112
                },
                {
                    "hc-key": "is",
                    "value": 113
                },
                {
                    "hc-key": "et",
                    "value": 114
                },
                {
                    "hc-key": "um",
                    "value": 115
                },
                {
                    "hc-key": "co",
                    "value": 116
                },
                {
                    "hc-key": "ser",
                    "value": 117
                },
                {
                    "hc-key": "bw",
                    "value": 118
                },
                {
                    "hc-key": "md",
                    "value": 119
                },
                {
                    "hc-key": "mg",
                    "value": 120
                },
                {
                    "hc-key": "ec",
                    "value": 121
                },
                {
                    "hc-key": "sn",
                    "value": 122
                },
                {
                    "hc-key": "tl",
                    "value": 123
                },
                {
                    "hc-key": "fr",
                    "value": 124
                },
                {
                    "hc-key": "lt",
                    "value": 125
                },
                {
                    "hc-key": "rw",
                    "value": 126
                },
                {
                    "hc-key": "zm",
                    "value": 127
                },
                {
                    "hc-key": "se",
                    "value": 128
                },
                {
                    "hc-key": "fo",
                    "value": 129
                },
                {
                    "hc-key": "gt",
                    "value": 130
                },
                {
                    "hc-key": "dk",
                    "value": 131
                },
                {
                    "hc-key": "ua",
                    "value": 132
                },
                {
                    "hc-key": "au",
                    "value": 133
                },
                {
                    "hc-key": "at",
                    "value": 134
                },
                {
                    "hc-key": "ve",
                    "value": 135
                },
                {
                    "hc-key": "pw",
                    "value": 136
                },
                {
                    "hc-key": "ke",
                    "value": 137
                },
                {
                    "hc-key": "la",
                    "value": 138
                },
                {
                    "hc-key": "bjn",
                    "value": 139
                },
                {
                    "hc-key": "tr",
                    "value": 140
                },
                {
                    "hc-key": "jp",
                    "value": 141
                },
                {
                    "hc-key": "al",
                    "value": 142
                },
                {
                    "hc-key": "om",
                    "value": 143
                },
                {
                    "hc-key": "it",
                    "value": 144
                },
                {
                    "hc-key": "bn",
                    "value": 145
                },
                {
                    "hc-key": "tn",
                    "value": 146
                },
                {
                    "hc-key": "hu",
                    "value": 147
                },
                {
                    "hc-key": "ru",
                    "value": 148
                },
                {
                    "hc-key": "lb",
                    "value": 149
                },
                {
                    "hc-key": "bb",
                    "value": 150
                },
                {
                    "hc-key": "br",
                    "value": 151
                },
                {
                    "hc-key": "ci",
                    "value": 152
                },
                {
                    "hc-key": "rs",
                    "value": 153
                },
                {
                    "hc-key": "gq",
                    "value": 154
                },
                {
                    "hc-key": "us",
                    "value": 155
                },
                {
                    "hc-key": "tw",
                    "value": 156
                },
                {
                    "hc-key": "az",
                    "value": 157
                },
                {
                    "hc-key": "gw",
                    "value": 158
                },
                {
                    "hc-key": "sz",
                    "value": 159
                },
                {
                    "hc-key": "ca",
                    "value": 160
                },
                {
                    "hc-key": "gy",
                    "value": 161
                },
                {
                    "hc-key": "kv",
                    "value": 162
                },
                {
                    "hc-key": "kr",
                    "value": 163
                },
                {
                    "hc-key": "er",
                    "value": 164
                },
                {
                    "hc-key": "sk",
                    "value": 165
                },
                {
                    "hc-key": "cy",
                    "value": 166
                },
                {
                    "hc-key": "ba",
                    "value": 167
                },
                {
                    "hc-key": "pga",
                    "value": 168
                },
                {
                    "hc-key": "sg",
                    "value": 169
                },
                {
                    "hc-key": "so",
                    "value": 170
                },
                {
                    "hc-key": "sol",
                    "value": 171
                },
                {
                    "hc-key": "uz",
                    "value": 172
                },
                {
                    "hc-key": "cf",
                    "value": 173
                },
                {
                    "hc-key": "pl",
                    "value": 174
                },
                {
                    "hc-key": "kw",
                    "value": 175
                },
                {
                    "hc-key": "gm",
                    "value": 176
                },
                {
                    "hc-key": "ga",
                    "value": 177
                },
                {
                    "hc-key": "ee",
                    "value": 178
                },
                {
                    "hc-key": "es",
                    "value": 179
                },
                {
                    "hc-key": "iq",
                    "value": 180
                },
                {
                    "hc-key": "sv",
                    "value": 181
                },
                {
                    "hc-key": "ml",
                    "value": 182
                },
                {
                    "hc-key": "st",
                    "value": 183
                },
                {
                    "hc-key": "mt",
                    "value": 184
                },
                {
                    "hc-key": "sl",
                    "value": 185
                },
                {
                    "hc-key": "cnm",
                    "value": 186
                },
                {
                    "hc-key": "sd",
                    "value": 187
                },
                {
                    "hc-key": "sb",
                    "value": 188
                },
                {
                    "hc-key": "nz",
                    "value": 189
                },
                {
                    "hc-key": "mc",
                    "value": 190
                },
                {
                    "hc-key": "ss",
                    "value": 191
                },
                {
                    "hc-key": "kg",
                    "value": 192
                },
                {
                    "hc-key": "ae",
                    "value": 193
                },
                {
                    "hc-key": "ar",
                    "value": 194
                },
                {
                    "hc-key": "bs",
                    "value": 195
                },
                {
                    "hc-key": "bh",
                    "value": 196
                },
                {
                    "hc-key": "am",
                    "value": 197
                },
                {
                    "hc-key": "pg",
                    "value": 198
                },
                {
                    "hc-key": "cu",
                    "value": 199
                }
            ];

            // Initiate the chart
            $('#containerMap').highcharts('Map', {
                credits:{
                    enabled:false
                },
                exporting:{
                    enabled:false
                },
                chart: {
                    backgroundColor: 'rgba(0,0,0,0)'
                },
                title : {
                    text : 'Highmaps basic demo'
                    ,style:{color:'white'}
                },
                mapNavigation: {
                    enabled: true,
                    buttonOptions: {
                        verticalAlign: 'bottom'
                    }
                },
                legend:{
                    style:{color:'white'}
                },
                colorAxis: {
                    min: 0
                },

                series : [{
                    data : data,
                    mapData: Highcharts.maps['custom/world-highres'],
                    joinBy: 'hc-key',
                    name: 'Country',
                    states: {
                        hover: {
                            color: '#BADA55'
                        }
                    },
                    dataLabels: {
                        enabled: true,
                        format: '{point.name}'
                    }
                }, {

                    type: 'mapbubble',
                    dataLabels: {
                        enabled: true,
                        color:'white',
                        format: '{point.capital}'
                    },
                    name: '<span style="color:white">Cities</span>',
                    color: 'red',
                    maxSize: '12%',
                    data: [
                        {
                            "abbrev":"AL",
                            "parentState":"Alabama",
                            "capital":"Montgomery",
                            "lat":32.380120,
                            "lon":-86.300629,
                            "z":10
                        },
                        {
                            "abbrev":"AK",
                            "parentState":"Alaska",
                            "capital":"Juneau",
                            "lat":58.299740,
                            "lon":-134.406794,
                            "z":10
                        },
                        {
                            "abbrev":"AZ",
                            "parentState":"Arizona",
                            "capital":"Phoenix",
                            "lat":33.448260,
                            "lon":-112.075774,
                            "z":10
                        },
                        {
                            "abbrev":"AR",
                            "parentState":"Arkansas",
                            "capital":"Little Rock",
                            "lat":34.748655,
                            "lon":-92.274494,
                            "z":10
                        },
                        {
                            "capital":"no where",
                            "z":100
                        }
                    ]
                }]
            });
            var chart = new Highcharts.Chart({
                credits:{
                    enabled:false
                },
                exporting:{
                    enabled:false
                },
                chart: {
                    renderTo: 'container0',
                    backgroundColor: 'rgba(0,0,0,0)',
                    type: 'column',
                    margin: 75,
                    options3d: {
                        enabled: true,
                        alpha: 15,
                        beta: 15,
                        depth: 50,
                        viewDistance: 25
                    }
                },
                legend:{
                    backgroundColor:'white'
                },
                title: {
                    text: 'Chart rotation demo'
                    ,style:{color:'white'}
                },
                subtitle: {
                    text: 'Test options by dragging the sliders below'
                },
                plotOptions: {
                    column: {
                        depth: 25
                    }
                },
                series: [{
                    data: [29.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4]
                }]
            });

            // Add mouse events for rotation
            $(chart.container).bind('mousedown.hc touchstart.hc', function (e) {
                e = chart.pointer.normalize(e);

                var posX = e.pageX,
                        posY = e.pageY,
                        alpha = chart.options.chart.options3d.alpha,
                        beta = chart.options.chart.options3d.beta,
                        newAlpha,
                        newBeta,
                        sensitivity = 5; // lower is more sensitive

                $(document).bind({
                    'mousemove.hc touchdrag.hc': function (e) {
                        // Run beta
                        newBeta = beta + (posX - e.pageX) / sensitivity;
                        newBeta = Math.min(100, Math.max(-100, newBeta));
                        chart.options.chart.options3d.beta = newBeta;

                        // Run alpha
                        newAlpha = alpha + (e.pageY - posY) / sensitivity;
                        newAlpha = Math.min(100, Math.max(-100, newAlpha));
                        chart.options.chart.options3d.alpha = newAlpha;

                        chart.redraw(false);
                    },
                    'mouseup touchend': function () {
                        $(document).unbind('.hc');
                    }
                });
            });

            $('#container1').highcharts({
                credits:{
                    enabled:false
                },
                exporting:{
                    enabled:false
                },
                chart: {
                    type: 'pie',
                    backgroundColor: 'rgba(0,0,0,0)',
                    options3d: {
                        enabled: true,
                        alpha: 45,
                        beta: 0
                    }
                },
                legend:{
                    backgroundColor:'white'
                },
                title: {
                    text: 'Browser market shares at a specific website, 2014'
                    ,style:{color:'white'}
                },
                tooltip: {
                    pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                },
                plotOptions: {
                    pie: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        depth: 35,
                        dataLabels: {
                            enabled: true,
                            format: '{point.name}'
                        }
                    }
                },
                series: [{
                    type: 'pie',
                    name: 'Browser share',
                    data: [
                        ['Firefox',   45.0],
                        ['IE',       26.8],
                        {
                            name: 'Chrome',
                            y: 12.8,
                            sliced: true,
                            selected: true
                        },
                        ['Safari',    8.5],
                        ['Opera',     6.2],
                        ['Others',   0.7]
                    ]
                }]
            });

            $('#container2').highcharts({
                credits:{
                    enabled:false
                },
                exporting:{
                    enabled:false
                },
                chart: {
                    polar: true,
                    backgroundColor: 'rgba(0,0,0,0)'
                },
                legend:{
                    backgroundColor:'white'
                },
                title: {
                    text: 'Highcharts Polar Chart'
                    ,style:{color:'white'}
                },

                pane: {
                    startAngle: 0,
                    endAngle: 360
                },

                xAxis: {
                    tickInterval: 45,
                    min: 0,
                    max: 360,
                    labels: {
                        formatter: function () {
                            return this.value + '°';
                        }
                    }
                },

                yAxis: {
                    min: 0
                },

                plotOptions: {
                    series: {
                        pointStart: 0,
                        pointInterval: 45
                    },
                    column: {
                        pointPadding: 0,
                        groupPadding: 0
                    }
                },

                series: [{
                    type: 'column',
                    name: 'Column',
                    data: [8, 7, 6, 5, 4, 3, 2, 1],
                    pointPlacement: 'between'
                }, {
                    type: 'line',
                    name: 'Line',
                    data: [1, 2, 3, 4, 5, 6, 7, 8]
                }, {
                    type: 'area',
                    name: 'Area',
                    data: [1, 8, 2, 7, 3, 6, 4, 5]
                }]
            });
        });
    </script>
</head>

<body>

<div class="row">
    <ol class="breadcrumb">
        <li><a href="${createLink(uri: '/')}"><span class="glyphicon glyphicon-home"></span></a></li>

    </ol>
</div><!--/.row-->

<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">首页</h1>
    </div>
</div><!--/.row-->

<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">小队分布图</div>
            <div class="panel-body">
                <div class="canvas-wrapper">
                    <div id="containerMap" ></div>
                </div>
            </div>
        </div>
    </div>
</div><!--/.row-->
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">Bar Chart</div>
            <div class="panel-body">
                <div class="canvas-wrapper">
                    <div id="container0" ></div>
                </div>
            </div>
        </div>
    </div>
</div><!--/.row-->

<div class="row">
    <div class="col-md-6">
        <div class="panel panel-default">
            <div class="panel-heading">Pie Chart</div>
            <div class="panel-body">
                <div class="canvas-wrapper">
                    <div id="container1" ></div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="panel panel-default">
            <div class="panel-heading">Doughnut Chart</div>
            <div class="panel-body">
                <div class="canvas-wrapper">
                    <div id="container2" ></div>
                </div>
            </div>
        </div>
    </div>
</div><!--/.row-->


</body>
</html>