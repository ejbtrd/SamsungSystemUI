.class public final Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CustomStructureAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/systemui/controls/management/adapter/CustomStructureHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCustomStructureAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomStructureAdapter.kt\ncom/android/systemui/controls/management/adapter/CustomStructureAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,253:1\n1#2:254\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private model:Lcom/android/systemui/controls/management/model/StructureModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;->Companion:Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/ui/util/AUIFacade;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/ui/util/LayoutUtil;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/controls/ui/util/ControlsUtil;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/controls/ui/util/AUIFacade;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "layoutUtil"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsUtil"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "auiFacade"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    .line 26
    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 27
    iput-object p3, p0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    return-void
.end method

.method public static final synthetic access$getAuiFacade$p(Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;)Lcom/android/systemui/controls/ui/util/AUIFacade;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    return-object p0
.end method

.method public static final synthetic access$getModel$p(Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;)Lcom/android/systemui/controls/management/model/StructureModel;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;->model:Lcom/android/systemui/controls/management/model/StructureModel;

    return-object p0
.end method


# virtual methods
.method public final changeModel(Lcom/android/systemui/controls/management/model/StructureModel;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/management/model/StructureModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "controlModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;->model:Lcom/android/systemui/controls/management/model/StructureModel;

    .line 103
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;->model:Lcom/android/systemui/controls/management/model/StructureModel;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/controls/management/model/StructureModel;->getElements()Ljava/util/List;

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
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;->model:Lcom/android/systemui/controls/management/model/StructureModel;

    if-eqz p0, :cond_5

    .line 113
    invoke-interface {p0}, Lcom/android/systemui/controls/management/model/StructureModel;->getElements()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/management/model/StructureElementWrapper;

    .line 114
    instance-of p1, p0, Lcom/android/systemui/controls/management/model/ControlWrapper;

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    instance-of p1, p0, Lcom/android/systemui/controls/management/model/ReorderWrapper;

    if-eqz p1, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    .line 116
    :cond_1
    instance-of p1, p0, Lcom/android/systemui/controls/management/model/PaddingWrapper;

    if-eqz p1, :cond_2

    const/4 p0, 0x3

    goto :goto_0

    .line 117
    :cond_2
    instance-of p1, p0, Lcom/android/systemui/controls/management/model/SubtitleWrapper;

    if-eqz p1, :cond_3

    const/4 p0, 0x4

    goto :goto_0

    .line 118
    :cond_3
    instance-of p0, p0, Lcom/android/systemui/controls/management/model/LoadingWrapper;

    if-eqz p0, :cond_4

    const/16 p0, 0x64

    :goto_0
    return p0

    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 120
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Getting item type for null model"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 125
    new-instance p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 24
    check-cast p1, Lcom/android/systemui/controls/management/adapter/CustomStructureHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;->onBindViewHolder(Lcom/android/systemui/controls/management/adapter/CustomStructureHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/systemui/controls/management/adapter/CustomStructureHolder;I)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/management/adapter/CustomStructureHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;->model:Lcom/android/systemui/controls/management/model/StructureModel;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/controls/management/model/StructureModel;->getElements()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/management/model/StructureElementWrapper;

    invoke-virtual {p1, p0}, Lcom/android/systemui/controls/management/adapter/CustomStructureHolder;->bindData(Lcom/android/systemui/controls/management/model/StructureElementWrapper;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/controls/management/adapter/CustomStructureHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/controls/management/adapter/CustomStructureHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v1, :cond_4

    const/4 v1, 0x2

    if-eq p2, v1, :cond_3

    const/4 p0, 0x3

    if-eq p2, p0, :cond_2

    const/4 p0, 0x4

    if-eq p2, p0, :cond_1

    const/16 p0, 0x64

    if-ne p2, p0, :cond_0

    .line 89
    new-instance p0, Lcom/android/systemui/controls/management/adapter/StructureControlLoadingHolder;

    .line 91
    sget p2, Lcom/android/systemui/R$layout;->controls_loading_view:I

    .line 90
    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "layoutInflater.inflate(\n                        R.layout.controls_loading_view,\n                        parent,\n                        false\n                    )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/management/adapter/StructureControlLoadingHolder;-><init>(Landroid/view/View;)V

    goto :goto_1

    .line 97
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "Wrong viewType: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 80
    :cond_1
    new-instance p0, Lcom/android/systemui/controls/management/adapter/StructureControlSubtitleHolder;

    .line 82
    sget p2, Lcom/android/systemui/R$layout;->controls_subtitle_view:I

    .line 81
    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "layoutInflater.inflate(\n                        R.layout.controls_subtitle_view,\n                        parent,\n                        false\n                    )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/management/adapter/StructureControlSubtitleHolder;-><init>(Landroid/view/View;)V

    goto :goto_1

    .line 71
    :cond_2
    new-instance p0, Lcom/android/systemui/controls/management/adapter/StructureControlPaddingHolder;

    .line 73
    sget p2, Lcom/android/systemui/R$layout;->controls_empty_padding:I

    .line 72
    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "layoutInflater.inflate(\n                        R.layout.controls_empty_padding,\n                        parent,\n                        false\n                    )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/management/adapter/StructureControlPaddingHolder;-><init>(Landroid/view/View;)V

    goto :goto_1

    .line 59
    :cond_3
    new-instance p2, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;

    .line 61
    sget v1, Lcom/android/systemui/R$layout;->controls_structure_category_reorder_header:I

    .line 60
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "layoutInflater.inflate(\n                        R.layout.controls_structure_category_reorder_header,\n                        parent,\n                        false\n                    )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter$onCreateViewHolder$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter$onCreateViewHolder$1;-><init>(Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;)V

    .line 59
    invoke-direct {p2, p1, v0}, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;-><init>(Landroid/view/View;Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 50
    :cond_4
    new-instance p2, Lcom/android/systemui/controls/management/adapter/StructureControlHolder;

    .line 52
    sget v1, Lcom/android/systemui/R$layout;->controls_structure_view:I

    .line 51
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "layoutInflater.inflate(\n                        R.layout.controls_structure_view,\n                        parent,\n                        false\n                    )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 50
    invoke-direct {p2, p1, v0, p0}, Lcom/android/systemui/controls/management/adapter/StructureControlHolder;-><init>(Landroid/view/View;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/ControlsUtil;)V

    :goto_0
    move-object p0, p2

    :goto_1
    return-object p0
.end method
