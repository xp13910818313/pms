<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="luminoPro">
    <script>
        function operatorFormatter(value, row,index) {
            var str='';
            if(row.status=='未查'){
                str='<button class="btn btn-default margin"  onclick="editOne('+index+','+row.id+')"  type="button"><span class="glyphicon glyphicon-edit"></span> &nbsp;处理</button></a>';
            }
            return str;
        }
        function isWrongFormatter(value, row,index) {
            if(value){
                return '不正常';
            }else{
                return '正常';
            }
        }
        function changeItemTable(id){
            $('#jobItemTable').bootstrapTable('refresh',{url:"${request.contextPath}/workspace/getJobItemJson/"+id});
        }
    </script>
</head>

<body>


<div class="row">
    <ol class="breadcrumb">
        <li><a href="${createLink(uri: '/')}"><span class="glyphicon glyphicon-home"></span></a></li>
        <li class="active" >代办任务</li>
    </ol>
</div><!--/.row-->

<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">工单列表</h1>
    </div>
</div><!--/.row-->
<div class="row box animated tile active" id="box-list">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading"><span class="glyphicon glyphicon-check"></span>代办任务</div>
            <div class="panel-body">
                <ul class="todo-list">
                    <g:each in="${jobOrders}" var="jobOrder" status="i">
                    <li class="todo-list-item">
                        <div class="checkbox">
                            <input type="checkbox" id="checkbox-${i}" />
                            <label for="checkbox-${i}">${jobDate.format('yyyy-MM-dd')} ${rotation.name} ${position.name} ${type}类工单</label>
                        </div>
                        <div class="pull-right action-buttons">
                            <a href="#"><span class="glyphicon glyphicon-pencil"></span></a>
                            <a href="#" class="flag"><span class="glyphicon glyphicon-flag"></span></a>
                            <a href="#" class="trash"><span class="glyphicon glyphicon-trash"></span></a>
                        </div>
                    </li>
                    </g:each>

                    <li class="todo-list-item">
                        <div class="checkbox">
                            <input type="checkbox" id="checkbox-3" checked readonly disabled />
                            <label for="checkbox-3">3333333</label>
                        </div>

                    </li>
                    <li class="todo-list-item">
                        <div class="checkbox">
                            <input type="checkbox" id="checkbox-4" />
                            <label for="checkbox-4">2015年6月13日 早班--电器岗位的工单</label>
                        </div>
                        <div class="pull-right action-buttons">

                            <a href="#" onclick="changeItemTable(1)" class="box-switcher"  data-switch="box-edit" ><span class="glyphicon glyphicon-pencil" ></span></a>

                            <a href="#" class="flag"><span class="glyphicon glyphicon-flag"></span></a>
                            <a href="#" class="trash"><span class="glyphicon glyphicon-trash"></span></a>
                        </div>
                    </li>
                    <li class="todo-list-item">
                        <div class="checkbox">
                            <input type="checkbox" id="checkbox-5"  />
                            <label for="checkbox-5">2015年6月13日 早班--井架岗位的工单</label>
                        </div>
                        <div class="pull-right action-buttons">
                            <a href="#"><span class="glyphicon glyphicon-pencil"></span></a>
                            <a href="#" class="flag"><span class="glyphicon glyphicon-flag"></span></a>
                            <a href="#" class="trash"><span class="glyphicon glyphicon-trash"></span></a>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="panel-footer">

            </div>
        </div>
    </div>
</div><!--/.row-->

<div class="row box animated tile " id="box-edit">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <g:form method="post">
                <div class="panel-heading">
                     工单详情
                </div>
                <div class="panel-body">

                    <table id="jobItemTable" data-toolbar="#toolbar" data-toggle="table"
                            data-cache="false" data-show-refresh="true" data-show-toggle="true" data-show-columns="true" data-search="false"
                           data-side-pagination="server" data-pagination="true" data-query-params="queryParams"
                           data-select-item-name="checkIds" data-sort-name="name" data-sort-order="desc">
                        <thead>
                        <tr>
                            <th data-field="nofield" data-checkbox="true"></th>
                            <th data-field="equipment" data-sortable="true"  >设备</th>

                            <th data-field="standardItem" data-sortable="true" >检查标准</th>
                            <th data-field="isWrong" data-sortable="true"  data-formatter="isWrongFormatter">设备状态</th>

                            <th data-field="checker" data-sortable="true" >检查人</th>

                            <th data-field="checkDate" data-sortable="true" >检查日期</th>

                            <th data-field="status" data-sortable="true" >检查状态</th>
                            <th data-field="checkResult" data-sortable="true" >检查描述</th>
                            <th data-field="remark" data-sortable="true" >备注</th>

                            <th data-field="name" data-formatter="operatorFormatter">操作</th>


                        </tr>
                        </thead>
                    </table>

                </div>
            </g:form>
        </div>
    </div>
</div><!--/.row-->


<div class="modal fade panel" id="jboItemModal" tabindex="-1" role="dialog" aria-labelledby="importModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content" >
            <div class="modal-header">
                <button type="button" class="close"
                        data-dismiss="modal" aria-hidden="true">
                &times;
                </button>
                <h4 class="modal-title" id="importModalLabel">
                    处理工单项
                </h4>
            </div>
            <div class="modal-body">
                <form  role="form" id="excelForm"  class="easyui-form"
                       enctype="multipart/form-data" method="post" >

                </form>
            </div>
            <div class="modal-footer">
                <button class="btn btn-default margin" onclick="processJobItem()" type="button">
                    <span class="glyphicon glyphicon-check"></span>
                    <g:message code="default.submit.label" default="Submit"/>
                </button>

                <button class="btn btn-default margin" data-dismiss="modal" type="button">
                    <span class="glyphicon glyphicon-circle-arrow-down"></span>
                    <g:message code="default.close.label" default="Close"/>
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>


</body>
</html>