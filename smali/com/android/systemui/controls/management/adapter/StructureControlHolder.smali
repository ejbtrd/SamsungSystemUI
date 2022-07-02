.class final Lcom/android/systemui/controls/management/adapter/StructureControlHolder;
.super Lcom/android/systemui/controls/management/adapter/CustomStructureHolder;
.source "CustomStructureAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCustomStructureAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomStructureAdapter.kt\ncom/android/systemui/controls/management/adapter/StructureControlHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,253:1\n1#2:254\n*E\n"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private controlAdapter:Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;

.field private final controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final structureLayout:Landroid/widget/LinearLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/ControlsUtil;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/controls/ui/util/LayoutUtil;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/controls/ui/util/ControlsUtil;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutUtil"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsUtil"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controls/management/adapter/CustomStructureHolder;-><init>(Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 140
    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/StructureControlHolder;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    .line 141
    iput-object p3, p0, Lcom/android/systemui/controls/management/adapter/StructureControlHolder;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 143
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/android/systemui/R$id;->structure_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.requireViewById(R.id.structure_layout)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/StructureControlHolder;->structureLayout:Landroid/widget/LinearLayout;

    .line 144
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/android/systemui/R$id;->structure_recyclerview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.requireViewById(R.id.structure_recyclerview)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/StructureControlHolder;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 146
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "itemView.context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/StructureControlHolder;->context:Landroid/content/Context;

    .line 149
    invoke-direct {p0}, Lcom/android/systemui/controls/management/adapter/StructureControlHolder;->setUpControlAdapter()V

    .line 150
    invoke-direct {p0}, Lcom/android/systemui/controls/management/adapter/StructureControlHolder;->setUpRecyclerView()V

    return-void
.end method

.method private final setUpControlAdapter()V
    .locals 4

    .line 154
    new-instance v0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;

    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/StructureControlHolder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/controls/management/adapter/StructureControlHolder;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    iget-object v3, p0, Lcom/android/systemui/controls/management/adapter/StructureControlHolder;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;-><init>(Landroid/content/Context;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/ControlsUtil;)V

    iput-object v0, p0, Lcom/android/systemui/controls/management/adapter/StructureControlHolder;->controlAdapter:Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;

    return-void
.end method

.method private final setUpRecyclerView()V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/StructureControlHolder;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 167
    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/StructureControlHolder;->controlAdapter:Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 168
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 169
    invoke-static {p0, v0}, Lcom/android/systemui/controls/management/adapter/StructureControlHolder;->setUpRecyclerView$setRecyclerViewSideMargin(Lcom/android/systemui/controls/management/adapter/StructureControlHolder;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void

    :cond_0
    const-string p0, "controlAdapter"

    .line 167
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private static final setUpRecyclerView$setRecyclerViewSideMargin(Lcom/android/systemui/controls/management/adapter/StructureControlHolder;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .line 159
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 160
    sget v1, Lcom/android/systemui/R$dimen;->controls_list_margin_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 161
    sget v2, Lcom/android/systemui/R$dimen;->control_base_item_side_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr v1, v0

    .line 162
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StructureControlHolder;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    invoke-virtual {p0, p1, v1, v1}, Lcom/android/systemui/controls/ui/util/LayoutUtil;->setSideMargins(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/android/systemui/controls/management/model/StructureElementWrapper;)V
    .locals 4
    .param p1    # Lcom/android/systemui/controls/management/model/StructureElementWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "wrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    check-cast p1, Lcom/android/systemui/controls/management/model/StructureInterface;

    .line 175
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/StructureControlHolder;->structureLayout:Landroid/widget/LinearLayout;

    invoke-interface {p1}, Lcom/android/systemui/controls/management/model/StructureInterface;->getNeedChunk()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/StructureControlHolder;->context:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$drawable;->control_structure_background:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 175
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 180
    invoke-interface {p1}, Lcom/android/systemui/controls/management/model/StructureInterface;->getControlsModel()Lcom/android/systemui/controls/management/model/AllControlsModel;

    move-result-object p1

    .line 181
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/StructureControlHolder;->controlAdapter:Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;

    const-string v1, "controlAdapter"

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->changeModel(Lcom/android/systemui/controls/management/model/CustomControlsModel;)V

    .line 182
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StructureControlHolder;->controlAdapter:Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;

    if-eqz p0, :cond_1

    invoke-virtual {p1, p0}, Lcom/android/systemui/controls/management/model/AllControlsModel;->attachAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 181
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method
