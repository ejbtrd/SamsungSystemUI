.class public final Lcom/android/systemui/controls/management/adapter/MainControlAdapter$ControlsItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "MainControlAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/management/adapter/MainControlAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ControlsItemDecoration"
.end annotation


# instance fields
.field private final basicInteractionSideMargin:I

.field private final controlSideMargin:I

.field private final controlTopDownMargin:I

.field private final listMargin:I

.field private final listMarginResize:I

.field private final subheaderSideMargin:I

.field final synthetic this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/controls/management/adapter/MainControlAdapter<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/adapter/MainControlAdapter;Landroid/content/Context;)V
    .locals 3
    .param p1    # Lcom/android/systemui/controls/management/adapter/MainControlAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$ControlsItemDecoration;->this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    .line 455
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 457
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->basic_interaction_side_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$ControlsItemDecoration;->basicInteractionSideMargin:I

    .line 459
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->controls_list_margin_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$ControlsItemDecoration;->listMargin:I

    .line 461
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->control_base_item_side_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$ControlsItemDecoration;->controlSideMargin:I

    sub-int/2addr v0, v1

    .line 462
    iput v0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$ControlsItemDecoration;->listMarginResize:I

    sub-int/2addr p1, v0

    .line 463
    iput p1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$ControlsItemDecoration;->subheaderSideMargin:I

    .line 465
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$ControlsItemDecoration;->controlTopDownMargin:I

    return-void
.end method

.method private final init(Landroid/graphics/Rect;)V
    .locals 0

    const/4 p0, 0x0

    .line 494
    iput p0, p1, Landroid/graphics/Rect;->top:I

    .line 495
    iput p0, p1, Landroid/graphics/Rect;->left:I

    .line 496
    iput p0, p1, Landroid/graphics/Rect;->right:I

    .line 497
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private final isControlType(Ljava/lang/Integer;)Z
    .locals 1

    const/4 p0, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    .line 502
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p0, :cond_3

    :goto_0
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_LAYOUT_TYPE:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x0

    :cond_3
    :goto_2
    return p0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "state"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 p4, -0x1

    if-ne p2, p4, :cond_0

    return-void

    .line 474
    :cond_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    const/4 v0, 0x0

    if-nez p4, :cond_1

    move-object p4, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 476
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$ControlsItemDecoration;->init(Landroid/graphics/Rect;)V

    .line 477
    invoke-direct {p0, p4}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$ControlsItemDecoration;->isControlType(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 479
    iget p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$ControlsItemDecoration;->controlTopDownMargin:I

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_2
    if-nez p4, :cond_3

    goto :goto_2

    .line 481
    :cond_3
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-nez p4, :cond_5

    .line 483
    iget p4, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$ControlsItemDecoration;->subheaderSideMargin:I

    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 484
    iput p4, p1, Landroid/graphics/Rect;->right:I

    if-lez p2, :cond_5

    .line 486
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    if-nez p3, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$ControlsItemDecoration;->isControlType(Ljava/lang/Integer;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 487
    iget p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$ControlsItemDecoration;->controlTopDownMargin:I

    neg-int p0, p0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    :cond_5
    :goto_2
    return-void
.end method
