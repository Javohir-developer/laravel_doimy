<?php
use \Illuminate\Support\Facades\DB;
use App\Models\Regions;
use App\Models\Districts;
$regions = Regions::all();
?>
<style type="text/css">
    .modal-backdrop {
        position: inherit;!important;
    }
    .modal-body {
        padding-top: 7px;!important;
        padding-bottom: 0px;!important;
    }


</style>
<div class="col-xl-4 sidebar ftco-animate bg-light pt-5">
    <div class="sidebar-box ftco-animate">
        <h3 class="sidebar-heading">Viloyatni tanlang</h3>
        <ul class="categories">

            <?php foreach ($regions as $region):?>
            <?php $districts = Districts::where('regions_id', $region->id)->get();?>
            <li><a href="#"  data-toggle="modal" data-target="#basicModal<?php echo$region->id;?>"><?php echo $region->name; ?> <span>(7)</span></a></li>
                <div class="modal fade" id="basicModal<?php echo $region->id; ?>" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title" id="myModalLabel">tumanni tanlang</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">×</span>
                                </button>
                            </div>
                            <div class="modal-body" style="line-height: .2;">
                                <?php foreach ($districts as $district): ?>
                                    <p><a href="" style="color: #343a40"><?php echo $district->name;  ?> </a> </p>
                                    <hr>
                                <?php endforeach;?>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger"  data-dismiss="modal">bekor qilish</button>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </ul>
    </div>
</div><!-- END COL -->
</div>
</div>
</section>
</div><!-- END COLORLIB-MAIN -->
</div><!-- END COLORLIB-PAGE -->
<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

<script>
    $(document).ready(function(){
        $("#modal1").click(function(){
            $("#modal2").modal();
        });
    })
</script>
