.class public final Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;
.super Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.source "MainControlAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/adapter/MainControlAdapter;-><init>(Landroid/content/Context;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/controls/ui/ControlActionCoordinator;Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;Lcom/android/systemui/controls/ControlsMetricsLogger;Lcom/google/android/material/appbar/AppBarLayout;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/ui/CustomControlsUiController$ControlsPositionChangedCallback;Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;Landroid/view/View$OnClickListener;Lcom/android/systemui/controls/ui/util/AUIFacade;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainControlAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainControlAdapter.kt\ncom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,612:1\n768#2,11:613\n734#2:624\n825#2,2:625\n1819#2,2:627\n768#2,11:629\n1819#2,2:640\n*E\n*S KotlinDebug\n*F\n+ 1 MainControlAdapter.kt\ncom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1\n*L\n380#1,11:613\n381#1:624\n381#1,2:625\n382#1,2:627\n387#1,11:629\n387#1,2:640\n*E\n"
.end annotation


# instance fields
.field private final DEFAULT_POS:I

.field private final MOVEMENT:I

.field private dragPos:I

.field private needToCheckAppBar:Z

.field private startDrag:Z

.field final synthetic this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/controls/management/adapter/MainControlAdapter<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/adapter/MainControlAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/management/adapter/MainControlAdapter<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    const/4 p1, 0x0

    .line 295
    invoke-direct {p0, p1, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;-><init>(II)V

    const/4 p1, -0x1

    .line 298
    iput p1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->DEFAULT_POS:I

    .line 301
    iput p1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->dragPos:I

    const/16 p1, 0xf

    .line 308
    iput p1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->MOVEMENT:I

    return-void
.end method


# virtual methods
.method public canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "current"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "target"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    invoke-virtual {p1}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->getModels()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controls/management/model/MainModel;

    .line 340
    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/MainModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    move-result-object p2

    sget-object v0, Lcom/android/systemui/controls/management/model/MainModel$Type;->STRUCTURE:Lcom/android/systemui/controls/management/model/MainModel$Type;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    return v1

    .line 343
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    invoke-virtual {p2}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->getModels()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    move p2, p1

    :goto_0
    if-lez p2, :cond_1

    .line 345
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->getModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/management/model/MainModel;

    invoke-virtual {v0}, Lcom/android/systemui/controls/management/model/MainModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/controls/management/model/MainModel$Type;->CONTROL:Lcom/android/systemui/controls/management/model/MainModel$Type;

    if-ne v0, v2, :cond_1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 346
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->getModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->getModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/management/model/MainModel;

    invoke-virtual {v0}, Lcom/android/systemui/controls/management/model/MainModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    move-result-object v0

    sget-object v3, Lcom/android/systemui/controls/management/model/MainModel$Type;->CONTROL:Lcom/android/systemui/controls/management/model/MainModel$Type;

    if-ne v0, v3, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 347
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->getModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/management/model/MainModel;

    invoke-virtual {v0}, Lcom/android/systemui/controls/management/model/MainModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    move-result-object v0

    sget-object v3, Lcom/android/systemui/controls/management/model/MainModel$Type;->STRUCTURE:Lcom/android/systemui/controls/management/model/MainModel$Type;

    if-ne v0, v3, :cond_3

    add-int/lit8 p2, p2, 0x1

    .line 349
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->getModels()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/management/model/MainModel;

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/model/MainModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    move-result-object p0

    if-ne p0, v3, :cond_4

    add-int/lit8 p1, p1, -0x1

    .line 352
    :cond_4
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p0

    if-gt p2, p0, :cond_5

    if-gt p0, p1, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method

.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewHolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 p1, 0x0

    .line 440
    iput-boolean p1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->needToCheckAppBar:Z

    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "viewHolder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    invoke-virtual {p1}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->getModels()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controls/management/model/MainModel;

    .line 327
    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/MainModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/controls/management/model/MainModel$Type;->CONTROL:Lcom/android/systemui/controls/management/model/MainModel$Type;

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 328
    iget p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->MOVEMENT:I

    invoke-static {p0, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p0

    goto :goto_0

    .line 330
    :cond_0
    invoke-static {v0, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p0

    :goto_0
    return p0
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isLongPressDragEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onChildDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 8
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "recyclerView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 374
    sget-boolean p6, Lcom/android/systemui/BasicRune;->CONTROLS_CARD_REORDER_DIM:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p6, :cond_12

    .line 375
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    .line 376
    iget p6, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->dragPos:I

    iget v2, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->DEFAULT_POS:I

    const/4 v3, 0x0

    if-ne p6, v2, :cond_7

    int-to-float p2, p2

    float-to-double v4, p4

    float-to-double v6, p5

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float p6, v4

    cmpg-float p2, p2, p6

    if-gez p2, :cond_7

    .line 377
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->dragPos:I

    .line 378
    iget-object p2, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    invoke-virtual {p2}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->getModels()Ljava/util/List;

    move-result-object p2

    iget p6, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->dragPos:I

    invoke-interface {p2, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    instance-of p6, p2, Lcom/android/systemui/controls/management/model/MainControlModel;

    if-eqz p6, :cond_0

    check-cast p2, Lcom/android/systemui/controls/management/model/MainControlModel;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    goto/16 :goto_8

    .line 379
    :cond_1
    iget-object p6, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    .line 380
    invoke-virtual {p6}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->getModels()Ljava/util/List;

    move-result-object v2

    .line 768
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 777
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/android/systemui/controls/management/model/MainControlModel;

    if-eqz v6, :cond_2

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 734
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 825
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 381
    invoke-virtual {v6}, Lcom/android/systemui/controls/management/model/MainControlModel;->getStructure()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/systemui/controls/management/model/MainControlModel;->getStructure()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v0

    if-eqz v6, :cond_4

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1819
    :cond_5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 382
    invoke-virtual {v2, v0}, Lcom/android/systemui/controls/management/model/MainModel;->setNeedToMakeDim(Z)V

    goto :goto_3

    .line 383
    :cond_6
    invoke-virtual {p6}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->getModels()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sget-object v2, Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;->UPDATE_DIM_STATUS:Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;

    invoke-virtual {p6, v1, p2, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    goto :goto_8

    :cond_7
    cmpg-float p2, p4, v3

    if-nez p2, :cond_8

    move p2, v0

    goto :goto_4

    :cond_8
    move p2, v1

    :goto_4
    if-eqz p2, :cond_e

    cmpg-float p2, p5, v3

    if-nez p2, :cond_9

    move p2, v0

    goto :goto_5

    :cond_9
    move p2, v1

    :goto_5
    if-eqz p2, :cond_e

    .line 386
    iget p2, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->dragPos:I

    iget p6, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->DEFAULT_POS:I

    if-eq p2, p6, :cond_d

    .line 387
    iget-object p2, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    invoke-virtual {p2}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->getModels()Ljava/util/List;

    move-result-object p2

    .line 768
    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    .line 777
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_a
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Lcom/android/systemui/controls/management/model/MainControlModel;

    if-eqz v4, :cond_a

    invoke-interface {p6, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1819
    :cond_b
    invoke-interface {p6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 388
    invoke-virtual {p6, v1}, Lcom/android/systemui/controls/management/model/MainModel;->setNeedToMakeDim(Z)V

    goto :goto_7

    .line 390
    :cond_c
    iget-object p2, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    invoke-virtual {p2}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->getModels()Ljava/util/List;

    move-result-object p6

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result p6

    sget-object v2, Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;->UPDATE_DIM_STATUS:Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;

    invoke-virtual {p2, v1, p6, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 392
    :cond_d
    iget p2, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->DEFAULT_POS:I

    iput p2, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->dragPos:I

    :cond_e
    :goto_8
    cmpg-float p2, p4, v3

    if-nez p2, :cond_f

    move p2, v0

    goto :goto_9

    :cond_f
    move p2, v1

    :goto_9
    if-eqz p2, :cond_11

    cmpg-float p2, p5, v3

    if-nez p2, :cond_10

    move p2, v0

    goto :goto_a

    :cond_10
    move p2, v1

    :goto_a
    if-nez p2, :cond_12

    .line 396
    :cond_11
    iget-object p2, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    invoke-virtual {p2}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 397
    sget p4, Lcom/android/systemui/R$drawable;->control_reorder_card_guide_line:I

    .line 398
    iget-object p6, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    invoke-virtual {p6}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->getContext()Landroid/content/Context;

    move-result-object p6

    invoke-virtual {p6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p6

    .line 396
    invoke-virtual {p2, p4, p6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 400
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p4, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p6, "!!.itemView"

    invoke-static {p4, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    new-instance p6, Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-direct {p6, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 402
    invoke-virtual {p4}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p4

    invoke-virtual {p6, v2, p4}, Landroid/graphics/Rect;->offset(II)V

    .line 403
    invoke-virtual {p2, p6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 404
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 409
    :cond_12
    iget-boolean p1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->needToCheckAppBar:Z

    if-eqz p1, :cond_13

    if-eqz p7, :cond_13

    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    invoke-virtual {p1}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->getAppBarLayout()Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->seslIsCollapsed()Z

    move-result p1

    if-nez p1, :cond_13

    .line 410
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 411
    iget-object p2, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    invoke-virtual {p2}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->getAppBarLayout()Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 412
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    invoke-virtual {p2}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->getAppBarLayout()Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p2

    sub-int/2addr p1, p2

    .line 413
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    float-to-int p3, p5

    add-int/2addr p2, p3

    if-le p2, p1, :cond_13

    const-string p1, "MainControlAdapter"

    const-string p2, "onChildDrawOver: Collapse AppBar"

    .line 415
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iput-boolean v1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->needToCheckAppBar:Z

    .line 417
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->getAppBarLayout()Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    :cond_13
    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "viewHolder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "target"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->onMoveItem(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 423
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    const/4 v0, 0x1

    .line 424
    iput-boolean v0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->needToCheckAppBar:Z

    .line 425
    sget-boolean v1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    if-eqz v1, :cond_5

    if-eqz p2, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 427
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->startDrag:Z

    .line 428
    sget-boolean p2, Lcom/android/systemui/BasicRune;->CONTROLS_AUI:Z

    if-eqz p2, :cond_5

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    .line 429
    invoke-static {p0}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->access$getAuiFacade$p(Lcom/android/systemui/controls/management/adapter/MainControlAdapter;)Lcom/android/systemui/controls/ui/util/AUIFacade;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/controls/ui/util/AUIFacade;->playLongPress(Landroid/view/View;)V

    goto :goto_0

    .line 432
    :cond_3
    iget-boolean p1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->startDrag:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    invoke-static {p1}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->access$getSaLogger$p(Lcom/android/systemui/controls/management/adapter/MainControlAdapter;)Lcom/android/systemui/controls/ui/util/SALogger;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/controls/ui/util/SALogger$Event$MoveCard;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Event$MoveCard;

    invoke-virtual {p1, p2}, Lcom/android/systemui/controls/ui/util/SALogger;->sendEvent(Lcom/android/systemui/controls/ui/util/SALogger$Event;)V

    :cond_4
    const/4 p1, 0x0

    .line 433
    iput-boolean p1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->startDrag:Z

    :cond_5
    :goto_0
    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo p0, "viewHolder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
