.class final Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$refreshStructureOrdering$2;
.super Ljava/lang/Object;
.source "CustomControlsFavoritingActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->refreshStructureOrdering(Lcom/android/systemui/controls/management/model/AllStructureModel;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $model:Lcom/android/systemui/controls/management/model/AllStructureModel;

.field final synthetic $orderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $update:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;Lcom/android/systemui/controls/management/model/AllStructureModel;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;",
            "Lcom/android/systemui/controls/management/model/AllStructureModel;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$refreshStructureOrdering$2;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    iput-object p2, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$refreshStructureOrdering$2;->$model:Lcom/android/systemui/controls/management/model/AllStructureModel;

    iput-object p3, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$refreshStructureOrdering$2;->$orderList:Ljava/util/List;

    iput-object p4, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$refreshStructureOrdering$2;->$update:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 440
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$refreshStructureOrdering$2;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    iget-object v1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$refreshStructureOrdering$2;->$model:Lcom/android/systemui/controls/management/model/AllStructureModel;

    iget-object v2, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$refreshStructureOrdering$2;->$orderList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/android/systemui/controls/management/model/AllStructureModel;->changeStructureOrder(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->access$setCurrentOrder$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;Ljava/util/List;)V

    .line 441
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$refreshStructureOrdering$2;->$update:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 442
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$refreshStructureOrdering$2;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    invoke-static {p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->access$getCustomAdapter$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    const-string p0, "customAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
