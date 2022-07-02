.class public final Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CustomAppAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCustomAppAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomAppAdapter.kt\ncom/android/systemui/controls/management/adapter/CustomAppAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,197:1\n734#2:198\n825#2,2:199\n*E\n*S KotlinDebug\n*F\n+ 1 CustomAppAdapter.kt\ncom/android/systemui/controls/management/adapter/CustomAppAdapter\n*L\n87#1:198\n87#1,2:199\n*E\n"
.end annotation


# instance fields
.field private final badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final callback:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final favoritesRenderer:Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isOOBE:Z

.field private final layoutInflater:Landroid/view/LayoutInflater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private listOfServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ControlsServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final onAppSelected:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/content/ComponentName;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final saLogger:Lcom/android/systemui/controls/ui/util/SALogger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final switchCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroidx/lifecycle/Lifecycle;Lcom/android/systemui/controls/management/ControlsListingController;Landroid/view/LayoutInflater;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;Landroid/content/Context;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeProvider;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/lifecycle/Lifecycle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/controls/management/ControlsListingController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/android/systemui/controls/ui/util/ControlsUtil;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Lcom/android/systemui/controls/ui/util/SALogger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Lcom/android/systemui/controls/controller/util/BadgeProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/lifecycle/Lifecycle;",
            "Lcom/android/systemui/controls/management/ControlsListingController;",
            "Landroid/view/LayoutInflater;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/content/ComponentName;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/controls/ui/util/ControlsUtil;",
            "Lcom/android/systemui/controls/ui/util/SALogger;",
            "Lcom/android/systemui/controls/controller/util/BadgeProvider;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "backgroundExecutor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uiExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsListingController"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutInflater"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onAppSelected"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "favoritesRenderer"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsUtil"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "saLogger"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "badgeProvider"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "switchCallback"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 49
    iput-object p5, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 50
    iput-object p6, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->onAppSelected:Lkotlin/jvm/functions/Function1;

    .line 51
    iput-object p7, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->favoritesRenderer:Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;

    .line 52
    iput-object p8, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->context:Landroid/content/Context;

    .line 53
    iput-object p9, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 54
    iput-object p10, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 55
    iput-object p11, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    .line 56
    iput-object p12, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->switchCallback:Lkotlin/jvm/functions/Function1;

    .line 59
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p5

    iput-object p5, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->listOfServices:Ljava/util/List;

    .line 61
    new-instance p5, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1;

    invoke-direct {p5, p1, p0, p2}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1;-><init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;Ljava/util/concurrent/Executor;)V

    iput-object p5, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->callback:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1;

    .line 72
    invoke-interface {p4, p3, p5}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-virtual {p9, p8}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->isOOBEManageAppsCompleted(Landroid/content/Context;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->isOOBE:Z

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;)Landroid/content/Context;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getControlsUtil$p(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;)Lcom/android/systemui/controls/ui/util/ControlsUtil;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    return-object p0
.end method

.method public static final synthetic access$getListOfServices$p(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;)Ljava/util/List;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->listOfServices:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getOnAppSelected$p(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->onAppSelected:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getSaLogger$p(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;)Lcom/android/systemui/controls/ui/util/SALogger;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    return-object p0
.end method

.method public static final synthetic access$isOOBE$p(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->isOOBE:Z

    return p0
.end method

.method public static final synthetic access$setListOfServices$p(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;Ljava/util/List;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->listOfServices:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->listOfServices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getTotalFavoriteAndActiveAppCount()I
    .locals 7

    .line 87
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->listOfServices:Ljava/util/List;

    .line 734
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 825
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 88
    iget-object v4, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->favoritesRenderer:Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;

    iget-object v5, v3, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    const-string v6, "it.componentName"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;->getFavoriteCount(Landroid/content/ComponentName;)I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->favoritesRenderer:Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;

    invoke-virtual {v4}, Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;->getGetActiveFlag()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    .line 89
    iget-object v3, v3, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-interface {v4, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 44
    check-cast p1, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->onBindViewHolder(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;I)V
    .locals 2
    .param p1    # Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->listOfServices:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/ControlsServiceInfo;

    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->bindData(Lcom/android/systemui/controls/ControlsServiceInfo;)V

    .line 97
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$onBindViewHolder$1;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$onBindViewHolder$1;-><init>(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->listOfServices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p2, p2, 0x1

    if-gt p0, p2, :cond_0

    .line 109
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p1, Lcom/android/systemui/R$id;->list_divider:I

    invoke-virtual {p0, p1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    .line 110
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;
    .locals 8
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    new-instance p2, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;

    .line 78
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->controls_custom_app_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const-string p1, "layoutInflater.inflate(R.layout.controls_custom_app_item, parent, false)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v3, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->favoritesRenderer:Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;

    .line 80
    iget-object v4, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->switchCallback:Lkotlin/jvm/functions/Function1;

    .line 81
    iget-boolean v5, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->isOOBE:Z

    .line 82
    iget-object v6, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 83
    iget-object v7, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    move-object v0, p2

    move-object v1, p0

    .line 77
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;-><init>(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;Landroid/view/View;Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;Lkotlin/jvm/functions/Function1;ZLcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeProvider;)V

    return-object p2
.end method
