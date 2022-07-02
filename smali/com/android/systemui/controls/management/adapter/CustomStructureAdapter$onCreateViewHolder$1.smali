.class final Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter$onCreateViewHolder$1;
.super Ljava/lang/Object;
.source "CustomStructureAdapter.kt"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/controls/management/adapter/CustomStructureHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter$onCreateViewHolder$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;)V
    .locals 2
    .param p1    # Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter$onCreateViewHolder$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;

    invoke-static {v0}, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;->access$getModel$p(Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;)Lcom/android/systemui/controls/management/model/StructureModel;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.android.systemui.controls.management.model.ReorderStructureModel"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/controls/management/model/ReorderStructureModel;

    invoke-virtual {v0}, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->getItemTouchHelper()Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 67
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_AUI:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter$onCreateViewHolder$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;

    invoke-static {p0}, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;->access$getAuiFacade$p(Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;)Lcom/android/systemui/controls/ui/util/AUIFacade;

    move-result-object p0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string/jumbo v0, "viewHolder.itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/android/systemui/controls/ui/util/AUIFacade;->playLongPress(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 65
    check-cast p1, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter$onCreateViewHolder$1;->accept(Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;)V

    return-void
.end method
