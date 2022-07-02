.class final Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$CustomMarginItemDecorator;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "CustomControlAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CustomMarginItemDecorator"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCustomControlAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomControlAdapter.kt\ncom/android/systemui/controls/management/adapter/CustomControlAdapter$CustomMarginItemDecorator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,599:1\n1#2:600\n*E\n"
.end annotation


# instance fields
.field private final itemBottomMargin:I

.field private final itemSideMargin:I

.field private final listMargin:I

.field private final listMarginResize:I

.field private final structureCheckBoxSideMargin:I

.field private final structureStartMarginResize:I

.field private final zoneSideMargin:I

.field private final zoneSideMarginResize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->controls_list_margin_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$CustomMarginItemDecorator;->listMargin:I

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->control_base_item_side_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$CustomMarginItemDecorator;->itemSideMargin:I

    sub-int/2addr v0, v1

    .line 205
    iput v0, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$CustomMarginItemDecorator;->listMarginResize:I

    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$dimen;->basic_interaction_side_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$CustomMarginItemDecorator;->zoneSideMargin:I

    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->basic_interaction_checkbox_side_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$CustomMarginItemDecorator;->structureCheckBoxSideMargin:I

    sub-int/2addr v1, v0

    .line 210
    iput v1, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$CustomMarginItemDecorator;->zoneSideMarginResize:I

    sub-int/2addr v3, v0

    .line 211
    iput v3, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$CustomMarginItemDecorator;->structureStartMarginResize:I

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$CustomMarginItemDecorator;->itemBottomMargin:I

    return-void
.end method

.method private static final getItemOffsets$isControlType(Ljava/lang/Integer;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_3

    :goto_0
    sget-boolean v1, Lcom/android/systemui/BasicRune;->CONTROLS_LAYOUT_TYPE:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x67

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x0

    :cond_3
    :goto_2
    return v0
.end method

.method private final init(Landroid/graphics/Rect;)V
    .locals 0

    const/4 p0, 0x0

    .line 254
    iput p0, p1, Landroid/graphics/Rect;->top:I

    .line 255
    iput p0, p1, Landroid/graphics/Rect;->left:I

    .line 256
    iput p0, p1, Landroid/graphics/Rect;->right:I

    .line 257
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3
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

    .line 224
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 p4, -0x1

    if-ne p2, p4, :cond_0

    return-void

    .line 227
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

    .line 229
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$CustomMarginItemDecorator;->init(Landroid/graphics/Rect;)V

    .line 231
    invoke-static {p4}, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$CustomMarginItemDecorator;->getItemOffsets$isControlType(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 232
    iget p0, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$CustomMarginItemDecorator;->itemBottomMargin:I

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    :cond_2
    const/16 v1, 0x65

    if-nez p4, :cond_3

    goto :goto_1

    .line 234
    :cond_3
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 236
    iget p4, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$CustomMarginItemDecorator;->structureStartMarginResize:I

    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 237
    iget p4, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$CustomMarginItemDecorator;->zoneSideMarginResize:I

    iput p4, p1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_4
    :goto_1
    if-nez p4, :cond_5

    goto :goto_2

    .line 239
    :cond_5
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-nez p4, :cond_6

    .line 241
    iget p4, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$CustomMarginItemDecorator;->zoneSideMarginResize:I

    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 242
    iput p4, p1, Landroid/graphics/Rect;->right:I

    :cond_6
    :goto_2
    if-lez p2, :cond_8

    .line 246
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    if-nez p3, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$CustomMarginItemDecorator;->getItemOffsets$isControlType(Ljava/lang/Integer;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 247
    iget p0, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$CustomMarginItemDecorator;->itemBottomMargin:I

    neg-int p0, p0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    :cond_8
    :goto_4
    return-void
.end method
