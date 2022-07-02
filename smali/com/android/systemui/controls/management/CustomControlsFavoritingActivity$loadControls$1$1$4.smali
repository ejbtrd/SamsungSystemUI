.class final Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1$4;
.super Ljava/lang/Object;
.source "CustomControlsFavoritingActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1;->accept(Lcom/android/systemui/controls/controller/ControlsController$LoadData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1$4;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final run$clearReorderRequest(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)V
    .locals 1

    .line 219
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->access$setRequestOrder$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 222
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1$4;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->access$setLoadingFinished$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;Z)V

    .line 223
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1$4;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    invoke-static {v0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1$4;->run$clearReorderRequest(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)V

    .line 225
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1$4;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    invoke-static {v0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->access$getCustomAdapter$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;

    move-result-object v0

    const-string v1, "customAdapter"

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1$4;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    invoke-static {v3}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->access$getCustomModel$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)Lcom/android/systemui/controls/management/model/AllStructureModel;

    move-result-object v3

    const-string v4, "customModel"

    if-eqz v3, :cond_4

    invoke-virtual {v0, v3}, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;->changeModel(Lcom/android/systemui/controls/management/model/StructureModel;)V

    .line 226
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1$4;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    invoke-static {v0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->access$getCustomModel$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)Lcom/android/systemui/controls/management/model/AllStructureModel;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1$4;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    invoke-static {v3}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->access$getCustomAdapter$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v3}, Lcom/android/systemui/controls/management/model/AllStructureModel;->attachAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 227
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_STRUCTURE_ORDERING:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1$4;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1$4;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    invoke-static {v0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->access$getControlsMap$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1$4;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    invoke-static {p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->access$showNoItemPage(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)V

    :cond_1
    return-void

    .line 226
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 225
    :cond_4
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method
