.class public final Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CustomControlAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$Companion;,
        Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$CustomMarginItemDecorator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/systemui/controls/management/adapter/CustomHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCustomControlAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomControlAdapter.kt\ncom/android/systemui/controls/management/adapter/CustomControlAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,599:1\n1#2:600\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private model:Lcom/android/systemui/controls/management/model/CustomControlsModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final spanManager:Lcom/android/systemui/controls/ui/util/SpanManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final spanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->Companion:Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/ControlsUtil;)V
    .locals 9
    .param p1    # Landroid/content/Context;
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

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutUtil"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsUtil"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->context:Landroid/content/Context;

    .line 57
    iput-object p3, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 71
    new-instance v0, Lcom/android/systemui/controls/ui/util/SpanManager;

    invoke-direct {v0, p2}, Lcom/android/systemui/controls/ui/util/SpanManager;-><init>(Lcom/android/systemui/controls/ui/util/LayoutUtil;)V

    .line 72
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/util/SpanManager;->getSpanInfos()Ljava/util/Map;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/controls/ui/util/SpanInfo;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-direct {v3, v1, v1, v4, v5}, Lcom/android/systemui/controls/ui/util/SpanInfo;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/util/SpanManager;->getSpanInfos()Ljava/util/Map;

    move-result-object p2

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/controls/ui/util/SpanInfo;

    .line 74
    sget-boolean v6, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE_FOLD:Z

    if-eqz v6, :cond_0

    invoke-virtual {p3, p1}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->isFoldDelta(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/systemui/R$dimen;->control_custom_base_item_size_fold:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/systemui/R$dimen;->control_custom_base_item_size:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    :goto_0
    const/4 v8, 0x2

    .line 73
    invoke-direct {v3, v7, v1, v8, v5}, Lcom/android/systemui/controls/ui/util/SpanInfo;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/util/SpanManager;->getSpanInfos()Ljava/util/Map;

    move-result-object p2

    const/16 v2, 0x65

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/controls/ui/util/SpanInfo;

    invoke-direct {v3, v1, v1, v4, v5}, Lcom/android/systemui/controls/ui/util/SpanInfo;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/util/SpanManager;->getSpanInfos()Ljava/util/Map;

    move-result-object p2

    const/16 v2, 0x66

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/controls/ui/util/SpanInfo;

    invoke-direct {v3, v1, v1, v4, v5}, Lcom/android/systemui/controls/ui/util/SpanInfo;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/util/SpanManager;->getSpanInfos()Ljava/util/Map;

    move-result-object p2

    const/16 v2, 0x67

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/controls/ui/util/SpanInfo;

    if-eqz v6, :cond_1

    .line 83
    invoke-virtual {p3, p1}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->isFoldDelta(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/android/systemui/R$dimen;->control_custom_base_item_size_fold:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_1

    .line 86
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/android/systemui/R$dimen;->control_custom_base_item_size:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 82
    :goto_1
    invoke-direct {v3, p1, v1, v8, v5}, Lcom/android/systemui/controls/ui/util/SpanInfo;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 71
    iput-object v0, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->spanManager:Lcom/android/systemui/controls/ui/util/SpanManager;

    .line 91
    new-instance p1, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$spanSizeLookup$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$spanSizeLookup$1;-><init>(Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->spanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    return-void
.end method

.method public static final synthetic access$attachedToRecyclerView(Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->attachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public static final synthetic access$getModel$p(Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;)Lcom/android/systemui/controls/management/model/CustomControlsModel;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->model:Lcom/android/systemui/controls/management/model/CustomControlsModel;

    return-object p0
.end method

.method public static final synthetic access$getSpanManager$p(Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;)Lcom/android/systemui/controls/ui/util/SpanManager;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->spanManager:Lcom/android/systemui/controls/ui/util/SpanManager;

    return-object p0
.end method

.method private final attachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->spanManager:Lcom/android/systemui/controls/ui/util/SpanManager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/ui/util/SpanManager;->updateSpanInfos(I)V

    .line 193
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->spanManager:Lcom/android/systemui/controls/ui/util/SpanManager;

    invoke-virtual {v2}, Lcom/android/systemui/controls/ui/util/SpanManager;->getMaxSpan()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 194
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 195
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 193
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 196
    new-instance p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$CustomMarginItemDecorator;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$CustomMarginItemDecorator;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method private static final onCreateViewHolder$inflate(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2

    .line 99
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 100
    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string p1, "from(parent.context).run {\n            inflate(resourceId, parent, false)\n        }"

    .line 99
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final changeModel(Lcom/android/systemui/controls/management/model/CustomControlsModel;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/management/model/CustomControlsModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->model:Lcom/android/systemui/controls/management/model/CustomControlsModel;

    .line 135
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->model:Lcom/android/systemui/controls/management/model/CustomControlsModel;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/controls/management/model/CustomControlsModel;->getElements()Ljava/util/List;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_1
    return p0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 157
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->model:Lcom/android/systemui/controls/management/model/CustomControlsModel;

    if-eqz p0, :cond_5

    .line 158
    invoke-interface {p0}, Lcom/android/systemui/controls/management/model/CustomControlsModel;->getElements()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/management/model/CustomElementWrapper;

    .line 159
    instance-of p1, p0, Lcom/android/systemui/controls/management/model/CustomZoneNameWrapper;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 160
    :cond_0
    instance-of p1, p0, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_LAYOUT_TYPE:Z

    if-eqz p1, :cond_3

    .line 161
    check-cast p0, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;->getControlStatus()Lcom/android/systemui/controls/ControlStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/controls/ControlStatus;->getLayoutType()I

    move-result p0

    if-ne p0, v0, :cond_3

    const/16 v0, 0x67

    goto :goto_0

    .line 168
    :cond_1
    instance-of p1, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;

    if-eqz p1, :cond_2

    const/16 v0, 0x65

    goto :goto_0

    .line 169
    :cond_2
    instance-of p0, p0, Lcom/android/systemui/controls/management/model/VerticalPaddingWrapper;

    if-eqz p0, :cond_4

    const/16 v0, 0x66

    :cond_3
    :goto_0
    return v0

    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 171
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Getting item type for null model"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 91
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->spanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    return-object p0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 176
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$onAttachedToRecyclerView$1;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$onAttachedToRecyclerView$1;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 185
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->attachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 54
    check-cast p1, Lcom/android/systemui/controls/management/adapter/CustomHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->onBindViewHolder(Lcom/android/systemui/controls/management/adapter/CustomHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .line 54
    check-cast p1, Lcom/android/systemui/controls/management/adapter/CustomHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->onBindViewHolder(Lcom/android/systemui/controls/management/adapter/CustomHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/systemui/controls/management/adapter/CustomHolder;I)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/management/adapter/CustomHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->model:Lcom/android/systemui/controls/management/model/CustomControlsModel;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/controls/management/model/CustomControlsModel;->getElements()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/management/model/CustomElementWrapper;

    invoke-virtual {p1, p0}, Lcom/android/systemui/controls/management/adapter/CustomHolder;->bindData(Lcom/android/systemui/controls/management/model/CustomElementWrapper;)V

    :goto_0
    return-void
.end method

.method public onBindViewHolder(Lcom/android/systemui/controls/management/adapter/CustomHolder;ILjava/util/List;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/management/adapter/CustomHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/management/adapter/CustomHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->model:Lcom/android/systemui/controls/management/model/CustomControlsModel;

    if-nez p0, :cond_1

    goto :goto_0

    .line 149
    :cond_1
    invoke-interface {p0}, Lcom/android/systemui/controls/management/model/CustomControlsModel;->getElements()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/management/model/CustomElementWrapper;

    .line 150
    instance-of p2, p0, Lcom/android/systemui/controls/ControlInterface;

    if-eqz p2, :cond_2

    check-cast p0, Lcom/android/systemui/controls/ControlInterface;

    invoke-interface {p0}, Lcom/android/systemui/controls/ControlInterface;->getFavorite()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/controls/management/adapter/CustomHolder;->updateFavorite(Z)V

    goto :goto_0

    .line 151
    :cond_2
    instance-of p2, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;

    if-eqz p2, :cond_3

    check-cast p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->getFavorite()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/controls/management/adapter/CustomHolder;->updateFavorite(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/controls/management/adapter/CustomHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/controls/management/adapter/CustomHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    .line 129
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "Wrong viewType: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 111
    :pswitch_0
    new-instance p2, Lcom/android/systemui/controls/management/adapter/SmallControlCustomHolder;

    .line 112
    sget v0, Lcom/android/systemui/R$layout;->controls_small_layout_item:I

    invoke-static {p1, v0}, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->onCreateViewHolder$inflate(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    .line 113
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 114
    new-instance v1, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$onCreateViewHolder$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$onCreateViewHolder$2;-><init>(Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;)V

    .line 111
    invoke-direct {p2, p1, v0, v1}, Lcom/android/systemui/controls/management/adapter/SmallControlCustomHolder;-><init>(Landroid/view/View;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lkotlin/jvm/functions/Function2;)V

    goto :goto_0

    .line 127
    :pswitch_1
    new-instance p2, Lcom/android/systemui/controls/management/adapter/PaddingCustomHolder;

    sget p0, Lcom/android/systemui/R$layout;->controls_empty_padding:I

    invoke-static {p1, p0}, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->onCreateViewHolder$inflate(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/android/systemui/controls/management/adapter/PaddingCustomHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 120
    :pswitch_2
    new-instance p2, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;

    .line 121
    sget v0, Lcom/android/systemui/R$layout;->controls_structure_category_header:I

    invoke-static {p1, v0}, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->onCreateViewHolder$inflate(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    .line 122
    new-instance v0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$onCreateViewHolder$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$onCreateViewHolder$3;-><init>(Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;)V

    .line 120
    invoke-direct {p2, p1, v0}, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function2;)V

    goto :goto_0

    .line 105
    :cond_0
    new-instance p2, Lcom/android/systemui/controls/management/adapter/ControlCustomHolder;

    .line 106
    sget v0, Lcom/android/systemui/R$layout;->controls_custom_base_item:I

    invoke-static {p1, v0}, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->onCreateViewHolder$inflate(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    .line 107
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 108
    new-instance v1, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$onCreateViewHolder$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$onCreateViewHolder$1;-><init>(Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;)V

    .line 105
    invoke-direct {p2, p1, v0, v1}, Lcom/android/systemui/controls/management/adapter/ControlCustomHolder;-><init>(Landroid/view/View;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lkotlin/jvm/functions/Function2;)V

    goto :goto_0

    .line 117
    :cond_1
    new-instance p2, Lcom/android/systemui/controls/management/adapter/ZoneCustomHolder;

    sget p0, Lcom/android/systemui/R$layout;->controls_custom_zone_header:I

    invoke-static {p1, p0}, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->onCreateViewHolder$inflate(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/android/systemui/controls/management/adapter/ZoneCustomHolder;-><init>(Landroid/view/View;)V

    :goto_0
    return-object p2

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
